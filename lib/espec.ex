defmodule Bamboo.ESpec do
  defmacro __using__(_) do
    quote do
      import Bamboo.ESpec.Assertions
    end
  end
end

