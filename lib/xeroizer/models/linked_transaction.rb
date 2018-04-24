module Xeroizer
  module Record

    class LinkedTransactionModel < BaseModel
      set_permissions :read, :write, :update
    end

    class LinkedTransaction < Base
      set_primary_key :linked_transaction_id

      guid :linked_transaction_id
      string :source_transaction_id, :api_name => 'SourceTransactionID'
      string :source_line_item_id, :api_name => 'SourceLineItemID'
      string :page
      string :contact_id, :api_name => 'ContactID'
      string :target_transaction_id, :api_name => 'TargetTransactionID'
      string :target_line_item_id, :api_name => 'TargetLineItemID'
      string :status
      datetime_utc :updated_date_utc, :api_name => 'UpdatedDateUTC'
    end

  end
end
