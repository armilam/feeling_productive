class GoogleSessionsController < Clearance::SessionsController

  def create
    sign_in(google_user) do |status|
      if status.success?
        redirect_back_or url_after_create
      end
    end
  end

  private

  def google_user
    google_user_params = params.require(:google_session).permit(:email, :google_user_id)

    @user = User.find_by(google_user_id: google_user_params[:google_user_id])

    if @user.blank?
      @user = User.find_by(email: google_user_params[:email])
      @user.update(google_user_id: google_user_params[:google_user_id]) if @user.present?
    end

    if @user.blank?
      @user = User.create(email: google_user_params[:email], google_user_id: google_user_params[:google_user_id])
    end

    @user
  end
end
