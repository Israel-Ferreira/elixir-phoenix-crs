defmodule FizzBuzz do
  def build(filename) do
    filename
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> split_file_content()
    |> Enum.map(fn x -> fizz_buzz(x) end)
  end

  def handle_file_read({:error, reason}), do: reason

  def fizz_buzz(num) when rem(num, 3) == 0 and rem(num, 5) == 0, do: "FizzBuzz"

  def fizz_buzz(num) when rem(num, 5) == 0, do: "Buzz"

  def fizz_buzz(num) when rem(num, 3) == 0, do: "Fizz"

  def fizz_buzz(num), do: num

  def split_file_content(result) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end
end
