class ZodiacsController < ApplicationController
  def destroy

    z = Zodiac.find(params["the_id"])
    z.destroy

    redirect_to("http://localhost:3000/zodiacs")
  end


  def create_row
    # params = {"symbol"=>"cancer", "animal"=>"crab", "horoscope"=>"good day"}

    z = Zodiac.new
    z.sign = params["symbol"]
    z.creature = params["animal"]
    z.fortune = params["horoscope"]
    z.save

    redirect_to("http://localhost:3000/zodiacs")
  end

  def index
    @list_of_zodiacs = Zodiac.all
  end

  def sign
    @zodiac = Zodiac.find_by({ :sign => params["the_sign"] })
  end

  def creature
    @zodiac = Zodiac.find_by({ :creature => params["the_creature"] })
  end

  def show
    @zodiac = Zodiac.find(params["the_id"])
  end

  def new_form
  end
end
