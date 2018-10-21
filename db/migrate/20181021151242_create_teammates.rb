class CreateTeammates < ActiveRecord::Migration[5.2]
  def change
    create_table :teammates do |t|
      t.string :name
      t.string :role
      t.text :about

      t.timestamps
    end
  end
end
