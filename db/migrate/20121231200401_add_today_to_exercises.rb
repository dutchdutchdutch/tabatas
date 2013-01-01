class AddTodayToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :today, :boolean
  end
end
