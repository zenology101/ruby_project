class CreateBlists < ActiveRecord::Migration[6.1]
  def change
    create_table :blists do |t|
      t.string :subject
      t.string :details

      t.timestamps
    end
  end
end
