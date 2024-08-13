=begin
## INPUT USE CASES:
# come in strings

### NAME

name = "kjhgv"                             == true            # any letter
name = "     kjhggd"                       == true            # white space will be stripped
name = "jhggg      "                       == true            # white space will be stripped
name = "8776"                              == true            # any number
name = "4.5"                               == true            # any float
name = "4,5"                               == true            # any float
name = "     12445"                        == true            # white space will be stripped
name = "98765      "                       == true            # white space will be stripped
name = "!@#$%^&*())_+""                    == true            # any symbol
name = "-4"                                == true            # any negative integer

name = ""                                  == false
name = "     "                             == false           # white space will be stripped



### LOAN AMOUNT

loan_amount = "1000000"                    == true
loan_amount = "1"                          == true
loan_amount = "9    "                      == true             # white space will be stripped
loan_amount = "    9"                      == true             # white space will be stripped

loan_amount = "$10000"                     == true             # `$` sign wull be deleted
loan_amount = "$ 10000"                    == true             # `$` sign wull be deleted

loan_amount = "100,000"                    == false             
loan_amount = "1.2"                        == false            
loan_amount = "100 000"                    == false           
loan_amount = "0"                          == false
loan_amount = "-1"                         == false            # any negative integer

loam_amount = "     "                      == false            # white space will be stripped  
loan_amount = ""                           == false            
loan_amount = "n"                          == false            # any letter
loan_amount = "n    "                      == false             
loan_amount = "!@#$%^&*())_+""             == false            # any symbol or symbol with integer/float/letter/white space



### INTEREST RATE

interest_rate = "5"                         == true
interest_rate = "0.5"                       == true
interest_rate = "0.05"                      == true             

interest_rate = "%5"                        == false          
interest_rate = "% 5"                       == false          
interest_rate = ".5"                        == false
interest_rate = "00000000000005"            == false
interest_rate = "0"                         == false
interest_rate = "0.00001"                   == false

interest_rate = "     "                     == false            # white space will be stripped
interest_rate = ""                          == false            
interest_rate = "n"                         == false            # any letter
interest_rate = "n    "                     == false            
interest_rate = "-1"                        == false            # any negative integer
interest_rate = "!@#$%^&*())_+""            == false            # any symbol or symbol with integer/float/letter/white space



### LOAN DURATION IN YEARS

loan_duration_in_years = "10"               == true
loan_duration_in_years = "10.2"             == true
loan_duration_in_years = "0.00001"          == true
             
loan_duration_in_years = "10,2"             == false
loan_duration_in_years ".5"                 == false
loan_duration_in_years = "00000000000005"   == false
loan_duration_in_years = "0"                == false

loan_duration_in_years = "     "            == false            # white space will be stripped
loan_duration_in_years = ""                 == false            
loan_duration_in_years = "n"                == false            # any letter
loan_duration_in_years = "n    "            == false            
loan_duration_in_years = "-1"               == false            # any negative integer
loan_duration_in_years = "!@#$%^&*())_+""   == false            # any symbol or symbol with integer/float/letter/white space
=end
