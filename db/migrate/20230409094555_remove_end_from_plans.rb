class RemoveEndFromPlans < ActiveRecord::Migration[7.0]
  def change
    remove_column :plans, :end, :integer
  end
end
