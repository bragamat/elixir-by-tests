defmodule DataTypesTest do
  use ExUnit.Case
  alias Lessons.DataTypes

  doctest DataTypes

  @moduledoc """
  Lesson 1: Basic Data Types
  - Implement the functions in `data_types.ex`.
  - Run `mix test lessons/01_data_types/data_types_test.exs` to check your work.
  """

  @tag exercise: :lesson_1_integer
  test "returns an integer" do
    assert DataTypes.get_integer() === 42
  end

  @tag exercise: :lesson_1_float
  test "returns a float" do
    assert DataTypes.get_float() === 3.14
  end

  @tag exercise: :lesson_1_boolean
  test "returns a boolean" do
    assert DataTypes.get_boolean() === true
  end

  @tag exercise: :lesson_1_atom
  test "returns an atom" do
    assert DataTypes.get_atom() === :elixir
  end

  @tag exercise: :lesson_1_string
  test "returns a string" do
    assert DataTypes.get_string() === "Hello, Elixir!"
  end

  @tag exercise: :lesson_1_list
  test "returns a list" do
    assert DataTypes.get_list() === [1, 2, 3]
  end

  @tag exercise: :lesson_1_tuple
  test "returns a tuple" do
    assert DataTypes.get_tuple() === {:ok, 123}
  end

  @tag exercise: :lesson_1_map
  test "returns a map" do
    assert DataTypes.get_map() === %{name: "Alice", age: 30}
  end
end
