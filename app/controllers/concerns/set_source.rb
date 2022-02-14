module SetSource
  extend ActiveSupport::Concern

  included { before_action :set_source }

  private

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
