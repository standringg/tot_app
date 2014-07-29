class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :f_name
      t.string :l_name
      t.string :street
      t.string :suburb
      t.string :City
      t.string :p_cod
      t.string :phone
      t.string :c_phone
      t.string :team

      t.timestamps
    end
  end
end
