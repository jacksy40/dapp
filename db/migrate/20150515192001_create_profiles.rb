class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :avatar
      t.string :photo
      t.string :user_name
      t.string :race
      t.string :dob
      t.string :sex
      t.string :orientation
      t.string :height
      t.string :weight
      t.string :build
      t.string :location
      t.string :interest
      t.string :occupation
      t.string :dating
      t.text :story

      t.timestamps null: false
    end
  end
end

