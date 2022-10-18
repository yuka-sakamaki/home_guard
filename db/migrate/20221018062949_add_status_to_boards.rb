class AddStatusToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :status, :boolean, default:false, null:false
  end
end
