class HomeworksController < ApplicationController
  
  def input
  end

  def hello
  end

  def show_prime
    num = params[:number].to_i

    if num <= 1 
      @err = "The inputed number must be bigger than 1!"
      return @err
    end

    while num > 2
      for i in 2..num / 2
        if num % i == 0
          break

        elsif (num % i != 0) && (i == num/2) 
          @prime = num
          return @prime
        end
      end
      num = num - 1
    end
  end
end
