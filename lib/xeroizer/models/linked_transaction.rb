module Xeroizer
  module Record

    class LinkedTransactionModel < BaseModel

      set_permissions :read, :write, :update

    end

    class LinkedTransaction < Base
      set_primary_key :linked_transaction_id

      guid :linked_transaction_id
      string :source_transaction_id
      string :page
      string :contact_id
      string :target_transaction_id
      string :status
    end

  end
end
