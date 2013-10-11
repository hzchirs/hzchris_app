class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.string :email
      t.string :account

      t.timestamps
    end
  end
end
