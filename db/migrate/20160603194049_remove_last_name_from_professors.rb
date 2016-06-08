class RemoveLastNameFromProfessors < ActiveRecord::Migration
  def change
    remove_column :professors, :last_name
  end
end
