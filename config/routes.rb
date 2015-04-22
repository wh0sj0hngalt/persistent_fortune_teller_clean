Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  # PART 2: VARIABLE ROUTES
  # =======================

  get("/signs/:zebra",         { :controller => "zodiacs", :action => "sign" })

  get("/horoscope", { :controller => "zodiacs", :action => "new_form" })

  get("/process_form", { :controller => "zodiacs", :action => "add_row" })


  # get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
end









