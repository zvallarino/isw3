class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :genre
      t.text :description
      t.string :thumbnail
      t.string :backdrop
      t.integer :rating
      t.integer :runtime
      t.string :release_date
      t.string :movie_link

      t.timestamps
    end
  end
end
