require 'java'

RSpec.configure do |c|
  c.mock_with :rspec do |mock|
    mock.syntax = [:expect]
  end
  # Readable test descriptions
  c.formatter = :documentation
  c.order     = :rand
  c.tty       = true
  c.color     = true
end
