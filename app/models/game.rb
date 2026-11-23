class Game < ApplicationRecord
  belongs_to :studio, counter_cache: :game_count
  belongs_to :genre

  validates :title, presence: true
end
