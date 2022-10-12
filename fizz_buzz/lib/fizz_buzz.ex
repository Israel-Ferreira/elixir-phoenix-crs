defmodule FizzBuzz do
  def build(filename) do
    filename
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> split_file_content()
  end


  def handle_file_read({:error, reason}), do: "Error on Reading File: #{reason}"

  def convert_and_evaluate(str_number) do
    str_number
    |> String.to_integer()
    |> fizz_buzz()
  end


  def fizz_buzz(num) when rem(num, 3) == 0 and rem(num, 5) == 0, do: :fizzbuzz

  def fizz_buzz(num) when rem(num, 5) == 0, do: :buzz

  def fizz_buzz(num) when rem(num, 3) == 0, do: :fizz

  def fizz_buzz(num), do: num

  def split_file_content(result) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate/1)
  end
end
