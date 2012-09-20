class AdjustingColumnEmailToDevise < ActiveRecord::Migration

  def change
    change_column :reporters, :email, :string, :default => "", :null => false
  end

end
