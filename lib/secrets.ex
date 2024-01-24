defmodule Secrets do
  def secret_add(x) do
    &(&1 + x)
  end

  def secret_subtract(x) do
    fn sub -> sub - x end
  end

  def secret_multiply(x) do
    fn mult -> mult * x end
  end

  def secret_divide(x) do
    &trunc(&1 / x)
  end

  def secret_and(x) do
    &Bitwise.band(&1, x)
  end

  def secret_xor(x) do
    fn y -> Bitwise.bxor(x, y) end
  end

  def secret_combine(value1, value2) do
    fn x ->
      x
      |> value1.()
      |> value2.()
    end
  end
end
