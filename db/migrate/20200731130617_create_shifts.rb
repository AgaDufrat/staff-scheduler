class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.datetime :start, :null => false
      t.datetime :end, :null => false
      t.integer  :user_id, :null => false

      t.timestamps
    end
  end
end
