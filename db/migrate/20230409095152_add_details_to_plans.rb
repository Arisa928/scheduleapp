class AddDetailsToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :start_at, :datetime
    add_column :plans, :end_at, :datetime
  end
end
