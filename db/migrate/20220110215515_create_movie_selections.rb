class CreateMovieSelections < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_selections do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
