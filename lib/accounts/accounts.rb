require 'rubygems'
require 'sinatra'
module Accounts
  class Profile  < Sinatra::Base  
    ACCESS_TOKEN = '581b50dca15a9d41eb280d5cbd52c7da4fb564621247848171508dd9d0dfa551a2efe9d06e110e62335abf13b6446a5c49e4bf6007cd90518fbbb0d1535b4dbc'
     
    get '/users/me' do 
       access_token = request.env["HTTP_AUTHORIZATION"]
       puts access_token
       puts "\n Request::::::::::" + request.env.to_s
       tokenHeader = 'OAuth2 ' + ACCESS_TOKEN
       if access_token.nil?
         response = { 'OAuth Exception' => {'error_code' => '201', 'description' => 'An access token is required to access to this resource'}}.to_json
       elsif tokenHeader == access_token
       		standardResponse = '{
    "status": {
        "success": true
    },
    "me": {
        "userName": "user-5111221",
        "firstName": "Daniel",
        "lastName": "Aguilar",
        "profilePicture": "/static/me.jpg",
        "accountsDetail": {
        "accounts": [
            {
                "acctId": "acct-0001",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Cuenta corriente (1)",
                "acctNick": "Cuenta corriente (1)",
                "acctNum": "123-121-11",
                "acctType": "DDA",
                "ledger": "121122",
                "avail": "221122",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0020",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Cuenta de ahorros (1)",
                "acctNick": "Cuenta de ahorros (1)",
                "acctNum": "832-122-332",
                "acctType": "SAV",
                "ledger": "153322",
                "avail": "153322",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0002",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Préstamo personal (1)",
                "acctNick": "Préstamo personal (1)",
                "acctNum": "1234-1234-1234-1234",
                "acctType": "LNS",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "30000",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0003",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Préstamo personal (2)",
                "acctNick": "Préstamo personal (2)",
                "acctNum": "1234-1235-1215-5555",
                "acctType": "LNS",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "0",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0004",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Préstamo personal (3)",
                "acctNick": "Préstamo personal (3)",
                "acctNum": "5555-5555-1111-5555",
                "acctType": "LNS",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "2343",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0005",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Tarjeta de crédito (1)",
                "acctNick": "Tarjeta de crédito (1)",
                "acctNum": "3333-4444-4444-4444",
                "acctType": "CCA",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "23434",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0006",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Tarjeta de crédito (2)",
                "acctNick": "Tarjeta de crédito (2)",
                "acctNum": "5232-1212-7575-8989",
                "acctType": "CCA",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "0",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0007",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Tarjeta de crédito (3)",
                "acctNick": "Tarjeta de crédito (3)",
                "acctNum": "5232-1212-7575-8989",
                "acctType": "CCA",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "0",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0008",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Tarjeta de crédito (4)",
                "acctNick": "Tarjeta de crédito (4)",
                "acctNum": "5232-1212-7575-8989",
                "acctType": "CCA",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "0",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0009",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Tarjeta de crédito (5)",
                "acctNick": "Tarjeta de crédito (5)",
                "acctNum": "5232-1212-7575-8989",
                "acctType": "CCA",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "0",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            },
            {
                "acctId": "acct-0010",
                "acctBalance": "200",
                "userName": "user-5111221",
                "desc": "Tarjeta de crédito (6)",
                "acctNick": "Tarjeta de crédito (6)",
                "acctNum": "5232-1212-7575-8989",
                "acctType": "CCA",
                "availCredit": "230000",
                "creditLimit": "500000",
                "payoffAmt": "0",
                "curCode": "USD",
                "bankName": "BankA",
                "iconResource": "/static/house-icon.png",
                "initialAmt": "20000"
            }
        ],
        "have":"374444",
        "owe":"920000"
        }
    }
}'      

		emptyResponse = '{
    "status": {
        "success": true
    },
    "me": {
        "userName": "user-5111221",
        "firstName": "Daniel",
        "lastName": "Aguilar",
        "profilePicture": "/static/me.jpg",
        "accountsDetail": {
	        "accounts": [],
	        "have":"0",
	        "owe":"0"
	    }
	}
	}'
	    
	  else
         standardResponse = { 'OAuth Exception' => {'error_code' => '200', 'description' => 'access token not valid'}}.to_json
       end
         content_type 'application/json'
         standardResponse    
         #emptyResponse  
     end
      

     get '/accounts/:accountId/transactions' do
       access_token = request.env["HTTP_AUTHORIZATION"]
       puts access_token
       tokenHeader = 'OAuth2 ' + ACCESS_TOKEN
       response = ''
       if access_token.nil?
         response = { 'OAuth Exception' => {'error_code' => '201', 'description' => 'An access token is required to access to this resource'}}.to_json
       elsif tokenHeader == access_token
         puts "Account ID: " + params[:accountId]
         bigResponse = '{
    "range": {
        "fromDt": "2012-06-26T11:12:20-0500",
        "toDt": "2012-07-25T11:12:20-0500"
    },
    "status": {
        "success": true
    },
    "transactions": [
        {
            "acctRef": null,
            "amt": 53.64,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003386",
            "description": "PROC.CAMARA CHEQ. 000003386",
            "enrichment": null,
            "internalTrxId": "13264",
            "newAcctBal": "-22013.7",
            "trxDt": "2012-06-26T11:12:22-0500",
            "trxEffDt": "2012-06-26T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 123.37,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003413",
            "description": "PROC.CAMARA CHEQ. 000003413",
            "enrichment": null,
            "internalTrxId": "13265",
            "newAcctBal": "-22137.07",
            "trxDt": "2012-06-26T11:12:22-0500",
            "trxEffDt": "2012-06-26T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1400,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13266",
            "newAcctBal": "-20737.07",
            "trxDt": "2012-06-26T11:12:22-0500",
            "trxEffDt": "2012-06-26T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1060.05,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13267",
            "newAcctBal": "-19677.02",
            "trxDt": "2012-06-26T11:12:22-0500",
            "trxEffDt": "2012-06-26T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1993.55,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13268",
            "newAcctBal": "-17683.47",
            "trxDt": "2012-06-27T11:12:22-0500",
            "trxEffDt": "2012-06-27T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1250,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13269",
            "newAcctBal": "-16433.47",
            "trxDt": "2012-06-27T11:12:22-0500",
            "trxEffDt": "2012-06-27T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 15000,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "BEBELANDIA INC.   010018528736",
            "description": "BEBELANDIA INC.   010018528736",
            "enrichment": null,
            "internalTrxId": "13270",
            "newAcctBal": "-1433.47",
            "trxDt": "2012-06-27T11:12:22-0500",
            "trxEffDt": "2012-06-27T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 20.86,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE COMISIONES010018528736",
            "description": "PAGO DE COMISIONES010018528736",
            "enrichment": null,
            "internalTrxId": "13271",
            "newAcctBal": "-1454.33",
            "trxDt": "2012-06-27T11:12:22-0500",
            "trxEffDt": "2012-06-27T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 2863.01,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003437",
            "description": "PROC.CAMARA CHEQ. 000003437",
            "enrichment": null,
            "internalTrxId": "13272",
            "newAcctBal": "-4317.34",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 6500,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003436",
            "description": "PROC.CAMARA CHEQ. 000003436",
            "enrichment": null,
            "internalTrxId": "13273",
            "newAcctBal": "-10817.34",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 7591.9,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003426",
            "description": "PROC.CAMARA CHEQ. 000003426",
            "enrichment": null,
            "internalTrxId": "13274",
            "newAcctBal": "-18409.24",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1480.51,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEP CON OTROS CKS",
            "description": "DEP CON OTROS CKS",
            "enrichment": null,
            "internalTrxId": "13275",
            "newAcctBal": "-16928.73",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 2000,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13276",
            "newAcctBal": "-14928.73",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 2.14,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "COMISION POR TRIBUTO0003449",
            "description": "COMISION POR TRIBUTO0003449",
            "enrichment": null,
            "internalTrxId": "13277",
            "newAcctBal": "-14930.87",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 2349.11,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "CHEQUE : 000003449",
            "description": "CHEQUE : 000003449",
            "enrichment": null,
            "internalTrxId": "13278",
            "newAcctBal": "-17279.98",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 53.5,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "S260607     MACADAMIA KIDS",
            "description": "S260607     MACADAMIA KIDS",
            "enrichment": null,
            "internalTrxId": "13279",
            "newAcctBal": "-17333.48",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1000,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "S260607     MACADAMIA KIDS",
            "description": "S260607     MACADAMIA KIDS",
            "enrichment": null,
            "internalTrxId": "13280",
            "newAcctBal": "-18333.48",
            "trxDt": "2012-06-28T11:12:22-0500",
            "trxEffDt": "2012-06-28T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 137.39,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003448",
            "description": "PROC.CAMARA CHEQ. 000003448",
            "enrichment": null,
            "internalTrxId": "13281",
            "newAcctBal": "-18470.87",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1100,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13282",
            "newAcctBal": "-17370.87",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 3500,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEP CON OTROS CKS",
            "description": "DEP CON OTROS CKS",
            "enrichment": null,
            "internalTrxId": "13283",
            "newAcctBal": "-13870.87",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5.35,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "COMISION CHQ.CERTIF.0003452",
            "description": "COMISION CHQ.CERTIF.0003452",
            "enrichment": null,
            "internalTrxId": "13284",
            "newAcctBal": "-13876.22",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 3208.61,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "CSS",
            "description": "CSS",
            "enrichment": null,
            "internalTrxId": "13285",
            "newAcctBal": "-17084.83",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 6757.72,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "CHEQUE : 000003451",
            "description": "CHEQUE : 000003451",
            "enrichment": null,
            "internalTrxId": "13286",
            "newAcctBal": "-23842.55",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5000,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "BEBELANDIA INC.   010018528777",
            "description": "BEBELANDIA INC.   010018528777",
            "enrichment": null,
            "internalTrxId": "13287",
            "newAcctBal": "-18842.55",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 6.68,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE COMISIONES010018528777",
            "description": "PAGO DE COMISIONES010018528777",
            "enrichment": null,
            "internalTrxId": "13288",
            "newAcctBal": "-18849.23",
            "trxDt": "2012-06-29T11:12:22-0500",
            "trxEffDt": "2012-06-29T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 66.14,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "COMISION POR SOBREG. NO AUTORI",
            "description": "COMISION POR SOBREG. NO AUTORI",
            "enrichment": null,
            "internalTrxId": "13289",
            "newAcctBal": "-18915.37",
            "trxDt": "2012-06-30T11:12:22-0500",
            "trxEffDt": "2012-06-30T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5.7,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "TIMBRES",
            "description": "TIMBRES",
            "enrichment": null,
            "internalTrxId": "13290",
            "newAcctBal": "-18921.07",
            "trxDt": "2012-06-30T11:12:22-0500",
            "trxEffDt": "2012-06-30T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 81.16,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "INTERESES POR SOBREGIRO",
            "description": "INTERESES POR SOBREGIRO",
            "enrichment": null,
            "internalTrxId": "13291",
            "newAcctBal": "-19002.23",
            "trxDt": "2012-06-30T11:12:22-0500",
            "trxEffDt": "2012-06-30T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5.1,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010014411556",
            "description": "PAGO DE FECI      010014411556",
            "enrichment": null,
            "internalTrxId": "13337",
            "newAcctBal": "-19007.33",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 48,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010014411556",
            "description": "PAGO INTERESES CR 010014411556",
            "enrichment": null,
            "internalTrxId": "13338",
            "newAcctBal": "-19055.33",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 346.9,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO PRINCIPAL CR 010014411556",
            "description": "PAGO PRINCIPAL CR 010014411556",
            "enrichment": null,
            "internalTrxId": "13339",
            "newAcctBal": "-19402.23",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527258",
            "description": "PAGO DE FECI      010018527258",
            "enrichment": null,
            "internalTrxId": "13340",
            "newAcctBal": "-19410.63",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.84,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527258",
            "description": "PAGO INTERESES CR 010018527258",
            "enrichment": null,
            "internalTrxId": "13341",
            "newAcctBal": "-19481.47",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527423",
            "description": "PAGO DE FECI      010018527423",
            "enrichment": null,
            "internalTrxId": "13342",
            "newAcctBal": "-19489.87",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527423",
            "description": "PAGO INTERESES CR 010018527423",
            "enrichment": null,
            "internalTrxId": "13343",
            "newAcctBal": "-19560.7",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527555",
            "description": "PAGO DE FECI      010018527555",
            "enrichment": null,
            "internalTrxId": "13344",
            "newAcctBal": "-19569.1",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527555",
            "description": "PAGO INTERESES CR 010018527555",
            "enrichment": null,
            "internalTrxId": "13345",
            "newAcctBal": "-19639.93",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 47.92,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527688",
            "description": "PAGO INTERESES CR 010018527688",
            "enrichment": null,
            "internalTrxId": "13346",
            "newAcctBal": "-19687.85",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 71.87,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527753",
            "description": "PAGO INTERESES CR 010018527753",
            "enrichment": null,
            "internalTrxId": "13347",
            "newAcctBal": "-19759.72",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527795",
            "description": "PAGO DE FECI      010018527795",
            "enrichment": null,
            "internalTrxId": "13348",
            "newAcctBal": "-19768.12",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.84,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527795",
            "description": "PAGO INTERESES CR 010018527795",
            "enrichment": null,
            "internalTrxId": "13349",
            "newAcctBal": "-19838.96",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527886",
            "description": "PAGO DE FECI      010018527886",
            "enrichment": null,
            "internalTrxId": "13350",
            "newAcctBal": "-19847.36",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527886",
            "description": "PAGO INTERESES CR 010018527886",
            "enrichment": null,
            "internalTrxId": "13351",
            "newAcctBal": "-19918.19",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 20.78,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527928",
            "description": "PAGO DE FECI      010018527928",
            "enrichment": null,
            "internalTrxId": "13352",
            "newAcctBal": "-19938.97",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 177.08,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527928",
            "description": "PAGO INTERESES CR 010018527928",
            "enrichment": null,
            "internalTrxId": "13353",
            "newAcctBal": "-20116.05",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527985",
            "description": "PAGO DE FECI      010018527985",
            "enrichment": null,
            "internalTrxId": "13354",
            "newAcctBal": "-20124.45",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527985",
            "description": "PAGO INTERESES CR 010018527985",
            "enrichment": null,
            "internalTrxId": "13355",
            "newAcctBal": "-20195.28",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 16.76,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018528017",
            "description": "PAGO DE FECI      010018528017",
            "enrichment": null,
            "internalTrxId": "13356",
            "newAcctBal": "-20212.04",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 141.67,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528017",
            "description": "PAGO INTERESES CR 010018528017",
            "enrichment": null,
            "internalTrxId": "13357",
            "newAcctBal": "-20353.71",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 47.91,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528082",
            "description": "PAGO INTERESES CR 010018528082",
            "enrichment": null,
            "internalTrxId": "13358",
            "newAcctBal": "-20401.62",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018528132",
            "description": "PAGO DE FECI      010018528132",
            "enrichment": null,
            "internalTrxId": "13359",
            "newAcctBal": "-20410.02",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528132",
            "description": "PAGO INTERESES CR 010018528132",
            "enrichment": null,
            "internalTrxId": "13360",
            "newAcctBal": "-20480.85",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 12.56,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018528223",
            "description": "PAGO DE FECI      010018528223",
            "enrichment": null,
            "internalTrxId": "13361",
            "newAcctBal": "-20493.41",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 106.25,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528223",
            "description": "PAGO INTERESES CR 010018528223",
            "enrichment": null,
            "internalTrxId": "13362",
            "newAcctBal": "-20599.66",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 119.79,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528280",
            "description": "PAGO INTERESES CR 010018528280",
            "enrichment": null,
            "internalTrxId": "13363",
            "newAcctBal": "-20719.45",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 574.65,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010014422579",
            "description": "PAGO INTERESES CR 010014422579",
            "enrichment": null,
            "internalTrxId": "13364",
            "newAcctBal": "-21294.1",
            "trxDt": "2012-07-01T11:12:20-0500",
            "trxEffDt": "2012-07-01T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5.1,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010014411556",
            "description": "PAGO DE FECI      010014411556",
            "enrichment": null,
            "internalTrxId": "13292",
            "newAcctBal": "-19007.33",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 48,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010014411556",
            "description": "PAGO INTERESES CR 010014411556",
            "enrichment": null,
            "internalTrxId": "13293",
            "newAcctBal": "-19055.33",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 346.9,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO PRINCIPAL CR 010014411556",
            "description": "PAGO PRINCIPAL CR 010014411556",
            "enrichment": null,
            "internalTrxId": "13294",
            "newAcctBal": "-19402.23",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527258",
            "description": "PAGO DE FECI      010018527258",
            "enrichment": null,
            "internalTrxId": "13295",
            "newAcctBal": "-19410.63",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.84,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527258",
            "description": "PAGO INTERESES CR 010018527258",
            "enrichment": null,
            "internalTrxId": "13296",
            "newAcctBal": "-19481.47",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527423",
            "description": "PAGO DE FECI      010018527423",
            "enrichment": null,
            "internalTrxId": "13297",
            "newAcctBal": "-19489.87",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527423",
            "description": "PAGO INTERESES CR 010018527423",
            "enrichment": null,
            "internalTrxId": "13298",
            "newAcctBal": "-19560.7",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527555",
            "description": "PAGO DE FECI      010018527555",
            "enrichment": null,
            "internalTrxId": "13299",
            "newAcctBal": "-19569.1",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527555",
            "description": "PAGO INTERESES CR 010018527555",
            "enrichment": null,
            "internalTrxId": "13300",
            "newAcctBal": "-19639.93",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 47.92,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527688",
            "description": "PAGO INTERESES CR 010018527688",
            "enrichment": null,
            "internalTrxId": "13301",
            "newAcctBal": "-19687.85",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 71.87,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527753",
            "description": "PAGO INTERESES CR 010018527753",
            "enrichment": null,
            "internalTrxId": "13302",
            "newAcctBal": "-19759.72",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527795",
            "description": "PAGO DE FECI      010018527795",
            "enrichment": null,
            "internalTrxId": "13303",
            "newAcctBal": "-19768.12",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.84,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527795",
            "description": "PAGO INTERESES CR 010018527795",
            "enrichment": null,
            "internalTrxId": "13304",
            "newAcctBal": "-19838.96",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527886",
            "description": "PAGO DE FECI      010018527886",
            "enrichment": null,
            "internalTrxId": "13305",
            "newAcctBal": "-19847.36",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527886",
            "description": "PAGO INTERESES CR 010018527886",
            "enrichment": null,
            "internalTrxId": "13306",
            "newAcctBal": "-19918.19",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 20.78,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527928",
            "description": "PAGO DE FECI      010018527928",
            "enrichment": null,
            "internalTrxId": "13307",
            "newAcctBal": "-19938.97",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 177.08,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527928",
            "description": "PAGO INTERESES CR 010018527928",
            "enrichment": null,
            "internalTrxId": "13308",
            "newAcctBal": "-20116.05",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018527985",
            "description": "PAGO DE FECI      010018527985",
            "enrichment": null,
            "internalTrxId": "13309",
            "newAcctBal": "-20124.45",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018527985",
            "description": "PAGO INTERESES CR 010018527985",
            "enrichment": null,
            "internalTrxId": "13310",
            "newAcctBal": "-20195.28",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 16.76,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018528017",
            "description": "PAGO DE FECI      010018528017",
            "enrichment": null,
            "internalTrxId": "13311",
            "newAcctBal": "-20212.04",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 141.67,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528017",
            "description": "PAGO INTERESES CR 010018528017",
            "enrichment": null,
            "internalTrxId": "13312",
            "newAcctBal": "-20353.71",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 47.91,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528082",
            "description": "PAGO INTERESES CR 010018528082",
            "enrichment": null,
            "internalTrxId": "13313",
            "newAcctBal": "-20401.62",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 8.4,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018528132",
            "description": "PAGO DE FECI      010018528132",
            "enrichment": null,
            "internalTrxId": "13314",
            "newAcctBal": "-20410.02",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 70.83,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528132",
            "description": "PAGO INTERESES CR 010018528132",
            "enrichment": null,
            "internalTrxId": "13315",
            "newAcctBal": "-20480.85",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 12.56,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE FECI      010018528223",
            "description": "PAGO DE FECI      010018528223",
            "enrichment": null,
            "internalTrxId": "13316",
            "newAcctBal": "-20493.41",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 106.25,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528223",
            "description": "PAGO INTERESES CR 010018528223",
            "enrichment": null,
            "internalTrxId": "13317",
            "newAcctBal": "-20599.66",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 119.79,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010018528280",
            "description": "PAGO INTERESES CR 010018528280",
            "enrichment": null,
            "internalTrxId": "13318",
            "newAcctBal": "-20719.45",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 574.65,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO INTERESES CR 010014422579",
            "description": "PAGO INTERESES CR 010014422579",
            "enrichment": null,
            "internalTrxId": "13319",
            "newAcctBal": "-21294.1",
            "trxDt": "2012-07-01T11:12:22-0500",
            "trxEffDt": "2012-07-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 111.3,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003390",
            "description": "PROC.CAMARA CHEQ. 000003390",
            "enrichment": null,
            "internalTrxId": "13365",
            "newAcctBal": "-21405.4",
            "trxDt": "2012-07-02T11:12:20-0500",
            "trxEffDt": "2012-07-02T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 395,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003384",
            "description": "PROC.CAMARA CHEQ. 000003384",
            "enrichment": null,
            "internalTrxId": "13366",
            "newAcctBal": "-21800.4",
            "trxDt": "2012-07-02T11:12:20-0500",
            "trxEffDt": "2012-07-02T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 723.15,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003346",
            "description": "PROC.CAMARA CHEQ. 000003346",
            "enrichment": null,
            "internalTrxId": "13367",
            "newAcctBal": "-22523.55",
            "trxDt": "2012-07-02T11:12:20-0500",
            "trxEffDt": "2012-07-02T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 2141.07,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003450",
            "description": "PROC.CAMARA CHEQ. 000003450",
            "enrichment": null,
            "internalTrxId": "13368",
            "newAcctBal": "-24664.62",
            "trxDt": "2012-07-02T11:12:20-0500",
            "trxEffDt": "2012-07-02T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1850,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13369",
            "newAcctBal": "-22814.62",
            "trxDt": "2012-07-02T11:12:20-0500",
            "trxEffDt": "2012-07-02T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 4426.61,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13370",
            "newAcctBal": "-18388.01",
            "trxDt": "2012-07-02T11:12:20-0500",
            "trxEffDt": "2012-07-02T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 111.3,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003390",
            "description": "PROC.CAMARA CHEQ. 000003390",
            "enrichment": null,
            "internalTrxId": "13320",
            "newAcctBal": "-21405.4",
            "trxDt": "2012-07-02T11:12:22-0500",
            "trxEffDt": "2012-07-02T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 395,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003384",
            "description": "PROC.CAMARA CHEQ. 000003384",
            "enrichment": null,
            "internalTrxId": "13321",
            "newAcctBal": "-21800.4",
            "trxDt": "2012-07-02T11:12:22-0500",
            "trxEffDt": "2012-07-02T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 723.15,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003346",
            "description": "PROC.CAMARA CHEQ. 000003346",
            "enrichment": null,
            "internalTrxId": "13322",
            "newAcctBal": "-22523.55",
            "trxDt": "2012-07-02T11:12:22-0500",
            "trxEffDt": "2012-07-02T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 2141.07,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003450",
            "description": "PROC.CAMARA CHEQ. 000003450",
            "enrichment": null,
            "internalTrxId": "13323",
            "newAcctBal": "-24664.62",
            "trxDt": "2012-07-02T11:12:22-0500",
            "trxEffDt": "2012-07-02T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1850,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13324",
            "newAcctBal": "-22814.62",
            "trxDt": "2012-07-02T11:12:22-0500",
            "trxEffDt": "2012-07-02T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 4426.61,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13325",
            "newAcctBal": "-18388.01",
            "trxDt": "2012-07-02T11:12:22-0500",
            "trxEffDt": "2012-07-02T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 4800,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13371",
            "newAcctBal": "-13588.01",
            "trxDt": "2012-07-03T11:12:20-0500",
            "trxEffDt": "2012-07-03T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 175,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13372",
            "newAcctBal": "-13413.01",
            "trxDt": "2012-07-03T11:12:20-0500",
            "trxEffDt": "2012-07-03T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 3608.35,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO PRINCIPAL CR 010014422579",
            "description": "PAGO PRINCIPAL CR 010014422579",
            "enrichment": null,
            "internalTrxId": "13373",
            "newAcctBal": "-17021.36",
            "trxDt": "2012-07-03T11:12:20-0500",
            "trxEffDt": "2012-07-03T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 4800,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13326",
            "newAcctBal": "-13588.01",
            "trxDt": "2012-07-03T11:12:22-0500",
            "trxEffDt": "2012-07-03T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 175,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13327",
            "newAcctBal": "-13413.01",
            "trxDt": "2012-07-03T11:12:22-0500",
            "trxEffDt": "2012-07-03T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 3608.35,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO PRINCIPAL CR 010014422579",
            "description": "PAGO PRINCIPAL CR 010014422579",
            "enrichment": null,
            "internalTrxId": "13328",
            "newAcctBal": "-17021.36",
            "trxDt": "2012-07-03T11:12:22-0500",
            "trxEffDt": "2012-07-03T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 7000,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003454",
            "description": "PROC.CAMARA CHEQ. 000003454",
            "enrichment": null,
            "internalTrxId": "13374",
            "newAcctBal": "-24021.36",
            "trxDt": "2012-07-04T11:12:20-0500",
            "trxEffDt": "2012-07-04T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5427.95,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13375",
            "newAcctBal": "-18593.41",
            "trxDt": "2012-07-04T11:12:20-0500",
            "trxEffDt": "2012-07-04T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 550,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13376",
            "newAcctBal": "-18043.41",
            "trxDt": "2012-07-04T11:12:20-0500",
            "trxEffDt": "2012-07-04T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1000,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "WEB.TRNF. 4048840200007404",
            "description": "WEB.TRNF. 4048840200007404",
            "enrichment": null,
            "internalTrxId": "13377",
            "newAcctBal": "-19043.41",
            "trxDt": "2012-07-04T11:12:20-0500",
            "trxEffDt": "2012-07-04T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 7000,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003454",
            "description": "PROC.CAMARA CHEQ. 000003454",
            "enrichment": null,
            "internalTrxId": "13329",
            "newAcctBal": "-24021.36",
            "trxDt": "2012-07-04T11:12:22-0500",
            "trxEffDt": "2012-07-04T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 5427.95,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13330",
            "newAcctBal": "-18593.41",
            "trxDt": "2012-07-04T11:12:22-0500",
            "trxEffDt": "2012-07-04T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 550,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13331",
            "newAcctBal": "-18043.41",
            "trxDt": "2012-07-04T11:12:22-0500",
            "trxEffDt": "2012-07-04T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 1000,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "WEB.TRNF. 4048840200007404",
            "description": "WEB.TRNF. 4048840200007404",
            "enrichment": null,
            "internalTrxId": "13332",
            "newAcctBal": "-19043.41",
            "trxDt": "2012-07-04T11:12:22-0500",
            "trxEffDt": "2012-07-04T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 325,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13378",
            "newAcctBal": "-18718.41",
            "trxDt": "2012-07-05T11:12:20-0500",
            "trxEffDt": "2012-07-05T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 3530.03,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13379",
            "newAcctBal": "-15188.38",
            "trxDt": "2012-07-05T11:12:20-0500",
            "trxEffDt": "2012-07-05T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 10000,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "BEBELANDIA INC.   010018528827",
            "description": "BEBELANDIA INC.   010018528827",
            "enrichment": null,
            "internalTrxId": "13380",
            "newAcctBal": "-5188.38",
            "trxDt": "2012-07-05T11:12:20-0500",
            "trxEffDt": "2012-07-05T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 13.91,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE COMISIONES010018528827",
            "description": "PAGO DE COMISIONES010018528827",
            "enrichment": null,
            "internalTrxId": "13381",
            "newAcctBal": "-5202.29",
            "trxDt": "2012-07-05T11:12:20-0500",
            "trxEffDt": "2012-07-05T11:12:20-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 325,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "WEB BEBELANDIA INC.",
            "description": "WEB BEBELANDIA INC.",
            "enrichment": null,
            "internalTrxId": "13333",
            "newAcctBal": "-18718.41",
            "trxDt": "2012-07-05T11:12:22-0500",
            "trxEffDt": "2012-07-05T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 3530.03,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "DEPOSITO MIXTO/EFECT Y CK",
            "description": "DEPOSITO MIXTO/EFECT Y CK",
            "enrichment": null,
            "internalTrxId": "13334",
            "newAcctBal": "-15188.38",
            "trxDt": "2012-07-05T11:12:22-0500",
            "trxEffDt": "2012-07-05T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 10000,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "BEBELANDIA INC.   010018528827",
            "description": "BEBELANDIA INC.   010018528827",
            "enrichment": null,
            "internalTrxId": "13335",
            "newAcctBal": "-5188.38",
            "trxDt": "2012-07-05T11:12:22-0500",
            "trxEffDt": "2012-07-05T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 13.91,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PAGO DE COMISIONES010018528827",
            "description": "PAGO DE COMISIONES010018528827",
            "enrichment": null,
            "internalTrxId": "13336",
            "newAcctBal": "-5202.29",
            "trxDt": "2012-07-05T11:12:22-0500",
            "trxEffDt": "2012-07-05T11:12:22-0500",
            "trxId": null
        }
    ]
}'
         midResponse = '{
				  "status": {"success": true},
				  "transactions": [
					{
				      "acctRef": null,
				      "amt": 1000,
				      "amtType": "D",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Consignacion en Oficina $20.000.000.00 en efectivo $0.00 en cheque",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "34f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "455444f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-10T17:26:56-0400",
				      "trxEffDt": "2012-06-10T00:00:00-0400",
				      "trxId": "1"
				    },
				  	{
				      "acctRef": null,
				      "amt": 1000,
				      "amtType": "D",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Consignacion en Oficina $20.000.000.00 en efectivo $0.00 en cheque",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "34f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "455444f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-15T17:26:56-0400",
				      "trxEffDt": "2012-06-15T00:00:00-0400",
				      "trxId": "2"
				    },
				    {
				      "acctRef": null,
				      "amt": 1000,
				      "amtType": "D",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Consignacion en Oficina $20.000.000.00 en efectivo $0.00 en cheque",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "34f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "455444f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-17T17:26:56-0400",
				      "trxEffDt": "2012-06-17T00:00:00-0400",
				      "trxId": "3"
				    },
				    {
				      "acctRef": null,
				      "amt": 5000,
				      "amtType": "D",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Consignación local",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": null
				      },
				      "internalTrxId": "45a4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-17T14:33:04-0400",
				      "trxEffDt": "2012-06-17T00:00:00-0300",
				      "trxId": "4"
				    },
				    {
				      "acctRef": null,
				      "amt": 12000,
				      "amtType": "D",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Abono a cuenta en oficina",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": null
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-18T05:45:21-0400",
				      "trxEffDt": "2012-06-18T00:00:00-0300",
				      "trxId": "5"
				    },
				    {
				      "acctRef": null,
				      "amt": 20000,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "4f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-20T17:26:56-0400",
				      "trxEffDt": "2012-06-20T00:00:00-0400",
				      "trxId": "6"
				    },
				    {
				      "acctRef": null,
				      "amt": 20000,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático (2)",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": null
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-06-30T17:26:56-0400",
				      "trxEffDt": "2012-06-30T00:00:00-0400",
				      "trxId": "7"
				    },
				    				    {
				      "acctRef": null,
				      "amt": 50000,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático (3)",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": null
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-07-01T17:26:56-0400",
				      "trxEffDt": "2012-07-01T00:00:00-0400",
				      "trxId": "8"
				    },
				    {
				      "acctRef": null,
				      "amt": 80000,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático (4)",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": null
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-07-05T17:26:56-0400",
				      "trxEffDt": "2012-07-05T00:00:00-0400",
				      "trxId": "9"
				    },
				    {
				      "acctRef": null,
				      "amt": 25000,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático (5)",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": null
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-07-05T17:26:56-0400",
				      "trxEffDt": "2012-07-05T00:00:00-0400",
				      "trxId": "10"
				    },
				    {
				      "acctRef": null,
				      "amt": 8475,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "4f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-07-12T17:26:56-0400",
				      "trxEffDt": "2012-07-12T00:00:00-0400",
				      "trxId": "11"
				    },
				    {
				      "acctRef": null,
				      "amt": 5000,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático (2)",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "4f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-07-12T17:26:56-0400",
				      "trxEffDt": "2012-07-12T00:00:00-0400",
				      "trxId": "12"
				    },
				    {
				      "acctRef": null,
				      "amt": 8475,
				      "amtType": "W",
				      "branchId": 40,
				      "counterParty": null,
				      "description": "Débito Transf. ACH Cajero Automático (3)",
				      "enrichment": {
				        "attachments": null,
				        "checkin": null,
				        "id": "4f661dcfe4b0022c5bd5c8a8",
				        "internalTrxId": "4f661dcfe4b0022c5bd5c8a8"
				      },
				      "internalTrxId": "4f661dcfe4b0022c5bd5c8a8",
				      "newAcctBal": null,
				      "trxDt": "2012-07-12T17:26:56-0400",
				      "trxEffDt": "2012-07-12T00:00:00-0400",
				      "trxId": "13"
				    }
				  ], 
				  "range": {
				  	"fromDt" : "2012-06-09T00:00:00-0400",
				  	"toDt" : "2012-07-12T00:00:00-0400"
				  }
				}
