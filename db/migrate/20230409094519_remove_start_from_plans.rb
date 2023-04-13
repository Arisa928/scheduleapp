class RemoveStartFromPlans < ActiveRecord::Migration[7.0]
  def change
    remove_column :plans, :start, :integer
  end
end
