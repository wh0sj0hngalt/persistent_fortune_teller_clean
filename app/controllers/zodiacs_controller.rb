class ZodiacsController < ApplicationController

  def sign
    @zodiac = Zodiac.find_by({ :sign => params[:zebra] })
  end
end
