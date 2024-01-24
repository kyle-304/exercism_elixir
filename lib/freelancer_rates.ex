defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * ((100 - discount) / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_rate = daily_rate(hourly_rate) * 22

    (monthly_rate * ((100 - discount) / 100))
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    proposed_rate = apply_discount(daily_rate(hourly_rate), discount)

    (budget / proposed_rate)
    |> Float.floor(1)
  end
end
