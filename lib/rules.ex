defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    power_pellet_active? and touching_ghost?
  end

  def score?(power_pellet?, touching_dot?) do
    power_pellet? or touching_dot?
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    not power_pellet_active? and touching_ghost?
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    has_eaten_all_dots? and not lose?(power_pellet_active?, touching_ghost?)
  end
end

"""
def lose?(power_pellet_active?, touching_ghost?) do
  case {power_pellet_active?, touching_ghost?} do
    {false, true} -> true
    {true, true} -> true
    {true, false} -> false
  end
end

def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
  case {has_eaten_all_dots?, power_pellet_active?, touching_ghost?} do
    {true, false, false} -> true
    {true, false, true} -> false
    {true, true, true} -> true
  end
end
"""
