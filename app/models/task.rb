class Task < ApplicationRecord
  belongs_to :answer

  after_create :strip_numbers

  def strip_numbers
    self.content = self.content.gsub(/^\d[\)-\. ]-?/, "").strip.capitalize
    self.save
  end
end
