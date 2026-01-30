defmodule Tutorials.Recursion.RL do
  def rev_l(list,acc \\ [])
  def rev_l([],acc) do
    acc
  end
  def rev_l([h | t],acc) do
    rev_l(t,[h|acc])
  end
end
