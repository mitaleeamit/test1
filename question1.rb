#---------
# name: NumberGuess.rb
#
#----------------
 
class Screen

 def cls
   puts ("\n" * 30)
   puts "\a"
 end

 def pause
    STDIN.gets
 end

end

class Game
attr_accessor :gameCount, :noOfGuesses
    def initialize
    #question 1
    @gameCount=0
    @noOfGuesses=0
    end

    def display_greeting
        Console_Screen.cls
        print "\t\t Welcome to the Ruby Number Guessing Game!" +
        "\n\n\n\n\n\n\n\n\n\n\n\n\ Press Enter to " + 
        "continue."

        Console_Screen.pause
    end

    def display_instruction
        Console_Screen.cls
        puts "Instruction:\n\n"

        puts "This game randomly generates a number from 1 to 1000 and "
        puts "challaenges you to identify it in 10 guesses "
    end

    def generate_number
        # Make the game more challenging by increasing the range of numbers to between 1 and 1000
        return randomNo = 1 + rand(1000)  #question 2
    end

    def play_game
        @gameCount+=1
        number = generate_number # perfect guess no 
        #puts " The number is " + number.to_s   #  question 5
        tmpno=0     # Solution of question 4

        loop do
            Console_Screen.cls
            print "\nEnter your guess and press the enter key: "
            @noOfGuesses+=1
            reply = STDIN.gets
            reply.chop!
            reply = reply.to_i
            tmpno+=1
            # if reply < 1 or reply > 1000 then
            #   redo # redo the ciurrent iteration of the loop
            # end

            if tmpno == 10 then     #  question 4 Modify it so that players are allowed a maximum of 10 guesses, after which the game is declared lost.
                print "you lost you have done 10 guesses! Press Enter to continue."
                Console_Screen.pause
                break
            end

            if reply == number then
                Console_Screen.cls
                print "You have guessed the number! Press Enter to continue."
                Console_Screen.pause
                break
            elsif reply < number then
                Console_Screen.cls
                print "Your guess is too low! Press enter to continue."
                Console_Screen.pause
            elsif reply > number then
                Console_Screen.cls
                print "Your guess is too high! Press enter to continue."
                Console_Screen.pause
            elsif reply.to_s.match(/\D/) then       # question 3 special characters.
                Console_Screen.cls
                print "Your guess is not a valid reply. Please enter digit between 1-1000! Press enter to continue."
                Console_Screen.pause
            elsif reply < 1 or reply > 1000 then    # question 3 numbers greater than 1000
                puts "Your guess is negative or more than 1000. Please Enter between 1 to 1000.Press Enter to continue."
                Console_Screen.pause
            end

        end
            
    end

    def display_credits
        Console_Screen.cls
        puts "\t\t\Thanks you for playing the number game!!"
    end

    $noRight = 0

    Console_Screen = Screen.new

    SQ = Game.new

    SQ.display_greeting

    answer = ""

    loop do
        Console_Screen.cls

        print "Are you ready to play the Ruby Number Guessing Game? (y/n): "

        answer = STDIN.gets

        answer.chop!

        break if answer == "y" || answer == "n"
    end

    if answer == "n"

        Console_Screen.cls

        puts "Perhaps anoher time.\n\n"

    else
        SQ.display_instruction

        loop do
            SQ.play_game

            
            Console_Screen.cls
            # Modify the game so that it keeps track of the number of games played as well as the average number of guesses made per game.
            puts " Total no of Game are "+ SQ.gameCount.to_s # Solution of question 1
            puts " Total no of guess are "+ SQ.noOfGuesses.to_s  # Solution of question 1
            avg=SQ.noOfGuesses.to_i/SQ.gameCount.to_i               # Solution of question 1
            puts " Average of guesses made per game are " + avg.to_s    # Solution of question 1

            print "Would you like to play again? (y/n): "

            playAgain = STDIN.gets
            playAgain.chop!

            break if playAgain == "n"
        end

        SQ.display_credits

    end

end