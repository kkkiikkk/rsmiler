module RSmiler
  module Helpers
    UNAVALIBLE_COMMANDS = %w[UnrecognizedCommandError Command].freeze

    def self.find_last_word_containing_substring(input_str, substring)
      words = input_str.split("::")

      words.reverse.find { |word| word.include?(substring) }
    end

    def self.classes_in_module(mod)
      mod.constants.map do |const|
        const_class = mod.const_get(const)
        const_class if const_class.is_a?(Class) && const_class.name.start_with?(mod.name)
      end.compact
    end
  end
end
