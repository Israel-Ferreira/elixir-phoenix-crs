defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "Deve retornar Fizz" do
    assert FizzBuzz.fizz_buzz(54) == "Fizz"
  end


  test "Deve retornar Buzz" do
    assert FizzBuzz.fizz_buzz(80) == "Buzz"
  end

  test "Deve retornar o número, caso não seja divisivel por 3 & 5" do
    num = 7
    assert FizzBuzz.fizz_buzz(num) == num
  end
end
