class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :name,  :null => false
    	t.string :phone
    	t.string :email, :null => false
    	t.string :who
    	t.string :body
      t.timestamps
    end
  end
end
