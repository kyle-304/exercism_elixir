defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
    {_object, numeric} = volume_pair
    numeric
  end

  def to_milliliter(volume_pair) do
    # Please implement the to_milliliter/1 functions

    {object, numeric} = volume_pair

    case {object, numeric} do
      {:cup, _} -> {:milliliter, numeric * 240}
      {:fluid_ounce, _} -> {:milliliter, numeric * 30}
      {:teaspoon, _} -> {:milliliter, numeric * 5}
      {:tablespoon, _} -> {:milliliter, numeric * 15}
      {:milliliter, _} -> {object, numeric * 1}
    end
  end

  def from_milliliter(volume_pair, unit) do
    {object, numeric} = volume_pair

    case {{object, numeric}, unit} do
      {{:milliliter, _}, :milliliter} -> {:milliliter, numeric * 1}
      {{:milliliter, _}, :cup} -> {:cup, numeric / 240}
      {{:milliliter, _}, :fluid_ounce} -> {:fluid_ounce, numeric / 30}
      {{:milliliter, _}, :teaspoon} -> {:teaspoon, numeric / 5}
      {{:milliliter, _}, :tablespoon} -> {:tablespoon, numeric / 15}
    end
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
