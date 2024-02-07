# empty list should return zero instead of 1

defmodule Product do
  def prod(list) when list < 1, do: 0

  def prod(list) do
    prod(list, 1)
  end

  defp prod([], value), do: value

  defp prod([head | tail], value) do
    new_value = head * value

    prod(tail, new_value)
  end
end

Product.prod([1, 2, 3, 4]) == 24
Product.prod([0]) == 0


