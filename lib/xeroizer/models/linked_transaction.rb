module Xeroizer
  module Record

    class LinkedTransactionModel < BaseModel

      set_permissions :read, :write, :update

    end

    class LinkedTransaction < Base
      set_primary_key :linked_transaction_id

      guid :linked_transaction_id
      string :source_transaction_i_d
      string :source_line_item_i_d
      string :page
      string :contact_i_d
      string :target_transaction_id
      string :status
    end

  end
end
