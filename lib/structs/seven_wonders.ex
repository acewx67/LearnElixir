defmodule Tutorials.Structs.SevenWonders do
  defstruct name: "", country: ""
  alias Tutorials.Structs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }
  @spec all :: [t()]
  def all() do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
      %SevenWonders{name: "Abc", country: "India"},
      %SevenWonders{name: "Random", country: "RandomCountry"},
      %SevenWonders{name: "Random", country: "RandomCountry"},
      %SevenWonders{name: "Random", country: "RandomCountry"},
      %SevenWonders{name: "Random", country: "RandomCountry"},
      %SevenWonders{name: "Random", country: "RandomCountry"}
    ]
  end

  def print_names(wonders) do
    Enum.each(wonders, fn %{name: name} -> IO.puts(name) end)
  end
  @spec filter_by_country([t()],String.t()) :: [t()]
  def filter_by_country(wonders,country) do
    # Enum.filter(wonders,fn wonder -> wonder.country == country end)
    Enum.filter(wonders,fn %{country: country_name} -> country_name == country end)
  end

  def countries_starting_with_i(wonders) do
    Enum.filter(wonders,fn %{country: country} -> String.starts_with?(country,"I")
    end)
  end
end
