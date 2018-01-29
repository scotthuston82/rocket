require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    rocket = Rocket.new
  end

  def test_initialize_name

    rocket = Rocket.new({:name => "Scott", :colour => "blue",:flying => false})
    expected = "Scott"
    actual = rocket.name

    assert_equal(expected, actual)
  end

  def test_initialize_colour
    rocket = Rocket.new({:name => "Scott", :colour => "blue",:flying => false})
    expected = "blue"
    actual = rocket.colour

    assert_equal(expected, actual)
  end

  def test_initialize_flying
    rocket = Rocket.new({:name => "Scott", :colour => "blue",:flying => false})
    expected = false
    actual = rocket.flying?

    assert_equal(expected, actual)
  end

  def test_name_sets_the_name
    rocket = Rocket.new

    expected = "Scott"
    actual = rocket.name=("Scott")

    assert_equal(expected, actual)
  end

  def test_colour_sets_a_new_colour
    rocket = Rocket.new

    expected = "blue"
    actual = rocket.colour=("blue")

    assert_equal(expected, actual)
  end

  def test_lift_off_when_already_flying
    rocket = Rocket.new({:flying => true})

    expected = false
    actual = rocket.lift_off

    assert_equal(expected, actual)
  end

  def test_lift_off_when_flying_is_false
    rocket = Rocket.new

    expected = true
    actual = rocket.lift_off

    assert_equal(expected, actual)
  end

  def test_land_a_rocket_that_is_flying
    rocket = Rocket.new({:flying => true})
    rocket.land

    expected = false
    actual = rocket.flying?

    assert_equal(expected, actual)
  end

  def test_land_a_rocket_that_is_not_flying
    rocket = Rocket.new({:flying => false})
    rocket.land

    expected = false
    actual = rocket.land

    assert_equal(expected, actual)
  end

end
