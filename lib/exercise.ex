defmodule Exercise do
  @doc """
  Simply returns "Hello, World!"
  """
  @spec hello :: String.t()
  def hello do
    "Hello, World!"
  end
end

Exercise.hello()
