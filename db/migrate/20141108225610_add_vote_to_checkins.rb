class AddVoteToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :vote, :boolean
  end
end
