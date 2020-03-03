class RemovePersonnalityFromBunnies < ActiveRecord::Migration[5.2]
  def change
    remove_column :bunnies, :personnality
  end
end
