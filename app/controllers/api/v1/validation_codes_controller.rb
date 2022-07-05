class Api::V1::ValidationCodesController < ApplicationController
  def create
    code = SecureRandom.random_number.to_s[2..7]
    validation_codes = ValidationCode.new email: params[:email], kind: 'sign_in', code: code
    if validation_codes.save
      head 200
    else
      render json: { error: validation_codes.errors }
    end
  end
end
