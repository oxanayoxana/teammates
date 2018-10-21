class AddPhotoToTeammates < ActiveRecord::Migration[5.2]
  def change
    add_column :teammates, :photo, :string
  end
end
