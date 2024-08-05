# frozen_string_literal: true

require "spec_helper"

RSpec.describe "RSmiler test with Rails Commands" do
  before do
    File.write("spec/dummy/rsmiler.txt", "Dummy text from rsmiler.txt")
  end

  after do
    File.delete("spec/dummy/rsmiler.txt") if File.exist?("spec/dummy/rsmiler.txt")
  end

  def run_command_and_get_output(command, working_dir = "spec/dummy")
    Dir.chdir(working_dir) do
      output = `#{command} 2>&1`
      raise "Command failed with error code #{$?.exitstatus}" unless $?.success?

      output
    end
  end

  it "displays the contents of rsmiler.txt when rails g command executed" do
    output = run_command_and_get_output("bundle exec rails g model User name:string")
    expect(output).to include("Dummy text from rsmiler.txt")
  end

  it "display the content of rsmiler.txt when rails about command executed" do
    output = run_command_and_get_output("bundle exec rails about")
    expect(output).to include("Dummy text from rsmiler.txt")
  end

  it "display the content of rsmiler.txt when rails routes command executed" do
    output = run_command_and_get_output("bundle exec rails routes")
    expect(output).to include("Dummy text from rsmiler.txt")
  end
end
