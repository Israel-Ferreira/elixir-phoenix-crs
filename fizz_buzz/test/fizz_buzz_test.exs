defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "Deve retornar Fizz" do
    assert FizzBuzz.fizz_buzz(54) == :fizz
  end

  test "Deve retornar Buzz" do
    assert FizzBuzz.fizz_buzz(80) == :buzz
  end

  test "Deve retornar FizzBuzz" do
    assert FizzBuzz.fizz_buzz(75) == :fizzbuzz
  end

  test "Deve retornar o número, caso não seja divisivel por 3 & 5" do
    num = 7
    assert FizzBuzz.fizz_buzz(num) == num
  end

  describe "build/1" do
    test "Quando uma lista valida for provida, deve retornar um ok e uma lista" do
      expected =
        {:ok,
         [1, 2, :fizz, 4, :buzz, 8, :buzz, :fizzbuzz, :buzz, :fizzbuzz, :buzz, 44, :fizzbuzz]}

      assert FizzBuzz.build("numbers.txt") == expected
    end

    test "Quando uma lista inexistente for provida, deve retornar um erro e a mensagem" do
    end
  end
end
