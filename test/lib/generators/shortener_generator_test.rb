require "test_helper"
require "generators/shortener/shortener_generator"

class ShortenerGeneratorTest < Rails::Generators::TestCase
  tests ShortenerGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
