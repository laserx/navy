defmodule Depot.Repo.Migrations.CreateUserBuy do
  use Ecto.Migration

  def change do
    create table :user_buy do
      add :bid, :integer
      add :b_project_id, :integer
      add :b_uid, :integer
      add :b_tid, :integer
      add :b_pay_status, :integer
      add :b_pay_type, :integer
      add :b_book_id, :integer
      add :b_price, :decimal, scale: 2, precision: 10
      add :b_ctime, :naive_datetime
    end
  end
end
