class Movie < ApplicationRecord
  has_many :comments

  def add_to_playlist
    binding.pry
  end

  def remove_playlist
    binding.pry
  end

end
