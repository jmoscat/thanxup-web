class CreateWazzups < ActiveRecord::Migration
  def change
    create_table :wazzups do |t|
      t.string :name
      t.string :subject
      t.string :who
      t.string :email
      t.string :body
      t.timestamps
    end
  end
end
