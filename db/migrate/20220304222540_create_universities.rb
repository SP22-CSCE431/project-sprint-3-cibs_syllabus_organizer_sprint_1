class CreateUniversities < ActiveRecord::Migration[6.1]
  def change
    create_table :universities do |t|
      t.string :city_country
      t.string

      t.timestamps
    end
  end
end