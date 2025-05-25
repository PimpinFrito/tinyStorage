class FileController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @files = @user.files
  end

  def upload_page
  end

  def upload_file
    @user = current_user

    custom_key = "users/#{@user.id}/#{SecureRandom.uuid}-#{params[:file].original_filename}"

    # @user.files.attach(params[:file], key: "test")
    @user.files.attach(
      io: params[:file].tempfile,
      filename: params[:file].original_filename,
      content_type: params[:file].content_type,
      key: custom_key
    )
    puts params[:file]
    @user.files.each do | file |
      puts file
    end
    redirect_to "/list"
  end

  def delete
    begin
      file = current_user.files.find(file_params)
      file.destroy
      flash.notice = "File deleted"
    rescue ActiveRecord::RecordNotFound
      flash.notice = "File not found"
    end
    redirect_to "/list"
  end

  def file_params
    params.expect(:id)
  end

end
