defmodule Tutorials.Recursion.Factorial do
  def fact(1) do
    1
  end

  def fact(num) do
    num * fact(num-1)
  end
end
