class Store < ActiveRecord::Base
    has_many  :employees
    validates :name, length: { minimum: 3, message: 'error: names are 3 characters long...' }
    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0, message: 'error: revenue should be more than 0...' }
    validate  :store_has_m_w

    def store_has_m_w
        if !womens_apparel.present? && !mens_apparel.present?
            errors.add(:store_has_m_w, 'error: store should have mens and womens...')
        end
    end
end
