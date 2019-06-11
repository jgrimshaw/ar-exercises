class Employee < ActiveRecord::Base
   belongs_to :store

   validate :first_name_present,
            :last_name_present,
            :employee_belongs_to_store,
            :hourly_rate_amount


    def first_name_present
        if !first_name.present?
            puts errors.add(:first_name, "error: missing first name...")
        end
    end

    def last_name_present
        if !last_name.present?
            puts errors.add(:last_name, "error: missing last name...")
        end
    end

    def employee_belongs_to_store
        if !store_id.present?
            puts errors.add(:store_id, "error: not found in our stores...")
        end
    end

    def hourly_rate_amount
        if hourly_rate.to_i && (hourly_rate < 40 || hourly_rate > 200)
            puts errors.add(:hourly_rate, "error: hourly rate range...")
        end
    end
end


