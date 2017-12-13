puts
print" =============================\n"
print" ~~~~~~~GUESS THE WORD~~~~~~~~\n"
print" =============================\n"
puts
puts
countryList = ["belgium", "brasil", "germany", "italy", "chile", "denmark"]
fruitList = ["peach", "orange", "melon", "pineapple", "grape", ]
colorList = ["gray", "red","magenta", "blue", "yellow", "purple"]
continue = ""


  puts " PICK A TOPIC"
  print" ============"
  puts
  menu = [{"1": "Countries"}, {"2": "Fruits"}, {"3": "Colors"}, {"q": "Quit"}]
  puts " 1- #{menu[0].values[0]}"
  puts " 2- #{menu[1].values[0]}"
  puts " 3- #{menu[2].values[0]}"
  puts " q- #{menu[3].values[0]}"
  puts
  topic = gets.chomp.to_s.downcase

case
  when topic == "1" || topic == "countries"
  counter = 0
  until continue == "q" || counter > countryList.length

      myCountry = countryList[counter]
      myCountryCount = myCountry.length

      newString = ""
      myCountryCount.times{newString << "_"}
      puts
      print" =================\n"
      puts " GUESS THE COUNTRY"
      print" =================\n"
      puts
      printf"%15s" , "[ " + newString + " ]\n"
      puts

      until newString == myCountry
        print " Enter a letter: "
        character = gets.chomp

        myCountryArray = myCountry.chars
        newStringArray = newString.chars

        for i in 0..myCountryArray.length
            if character == myCountryArray[i]
               newStringArray[i] = character
               newString = newStringArray.join
               puts
               printf"%15s" , "[ " + newString + " ]\n"
          end
        end
        puts
        myCountryCount -= 1
      end
      puts "************************"
      puts " NICE!!YOU ARE ON FIRE "
      puts "************************"
      puts
      counter += 1
      puts "Would you like to continue? \"Y\" for yes, \"Q\" for quit"
      continue = gets.chomp.downcase
  end

  when topic == "2" || topic == "fruits"
  counter = 0
    until continue == "q" || counter > fruitList.length

      myFruit = fruitList[counter]
      myFruitCount = myFruit.length

      newString = ""
      myFruitCount.times{newString << "_"}
      puts
      print" ==================\n"
      puts "  GUESS THE FRUIT "
      print" ==================\n"
      puts
      printf"%15s","[ " + newString + " ]\n"
      puts

      until newString == myFruit
        print " Enter a letter: "
        character = gets.chomp

        myFruitArray = myFruit.chars
        newStringArray = newString.chars

        for i in 0..myFruitArray.length
          if character == myFruitArray[i]
             newStringArray[i] = character
             newString = newStringArray.join
             puts
             printf"%15s" , "[ " + newString + " ]\n"
          end
        end
        puts
        myFruitCount -= 1
      end
      puts "************************"
      puts " YOU DESERVE A FRUIT!!! "
      puts "************************"
      puts
      counter += 1
      puts "Would you like to continue? \"Y\" for yes, \"Q\" for quit"
      continue = gets.chomp.downcase
  end
#Case when colors is picked
  when topic == "3" || topic == "colors"
    counter = 0
    until continue == "q" || counter > colorList.length

        myColor = colorList[counter]
        myColorCount = myColor.length

        newString = ""
        myColorCount.times{newString << "_"}
        puts
        print" ==================  \n"
        puts "  GUESS THE COLOR "
        print" ==================\n"
        puts
        printf"%15s"," [ " + newString + " ]\n"
        puts

        until newString == myColor
          print "Enter a letter: "
          character = gets.chomp

          myColorArray = myColor.chars
          newStringArray = newString.chars

          for i in 0..myColorArray.length
            if character == myColorArray[i]
               newStringArray[i] = character
               newString = newStringArray.join
               puts
               printf"%15s","[ " + newString + " ]\n"
            end
          end
          puts
          myColorCount -= 1
        end
        puts "***********************"
        puts " DAMN! YOU THE BEST!!! "
        puts "***********************"
        puts
        counter += 1
        puts "Would you like to continue? \"Y\" for yes, \"Q\" for quit"
        continue = gets.chomp.downcase
    end
  when topic == "q" || topic == "quit"
      exit
  else
    print "Thats's not an option. Please try again!\n"
  end
