defmodule SpreeApi.Main do

  def index([], _conn) do
    {:render, [], []}
  end

end
