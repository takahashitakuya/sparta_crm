class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name,null: false
      t.string :url
      t.string :address

      t.timestamps
    end
  end
end
