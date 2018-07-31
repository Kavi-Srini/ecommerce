class ApplicationController < ActionController::Base
	before_action :categories, :brands

	before_action :configure_permitted_parameters, if: :devise_controller?

	def categories
		@categories = Category.order(:name)
	end

	def brands
	  @brands = Product.pluck(:brand).sort.uniq
	end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name])
  end
end
