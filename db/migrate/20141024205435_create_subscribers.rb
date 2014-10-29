class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
    	t.integer :user_id
    	t.integer :zip_code

    	t.timestamps
    end
  end
end
