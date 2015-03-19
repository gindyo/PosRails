class RegisterSessionsController < ApplicationController
  def index
    register_session = RegisterSession.open_session_for_employee(1)
    render json: register_session.jsonify
  end
  def update
    if params[:id] != nil
      register_session = RegisterSession.find(params[:id])
    else
      register_session = RegisterSession.create(params)
    end
    render json: register_session.jsonify
  end
  
  
end
