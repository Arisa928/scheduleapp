class AddAlldayToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :allday, :boolean
  end
end
