require 'thor'
require 'thor/group'
require 'opendcs'

module DCS
  class Top < Thor::Group

    desc "tests subcommands"
    def test
      puts "test top"
    end

    DCS::Runner.register DCS::Top, :test, "test", "print test"
  end
end
