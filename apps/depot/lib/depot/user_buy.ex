defmodule Depot.UserBuy do
  use Ecto.Schema

  schema "user_buy" do
    field(:bid, :integer)
    field(:b_uid, :integer)
  end
end
