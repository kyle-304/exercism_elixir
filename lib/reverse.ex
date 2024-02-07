defmodule Reverse do
  def list_reversal(list) do
    list_reversal(list, [])
  end

  defp list_reversal([], new_list) do
    new_list
  end

  defp list_reversal([head | tail], new_list) do
    list_reversal(tail, [head | new_list])
  end
end

# Square3.list_reversal([1, 2, 3, 4, 5])
