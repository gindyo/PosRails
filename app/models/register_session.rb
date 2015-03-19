class RegisterSession < ActiveRecord::Base
  attr_accessor :employee_id, :finalization_id
  def self.open_session_for_employee employee_id
    session = select{|s| s.employee_id == employee_id && s.finalization_id == null}.first
    if session == nil
      session = create({employee_id: employee_id})
    end
    session
  end

  def jsonify
    as_json(except: [:created_at, :updated_at]).to_json
  end
end
