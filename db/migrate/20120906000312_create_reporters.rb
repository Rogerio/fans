class CreateReporters < ActiveRecord::Migration
  def change
    create_table :reporters do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
