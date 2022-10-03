class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :status
      t.string :name
      t.string :phone
      t.string :email
      t.string :subject
      t.text :summary

      t.timestamps
    end
  end
end
