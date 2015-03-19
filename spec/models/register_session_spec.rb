require 'rails_helper'
RSpec.describe RegisterSession, type: :model do
  it 'opens existing session for employee' do
    FactoryGirl.create(:register_session, {employee_id: 2})
    session = RegisterSession.open_session_for_employee 2 
    expect(session.employee_id).to eq 2
  end
end
