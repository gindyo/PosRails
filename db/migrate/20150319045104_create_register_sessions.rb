class CreateRegisterSessions < ActiveRecord::Migration
  def change
    create_table :register_sessions do |t|

      t.timestamps
    end
  end
end
