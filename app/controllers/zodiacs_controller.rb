class ZodiacsController < ApplicationController

  def new_form
  end

  def create_row
    @symbol=params["symbol"]
    @animal=params["animal"]
    @horoscope=params["horoscope"]
  end

end
