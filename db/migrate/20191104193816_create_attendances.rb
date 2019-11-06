class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      t.reference :event, index: true
      t.reference :admin, index: true
      t.reference :customer, index: true
      t.timestamps
    end
  end
end
