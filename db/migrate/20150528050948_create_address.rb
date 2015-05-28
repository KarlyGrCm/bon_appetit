class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :street
    	t.string :number
    	t.string :city
    	t.string :cp
    	t.integer :user_id, index: true
    end
  end
end
