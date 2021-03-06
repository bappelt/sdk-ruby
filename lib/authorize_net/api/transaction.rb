module AuthorizeNet::API
  class Transaction < ApiTransaction    
        
    def initialize(api_login_id, api_transaction_key, options = {})
       super
    end
       
    # This request enables you to create a transaction, and optional customer profile.
    # NOTE: Tokenized transactions (e.g. Apple Pay), or PayPal should not be used to
    # create payment profiles.
    # 
    # See spec/api_spec.rb for usage examples
    def create_transaction(request)  
      make_request(request,CreateTransactionResponse,Type::API_CREATE_TRANSACTION)
    end
    
    # This request enables you to create a customer profile, payment profile,
    # and shipping profile from an existing successful transaction.
    # NOTE: Tokenized transactions (e.g. Apple Pay), or PayPal should not be used to
    # create payment profiles.
    # 
    # See spec/api_spec.rb for usage examples
    def create_customer_profile_from_transaction(request)
      make_request(request,CreateProfileResponse,Type::API_CREATE_CUSTOMER_PROFILE_FROM_TRANSACTION)
    end
    
    # This request enables you to delete a customer profile.
    # 
    # See spec/api_spec.rb for usage examples
    def delete_customer_profile(request)
      make_request(request,DeleteCustomerProfileResponse,Type::API_DELETE_CUSTOMER_PROFILE)
    end
  end
end