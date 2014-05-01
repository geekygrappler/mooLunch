class AddReferenceToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :lunch, index: true
  end
end
