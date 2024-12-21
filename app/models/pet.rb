class Pet < ApplicationRecord
  SPECIES = ["cat", "lezard", "dog", "hamster", "mouse", "keyboard"]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def days_ago
    nb_days = (Date.today - found_on).to_i
    nb_days.zero? ? "Today" : "#{nb_days} days ago"
  end
end
