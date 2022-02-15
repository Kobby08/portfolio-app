module SetDefaultPages
  extend ActiveSupport::Concern

  included { before_action :set_page_defaults }

  private

  def set_page_defaults
    @page_title = 'Nana Quam | FullStack Developer'
    @seo_keywords = 'Nana Quam'
  end
end
