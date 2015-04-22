class ZodiacsController < ApplicationController

  def new_form

  end


  def add_row
    # params = {"the_sign"=>"hi", "the_creature"=>"there", "the_fortune"=>""}

    z = Zodiac.new

    z.sign = params[:the_sign].downcase
    z.creature = params[:the_creature].downcase
    z.fortune = params[:the_fortune]

    z.save


    redirect_to("http://localhost:3000/signs/#{z.sign}")
  end

  def sign
    @zodiac = Zodiac.find_by({ :sign => params[:zebra] })
  end
end
