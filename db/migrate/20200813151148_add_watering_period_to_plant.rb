class AddWateringPeriodToPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :watering_period, :integer
  end
end
