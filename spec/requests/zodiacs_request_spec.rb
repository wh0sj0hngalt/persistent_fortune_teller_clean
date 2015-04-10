require 'rails_helper'

RSpec.describe 'Zodiacs requests', type: :request do

  context 'Part 1' do
    describe "GET /zodiacs/aries" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/aries'
        expect(response).to render_template(:ram)
      end
    end

    describe "GET /zodiacs/taurus" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/taurus'
        expect(response).to render_template(:bull)
      end
    end

    describe "GET /zodiacs/gemini" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/gemini'
        expect(response).to render_template(:twins)
      end
    end

    describe "GET /zodiacs/cancer" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/cancer'
        expect(response).to render_template(:crab)
      end
    end

    describe "GET /zodiacs/leo" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/leo'
        expect(response).to render_template(:lion)
      end
    end

    describe "GET /zodiacs/virgo" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/virgo'
        expect(response).to render_template(:maiden)
      end
    end

    describe "GET /zodiacs/libra" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/libra'
        expect(response).to render_template(:scales)
      end
    end

    describe "GET /zodiacs/scorpio" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/scorpio'
        expect(response).to render_template(:scorpion)
      end
    end

    describe "GET /zodiacs/sagittarius" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/sagittarius'
        expect(response).to render_template(:archer)
      end
    end

    describe "GET /zodiacs/capricorn" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/capricorn'
        expect(response).to render_template(:goat)
      end
    end

    describe "GET /zodiacs/aquarius" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/aquarius'
        expect(response).to render_template(:waterbearer)
      end
    end

    describe "GET /zodiacs/pisces" do
      it "renders the correct template", points: 5 do
        get '/zodiacs/pisces'
        expect(response).to render_template(:fish)
      end
    end
  end

  context 'Part 2' do
    describe "GET /signs/:the_sign" do
      it "renders the correct template", points: 5 do
        Zodiac.all.each do |zodiac|
          get "/signs/#{zodiac.sign}"
          expect(response).to render_template(:sign)
        end
      end
    end

    describe "GET /creature/:the_creature" do
      it "renders the correct template", points: 5 do
        Zodiac.all.each do |zodiac|
          get "/creatures/#{zodiac.creature}"
          expect(response).to render_template(:creature)
        end
      end
    end
  end
end
