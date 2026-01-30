defmodule Tutorials.Recursion.ListAdd do
  # def list_add([]), do: 0
  # def list_add(list) do
  #   [h | t] = list
  #   h + list_add(t)
  # end
  # def list_add([]), do: 0
  # def list_add([h | t]), do: h + list_add(t)

  def list_add(list \\ [],acc \\ 0)
  def list_add([],acc), do: acc
  def list_add([h | t], acc) do
    list_add(t,h+acc)
  end
end
