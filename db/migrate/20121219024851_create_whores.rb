class CreateWhores < ActiveRecord::Migration
  def change
    create_table :whores do |t|
      t.string :location

      t.timestamps
    end
  end
end
