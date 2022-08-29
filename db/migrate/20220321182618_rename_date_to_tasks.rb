class RenameDateToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :date, :start_date
  end
end
