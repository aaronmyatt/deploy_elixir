defmodule DeployElixirTest do
  use ExUnit.Case
  doctest DeployElixir

  test "greets the world" do
    assert DeployElixir.hello() == :world
  end
end
