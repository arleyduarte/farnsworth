require "rubygems"
require "sinatra"
module Transfers
  class InternalTransfers < Sinatra::Base
    post "/transfer/internal" do
      puts params.to_s
      credentials = params[:credentials]
	  response = '			{
  				"internalTransfer": {
   					"acctRef": "13106",
					"amt": 12.95,
					"amtType": null,
					"branchId": 0,
					"counterParty": null,
					"description": "mySubject",
					"enrichment": null,
					"internalTrxId": "2e9640d9421a",
					"newAcctBal": null,
					"trxDt": "2012-05-23T20:08:31+0000",
					"trxEffDt": null,
					"trxId": null
				},
				"status": {"success": true}
			}'
      content_type 'application/json'
      response
    end
    
    get '/billers/categories' do
  		categories = '{
    "status": {
        "success": true
    },
    "categories": [
        {
            "id": 1,
            "name": "Telefonía"
        },
        {
            "id": 2,
            "name": "Internet"
        },
        {
            "id": 3,
            "name": "Electricidad"
        }
    ]
}'
		emptyCategories = '{
    "status": {
        "success": true
    },
    "categories": []
    }'
  		content_type 'application/json'
  		categories
  		#emptyCategories
  		
  	end
  	
	get '/billers/category/:categoryId' do
  		response = '{
    "status": {
        "success": true
    },
    "billers": [
        {
            "id": 1,
            "name": "Telefonía Casa (1)",
            "categories": [
                {
                    "id": 1,
                    "name": "Telefonía"
                }
            ],
            "invoice": {
                "invoiceSender": {
                    "orgIdNum": "4345534",
                    "svcId": "645DF656DFY6",
                    "name": "Telefonica Chile"
                }
            }
        },
        {
            "id": 2,
            "name": "Telefonía Casa (2)",
            "categories": [
                {
                    "id": 1,
                    "name": "Telefonía"
                }
            ],
            "invoice": {
                "invoiceSender": {
                    "orgIdNum": "4345535",
                    "svcId": "645DF656DFY7",
                    "name": "Telefonica Chile"
                }
            }
        }
    ]
}'
  		content_type 'application/json'
  		response
  	end
  	
  	get '/billers' do
  		response = '{
    "status": {
        "success": true
    },
    "billers": [
        {
            "id": 1,
            "name": "Telefonía Casa",
            "categories": [
                {
                    "id": 1,
                    "name": "Telefonía"
                }
            ],
            "invoice": {
                "invoiceSender": {
                    "orgIdNum": "4345534",
                    "svcId": "645DF656DFY6",
                    "name": "Telefonica Chile"
                }
            }
        },
        {
            "id": 2,
            "name": "Internet casa",
            "categories": [
                {
                    "id": 2,
                    "name": "Internet"
                }
            ],
            "invoice": {
                "invoiceSender": {
                    "orgIdNum": "67567564",
                    "svcId": "645DF757DFY7",
                    "name": "VTR Chile"
                }
            }
        }
    ]
}'

		emptyResponse = '{
    "status": {
        "success": true
    },
    "billers": []
    }'

  		content_type 'application/json'
  		response
  		#emptyResponse
  	end
    
    
  	get '/cellphone/billers' do
  		response = '{
    "status": {
        "success": true
    },
    "billers": [
        {
            "id": 1,
            "name": "Entel"
        },
        {
            "id": 2,
            "name": "Movistar"
        },
        {
            "id": 3,
            "name": "Claro"
        }
    ]
}'



  		content_type 'application/json'
  		response
  	end    
  	
  	post '/billers/payment' do
  		successResponse = '{
"status":{    
    "success": true
    },
 "pmtId":"56745674567",
 "pmtDt":"2012-02-25T19:18:17+0000"
 }'
 
 		unsuccessfulResponse = '{
 "status":{
    "success": false,
    "code":"payment_failed",
    "description":"Payment failed"
    }
 }'
 
  		content_type 'application/json'
  		successResponse
  		#unsuccessfulResponse
  	end
    
    
  	get 'cellphone/billers/' do
  		successResponse = '{
