defmodule Tutorials.Recursion.FlatMap do
  def flat_map(enum,func,acc \\ [])
  def flat_map([],_,acc), do: acc
  def flat_map([h | t], func, acc), do: flat_map(t, func, Enum.concat(acc,func.(h)))
end
