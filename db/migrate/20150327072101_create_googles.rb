class CreateGoogles < ActiveRecord::Migration
  def change
    create_table :googles do |t|
      t.string :latlng
      t.text :content

      t.timestamps null: false
    end
  end
end
