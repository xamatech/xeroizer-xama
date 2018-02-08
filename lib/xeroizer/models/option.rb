module Xeroizer
  module Record

    class OptionModel < BaseModel

    end

    class Option < Base

      set_primary_key :tracking_option_id

      guid   :tracking_option_id
# ADDED
      guid   :tracking_category_id
#
      string :name

# ADDED
      def overwrite_url
        "trackingcategories/#{self.tracking_category_id}/options"
      end
#

    end

  end
end
