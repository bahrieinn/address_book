class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender #will be radio button
      t.string :relation #will be checkbox

      t.timestamp
    end
  end
end
