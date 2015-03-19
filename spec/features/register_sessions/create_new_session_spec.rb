require 'spec_helper'
feature 'open register' do
  scenario 'new sesion is created when user opens register' do
    visit '/register_sessions/'
    expect(page.body).to eq "{\"id\":1}"
  end
end
