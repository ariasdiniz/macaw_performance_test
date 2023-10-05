# frozen_string_literal: true

require 'macaw_framework'

m = MacawFramework::Macaw.new(custom_log: nil)

m.get("/") do |_context|
  return "Hello!", 200
end

m.start!
