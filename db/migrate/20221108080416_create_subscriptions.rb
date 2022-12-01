class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.belongs_to :user , index: true
      t.timestamps
    end
  end
end