'

	 tinyResponse = '{
    "range": {
        "fromDt": "2012-07-07T00:00:00-0000",
        "toDt": "2012-08-07T23:59:59-0000"
    },
    "status": {
        "success": true
    },
    "transactions": [
        {
            "acctRef": null,
            "amt": 53.64,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003386",
            "description": "PROC.CAMARA CHEQ. 000003386",
            "enrichment": {
                "checkin": {
                    "venue": {
                        "address": "CRA.13NO.61-08",
                        "branchId": 40,
                        "category": "OFICINA",
                        "id": "4f64b1357dd70b08b59bab74",
                        "location": {
                            "lat": 4.6479434587,
                            "lon": -74.0636984718
                        },
                        "name": "CHAPINERO",
                        "tags": {
                            "net": "PMP"
                        }
                    },
                    "createdTime": "2012-08-01T19:14:24+0000",
                    "address": "Av Santa Benedicta 3455",
                    "location": {
                        "lat": -33.404546,
                        "lon": -70.572661
                    }
                }
            },
            "internalTrxId": "13264",
            "newAcctBal": "-22013.7",
            "trxDt": "2012-08-01T11:12:22-0500",
            "trxEffDt": "2012-08-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 120.64,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "Depósito en efectivo",
            "description": "Depósito en efectivo",
            "enrichment": {
                "checkin": {
                    "venue": {
                        "address": "Buenas Nuevas 135",
                        "branchId": 41,
                        "category": "OFICINA",
                        "id": "4f64b1357dd70b08b59bab75",
                        "location": {
                            "lat": 4.6579434587,
                            "lon": -74.1636984718
                        },
                        "name": "CHAPINERO",
                        "tags": {
                            "net": "PMP"
                        }
                    },
                    "createdTime": "2012-08-01T19:14:24+0000",
                    "address": "Av Santa Benedicta 3455",
                    "location": {
                        "lat": -33.424546,
                        "lon": -70.582661
                    }
                }
            },
            "internalTrxId": "13265",
            "newAcctBal": "-22013.7",
            "trxDt": "2012-08-01T11:12:22-0500",
            "trxEffDt": "2012-08-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 580.76,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "Giro en cajero automático",
            "description": "Giro en cajero automático",
            "enrichment": {
                "checkin": {
                    "venue": {
                        "address": "Plaza Sotomayor 100",
                        "branchId": 40,
                        "category": "OFICINA",
                        "id": "4f64b1357dd70b08b59bab78",
                        "location": {
                            "lat": 4.7079434587,
                            "lon": -74.1036984718
                        },
                        "name": "CHAPINERO",
                        "tags": {
                            "net": "PMP"
                        }
                    },
                    "createdTime": "2012-08-01T19:14:24+0000",
                    "address": "Av Santa Benedicta 3455",
                    "location": {
                        "lat": -33.404546,
                        "lon": -70.572661
                    }
                }
            },
            "internalTrxId": "13266",
            "newAcctBal": "-22013.7",
            "trxDt": "2012-08-01T11:12:22-0500",
            "trxEffDt": "2012-08-01T11:12:22-0500",
            "trxId": null
        },
        {
            "acctRef": null,
            "amt": 764.85,
            "amtType": "D",
            "branchId": 0,
            "counterParty": "Cheque depositado",
            "description": "Cheque depositado",
            "enrichment": {
                "checkin": {
                    "venue": {
                        "address": "Mamalluca 1022",
                        "branchId": 40,
                        "category": "OFICINA",
                        "id": "4f64b1357dd70b08b59bab74",
                        "location": {
                            "lat": 4.7379434587,
                            "lon": -74.1236984718
                        },
                        "name": "CHAPINERO",
                        "tags": {
                            "net": "PMP"
                        }
                    },
                    "createdTime": "2012-08-02T19:14:24+0000",
                    "address": "Av Santa Benedicta 3455",
                    "location": {
                        "lat": -33.404546,
                        "lon": -70.572661
                    }
                }
            },
            "internalTrxId": "13269",
            "newAcctBal": "-22013.7",
            "trxDt": "2012-08-02T11:12:22-0500",
            "trxEffDt": "2012-08-02T11:12:22-0500",
            "trxId": null
        }
    ]
}'
    
		brokenResponse = '{
    "range": {
        "fromDt": "2012-07-07T00:00:00-0000",
        "toDt": "2012-08-07T23:59:59-0000"
    },
    "status": {
        "success": true
    },
    "transactions": [
        {
            "acctRef": null,
            "amt": 53.64,
            "amtType": "W",
            "branchId": 0,
            "counterParty": "PROC.CAMARA CHEQ. 000003386",
            "description": "PROC.CAMARA CHEQ. 000003386",
            "enrichment": null,
            "internalTrxId": "13264",
    '
    
    emptyResponse = '
    {
    	"range": {
        	"fromDt": "2012-07-07T00:00:00-0000",
        	"toDt": "2012-08-07T23:59:59-0000"
    	},
    	"status": {
        	"success": true
    	},
    	"transactions": []
    }'    
       else
         response = { 'OAuth Exception' => {'error_code' => '200', 'description' => 'access token not valid'}}.to_json
       end
         content_type 'application/json'
         #bigResponse
         midResponse
         #tinyResponse 
         #emptyResponse     
         #brokenResponse
     end
     
  end
end
