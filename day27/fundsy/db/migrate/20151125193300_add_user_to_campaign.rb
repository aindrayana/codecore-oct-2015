class AddUserToCampaign < ActiveRecord::Migration
  def change
    add_reference :campaigns, :user, index: true, foreign_key: true

    # t.references :question, index: true, foreign_key: true
  end
end
