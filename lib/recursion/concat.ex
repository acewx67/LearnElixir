defmodule Tutorials.Recursion.Concat do
  # def concat(list1,list2)
  # def concat([h|[]],list2), do: [h | list2]
  # def concat([h | t], list2) do
  #   [h|concat(t,list2)]
  #
  def concat([],list2), do: list2
  def concat([h | t],list2) do
    concat(t,[h|list2])
  end
  # Enum.reverse([1,2,3]) |> Tutorials.Recursion.Concat.concat([4,5,6])
end