"status":{    
    "success": true
    },
 "pmtId":"56745674567",
 "pmtDt":"2012-02-25T19:18:17+0000"
 }'
 
 		unsuccessfulResponse = '{
 "status":{
    "success": false,
    "code":"payment_failed",
    "description":"Payment failed"
    }
 }'
 
  		content_type 'application/json'
  		successResponse
  		#unsuccessfulResponse
  	end  
    
        
    
	get '/cellphone/billers/:billerId' do
    
    billerId = params[:billerId]
    
    successResponse = ''
    
    if(billerId=='1')
    
  		successResponse = '{
    "status": {
        "success": true
    },
    "pmtInfo": {
        "desc": "Recarga de celular",
        "pmtOptions": [
            {
                "id": 1,
                "desc": "Recarga de $1.000",
                "type": "fixed",
                "pmtAmt": {
                    "min": "0",
                    "max": "0",
                    "amt": "1000",
                    "curCode": "CLP"
                }
            },
            {
                "id": 2,
                "desc": "Recarga de $5.000",
                "type": "fixed",
                "pmtAmt": {
                    "min": "0",
                    "max": "0",
                    "amt": "5000",
                    "curCode": "CLP"
                }
            },
            {
                "id": 3,
                "desc": "Recarga de $10.000",
                "type": "fixed",
                "pmtAmt": {
                    "min": "0",
                    "max": "0",
                    "amt": "10000",
                    "curCode": "CLP"
                }
            },
            {
                "id": 4,
                "desc": "Recarga de $15.000",
                "type": "fixed",
                "pmtAmt": {
                    "min": "0",
                    "max": "0",
                    "amt": "15000",
                    "curCode": "CLP"
                }
            },
            {
                "id": 5,
                "desc": "Recarga de $20.000",
                "type": "fixed",
                "pmtAmt": {
                    "min": "0",
                    "max": "0",
                    "amt": "20000",
                    "curCode": "CLP"
                }
            },
            {
                "id": 6,
                "desc": "Recarga de $50.000",
                "type": "fixed",
                "pmtAmt": {
                    "min": "0",
                    "max": "0",
                    "amt": "50000",
                    "curCode": "CLP"
                }
            }
            
        ]
    }
}'

elsif(billerId=='2')
  successResponse = '{
    "status": {
        "success": true
    },
    "pmtInfo": {
        "desc": "Recarga de celular",
        "pmtOptions": [
            {
                "id": 1,
                "desc": "Recarga",
                "type": "open",
                "pmtAmt": {
                    "min": "1000",
                    "max": "0",
                    "amt": "0",
                    "curCode": "CLP"
                }
            }
        ]
    }
}'

else
  successResponse = '{
    "status": {
        "success": true
    },
    "pmtInfo": {
        "desc": "Recarga de celular",
        "pmtOptions": [
            {
                "id": 1,
                "desc": "Recarga",
                "type": "closed",
                "pmtAmt": {
                    "min": "1000",
                    "max": "20000",
                    "amt": "0",
                    "curCode": "CLP"
                }
            }
        ]
    }
}
'
end
 
  		content_type 'application/json'
  		successResponse
  		#unsuccessfulResponse
  	end
    
    
    
        
    
  	post '/cellphone/refill' do
      
      cellPhoneNum = params[:cellPhoneNum]

 
      if(cellPhoneNum == '1')
     		successResponse = '{
     "status":{
        "success": false,
        "code":"cellphone_not_found",
        "description":"Refill failed, cellphone number not found"
        }
     }'
      
   elsif(cellPhoneNum == '2')
    		successResponse = '{
    "status":{
       "success": false,
       "code":"insufficient_balance",
       "description":"insufficient balance to execute an operation"
       }
    }'
    
  elsif(cellPhoneNum == '3')
   		successResponse = '{
   "status":{
      "success": false,
      "code":"disabled_account",
      "description":"Payment disabled_account"
      }
   }' 
   
  else
  		successResponse = '{
   "status":{    
    "success": true
    },
 "refillId":"56745674567",
 "refillDt":"2012-02-25T19:18:17+0000"
 }'
end    


 
  		content_type 'application/json'
  		successResponse
  		#unsuccessfulResponse
  	end    
    
  end
end