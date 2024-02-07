defmodule Square do
  def sqr([]), do: []

  def sqr([head | tail]) do
    [head * head | sqr(tail)]
  end
end

Square.sqr([1, 2, 3, 4, 5, 6])

defmodule Square1 do
  def square(list) do
    square(list, [])
  end

  defp square([], squared_list) do
    Reverse.list_reversal(squared_list)
  end

  defp square([head | tail], squared_list) do
    square = head * head

    square(tail, [square | squared_list])
  end
end

Square1.square([1, 2, 3, 4, 5])
