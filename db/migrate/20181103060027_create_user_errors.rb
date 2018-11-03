class CreateUserErrors < ActiveRecord::Migration[5.2]
  def change
    create_table :user_errors do |t|
    	t.string :message
      t.string :line_number
    	t.string :file
      t.string :stack_url
      t.timestamps
    end
  end
end
