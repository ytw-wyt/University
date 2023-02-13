class CreateFaculties < ActiveRecord::Migration[7.0]
  def change
    create_table :faculties do |t|
      t.string :first_name
      t.string :last_name
      t.references :department, null: false, foreign_key: true
      t.string :rank
      t.boolean :active

      # t.timestamps
    end
  end
end
