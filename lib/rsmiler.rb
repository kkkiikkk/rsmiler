require_relative "./rsmiler/config"
require_relative "./rsmiler/helpers"

module RSmiler
  module Logger
    def self.start
      RSmiler.config.text = File.read("rsmiler.txt") if File.exist?("rsmiler.txt")
      return unless defined?(Rails::Command)

      RSmiler::Helpers.classes_in_module(Rails::Command).each do |subclass|
        command = RSmiler::Helpers.find_last_word_containing_substring(subclass.name, "Command")

        if (command.eql? RSmiler::Helpers::UNAVALIBLE_COMMANDS[0]) || (command.eql? RSmiler::Helpers::UNAVALIBLE_COMMANDS[1])
          next
        end

        if !subclass.name.include?("ServerCommand") && !subclass.name.include?("ConsoleCommand")
          subclass.class_eval do
            at_exit do
              puts RSmiler.config.text
            end
          end
          next
        elsif subclass.name.include?("ServerCommand")
          Rails::Command::ServerCommand.class_eval do
            alias_method :print_boot_information_origin, :print_boot_information

            define_method(:print_boot_information) do |sever, url|
              print_boot_information_origin(sever, url)
              puts RSmiler.config.text

            end
          end
        elsif subclass.name.include?("ConsoleCommand")
          Rails::Console.class_eval do
            puts RSmiler.config.text
          end
        end
      end
    end
  end
end

RSmiler::Logger.start
