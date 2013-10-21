class HomeworksController < ApplicationController
  
  def input
  end

  def hello
  end

  def show_prime
    number = params[:number].to_i

    if number <= 1 || number > 100000 
      @err = "Invalid input! (input must be > 1 and <= 100000)"
      return @err

    else
      @prime = Rails.cache.read(number)

      unless @prime.nil?
        return @prime

      else
        num = number

        while num > 2
          for i in 2..num / 2
            if num % i == 0
              break

            elsif (num % i != 0) && (i == num/2)
              Rails.cache.write(number, num)
              @prime = num
              return @prime
            end
          end
          num = num - 1
        end
      end
    end
  end

  def about
    
  end
end
