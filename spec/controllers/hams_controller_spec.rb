require 'spec_helper'

describe HamsController do
  describe '#eggs' do
    it 'should not run the second filter or unless block' do
      get :eggs, id: 1
      response.should redirect_to(hams_path)
      session[:second].should be_nil
      session[:second_unless].should be_nil
    end
  end
end
