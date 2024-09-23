class CreatePodcasters < ActiveRecord::Migration[7.1]
  def change
    create_table :podcasters do |t|
      t.string :name
      t.integer :team_size

      t.timestamps
    end
  end
end
