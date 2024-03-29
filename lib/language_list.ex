defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_head | tail] = list

    tail
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    # first letter in elixir "e" is capital "E"
    "Elixir" in list
  end
end
