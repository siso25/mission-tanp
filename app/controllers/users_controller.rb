class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @gender = @user.gender.nil? ? "未登録" : japanese_gender_name(@user.gender)
    @birthday = @user.birthday.nil? ? "未登録" : @user.birthday.strftime("%Y年%-m月%-d日")
    @postcode = @user.postcode.nil? ? "未登録" : @user.postcode
    @address = @user.address.nil? ? "未登録" : @user.address
    @phone_number = @user.phone_number.nil? ? "未登録" : @user.phone_number
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,:birthday,:email,:gender,:password, :password_confirmation)
    end

    def japanese_gender_name(gender)
      case gender
      when 0 then
        "男性"
      when 1 then
        "女性"
      when 2 then
        "その他"
      else
        "未登録"
      end
    end
end
