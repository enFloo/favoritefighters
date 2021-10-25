class CreateFighters < ActiveRecord::Migration[7.0]
  def change
    create_table :fighters do |t|
      t.string :first_name
      t.string :last_name
      t.string :weight_class

      t.timestamps
    end
  end
end
