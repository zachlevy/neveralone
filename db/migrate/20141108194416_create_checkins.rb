class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.references :location, index: true
      t.references :feel, index: true

      t.timestamps
    end
  end
end
