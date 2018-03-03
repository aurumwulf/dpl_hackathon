class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :duration
      t.string :genre
      t.string :description
      t.string :trailer
      t.belongs_to :playlist, optional: true

      t.timestamps
    end
  end
end
