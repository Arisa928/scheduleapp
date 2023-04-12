class RemoveAlldayFromPlans < ActiveRecord::Migration[7.0]
  def change
    remove_column :plans, :status, :boolean
  end
end
