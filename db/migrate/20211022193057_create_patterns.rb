class CreatePatterns < ActiveRecord::Migration[6.1]
  def change
    create_table :patterns do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.json :content, default: {}

      t.timestamps
    end
  end
end
