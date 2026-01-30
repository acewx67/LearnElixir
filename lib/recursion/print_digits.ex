defmodule Tutorials.Recursion.PrintDigits do
  def upto(0) do
    IO.puts("Reached 0")
    0
  end

  def upto(nums) do
    IO.puts(nums)
    upto(nums-1)
  end

end
