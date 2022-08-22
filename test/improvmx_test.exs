defmodule ImprovMXTest do
  use ExUnit.Case
  doctest ImprovMX

  def call do
    ImprovMX.Domains.list()
  end
end
