class AddSectionIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :section_id, :reference
  end
end
