CityData = [
               {cityName:"miami",cityCode: 601},
               {cityName:"Tokyo",cityCode: 203},
               {cityName:"Osaka",cityCode: 204},
               {cityName:"Hiroshima",cityCode: 212},
               {cityName:"Kyoto",cityCode:205},
               {cityName:"Nagoya",cityCode: 207}
]

 p('Select or Type the City Name in this List')
 isContinue = false
  CityData.each do |item|
               p(item)
  end
  n=false
  while (!n)
               p("Enter City Name")
               cityNameInput = gets.chomp
               CityData.each do |item|
                if cityNameInput == item[:cityName]        
                             p('Code of City name is' , item[:cityCode] )
                                      isContinue = true
                                    
                else
                  1
                end
                 
             end
                     
               if isContinue     
             p("Do You Want to Continue? (y/n)")
             isContinueInput = gets.chomp
             if isContinueInput != "Y"  
               n=true 
             else 
            n=false
             end
            else
              return 1
            end
  end           