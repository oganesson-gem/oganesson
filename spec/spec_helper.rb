# frozen_string_literal: true

require "oganesson"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end


  RSpec::Matchers.define :be_the_same_monster_as do |expected_monster|
    match do |actual_monster|
      actual_monster.name == expected_monster.name &&
        actual_monster.skin_color == expected_monster.skin_color &&
        actual_monster.size == expected_monster.size &&
        actual_monster.health == expected_monster.health
    end
    failure_message do |actual_monster|
      "expected that #{actual_monster} would have all the attributes the same as #{expected_monster}. Attributes:\n
      ACTUAL | EXPECTED\n
      #{actual_monster.name} | #{expected_monster.name}\n
      #{actual_monster.skin_color} | #{expected_monster.skin_color}\n
      #{actual_monster.size} | #{expected_monster.size}\n
      #{actual_monster.health} | #{expected_monster.health}\n"
    end
  end

  RSpec::Matchers.define :http_status_code do |expected_monster|
    match do |actual_monster|
      actual_monster.name == expected_monster.name &&
        actual_monster.skin_color == expected_monster.skin_color &&
        actual_monster.size == expected_monster.size &&
        actual_monster.health == expected_monster.health
    end
    failure_message do |actual_monster|
      "expected that #{actual_monster} would have all the attributes the same as #{expected_monster}. Attributes:\n
      ACTUAL | EXPECTED\n
      #{actual_monster.name} | #{expected_monster.name}\n
      #{actual_monster.skin_color} | #{expected_monster.skin_color}\n
      #{actual_monster.size} | #{expected_monster.size}\n
      #{actual_monster.health} | #{expected_monster.health}\n"
    end
  end

end
