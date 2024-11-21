class AddInternetSpeedsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :internet_speeds, id: :uuid do |t|
      t.string :download_speed, null: false, scale: 2, precision: 15 # ex 25.55 Mbps
      t.string :download_units, null: false

      t.timestamps
      t.references :place, null: false, foreign_key: true, type: :uuid, index: true
    end
  end
end
