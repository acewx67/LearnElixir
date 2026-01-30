defmodule Tutorials.Recursion.ReverseNum do
  def reverse_num(num,ans \\ 0)
  def reverse_num(0,ans) do
    ans
  end
  def reverse_num(num,ans) do
    last_digit = rem(num,10)
    ans = (ans * 10) + last_digit
    reverse_num(div(num,10),ans)
  end
end
