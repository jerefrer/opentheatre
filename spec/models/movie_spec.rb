require 'spec_helper'

describe Movie do

  describe 'FriendlyId slug' do

    it 'should work' do
      movie = FactoryGirl.create(:movie, :title => 'Awesome Movie !')
      Movie.find('awesome-movie').should == movie
    end

  end

end