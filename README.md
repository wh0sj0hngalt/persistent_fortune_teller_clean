## Fortune Teller

### Setup

First **fork** and *then* clone this repository. Open up the entire folder in Sublime.

`cd` into the folder you just cloned and run the following commands:

    bundle install

    rails server

If it worked, you should be able to navigate to [http://localhost:3000](http://localhost:3000) and see something there. If it didn't work, make sure you don't have any old servers running in other tabs or windows.

## Part 1: Warm-up

I want to be able to visit URLs like the following:

 - [http://localhost:3000/5/10](http://localhost:3000/5/10)
 - [http://localhost:3000/50/75](http://localhost:3000/50/75)
 - [http://localhost:3000/1000/1010](http://localhost:3000/1000/1010)

When I do, I want to see a random number that falls between the two numbers I typed in to the URL.

Add a single, dynamic RCAV to make that work.

## Part 2: Create our first database table

Let's add a table to permanently store zodiacs.

The command to generate Ruby instructions for how to create the table we want is:

```bash
rails generate migration zodiac sign:string creature:string fortune:text
```

This will write instructions to create a table called "zodiacs" with three columns: "sign" (storing a short string), "creature" (storing a short string), and "fortune" (storing a long string).

Then, to execute the instructions:

```bash
rake db:migrate
```

Next, we have to make sure that we have a Ruby class that will represent our new table. In `app/models/zodiac.rb`, replace everything with:

```ruby
class Zodiac < ActiveRecord::Base
end
```

We can now go into the Rails Console (which is just like IRB, but better) and play around with our super-powered class:

```bash
~/code/dsgn425/persistent_fortune_teller $ rails c
Loading development environment (Rails 4.2.1)
2.2.1 :001 > Zodiac.count
   (1.0ms)  SELECT COUNT(*) FROM "zodiacs"
 => 0 
2.2.1 :002 > z = Zodiac.new
 => #<Zodiac id: nil, sign: nil, creature: nil, fortune: nil> 
2.2.1 :003 > z.sign = "aries"
 => "aries" 
2.2.1 :004 > z.creature = "ram"
 => "ram" 
2.2.1 :005 > z.fortune = "You will have a super day!"
 => "You will have a super day!" 
2.2.1 :006 > z.save
   (0.1ms)  begin transaction
  SQL (0.7ms)  INSERT INTO "zodiacs" ("sign", "creature", "fortune") VALUES (?, ?, ?)  [["sign", "aries"], ["creature", "ram"], ["fortune", "You will have a super day!"]]
   (0.8ms)  commit transaction
 => true 
2.2.1 :007 > Zodiac.count
   (0.1ms)  SELECT COUNT(*) FROM "zodiacs"
 => 1 
2.2.1 :008 > a = Zodiac.find_by({ :creature => "ram" })
```

Relevant cheatsheet: [CRUD with Ruby](https://gist.github.com/rbetina/bb6336ead63080be2ff4)


#### Dynamic routes

There's a route at the bottom of `routes.rb` for `/signs/:the_sign`. Uncomment it and make it function. In other words, try going to [http://localhost:3000/signs/whatever](http://localhost:3000/signs/whatever) in Chrome and connect dots until some HTML to shows up.

This time, make it retrieve the relevant info from our new database table. Any of the commands that you used in Rails Console can also be used in any of your controller actions.
