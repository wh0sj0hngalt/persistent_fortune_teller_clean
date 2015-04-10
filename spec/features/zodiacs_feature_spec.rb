require 'rails_helper'

RSpec.describe 'Zodiacs feature', type: :feature do

  context 'Part 2' do
    describe "GET /signs/:the_sign" do
      it "displays the content from :the_sign params", points: 5 do
        visit '/signs/aries'
        expect(page).to have_content('aries')
      end

      it "displays the sign and fortune for each Zodiac", points: 5 do
        Zodiac.all.each do |zodiac|
          visit "/signs/#{zodiac.sign}"
          expect(page).to have_content(zodiac.sign)
          expect(page).to have_content(zodiac.fortune)
        end
      end
    end

    describe "GET /creature/:the_creature" do
      it "displays the content from :the_creature params", points: 5 do
        visit '/creatures/ram'
        expect(page).to have_content('ram')
      end

      it "displays the creature and fortune for each Zodiac", points: 5 do
        Zodiac.all.each do |zodiac|
          visit "/creatures/#{zodiac.creature}"
          expect(page).to have_content(zodiac.creature)
          expect(page).to have_content(zodiac.fortune)
        end
      end
    end
  end
end
