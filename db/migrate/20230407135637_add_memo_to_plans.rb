class AddMemoToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :memo, :text
  end
end
