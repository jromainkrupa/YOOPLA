class SitemapsController < ApplicationController

  layout :false

  def index
    respond_to do |format|
      format.xml
    end
  end

  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end

end
