class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.integer :user_id
      t.string :name
      t.string :capital
      t.string :language
      t.string :currency
      t.integer :area
      t.string :flag_url

      t.timestamps
    end
  end
end
