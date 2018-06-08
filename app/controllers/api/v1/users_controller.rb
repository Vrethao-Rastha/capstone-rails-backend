module Api
  module V1
    class UsersController < ApplicationController
      # POST /register
  def register
    @user = User.create(user_params)
   if @user.save
    response = { message: 'User created successfully'}
    render json: response, status: :created
   else
    render json: @user.errors, status: :bad
   end
  end

  def login
    authenticate params[:email], params[:password]
  end
  def test
    render json: {
          message: 'You have passed authentication and authorization test'
        }
  end

  private

  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)

    if command.success?
      render json: {
        access_token: command.result,
        user: User.find_by_email(email),
        message: 'Login Successful'
      }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
   end

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
    end
  end
end
