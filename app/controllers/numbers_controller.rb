class NumbersController < ApplicationController

  def random
      # params = {"num"=>100445}

      @minimum=params["min"].to_i
      @maximum=params["max"].to_i
      @the_number=rand(@minimum..@maximum)
      #@the_number=rand(params["num"].to_i)
  end

end
