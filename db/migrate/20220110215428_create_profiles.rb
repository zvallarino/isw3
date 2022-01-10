class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.string :profile_img

      t.timestamps
    end
  end
end
