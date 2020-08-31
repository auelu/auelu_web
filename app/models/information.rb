class Information < ApplicationRecord
    validates :newcontent, uniqueness:{scope: :date}
end
