class VoltraceMainController < ApplicationController
  def home
  end

  def about
  end

  def contact_us
    @contact = Contact.new(params[:contact])
  end

  def dreamjump_privacy_policy
  end

  def magnets_privacy_policy
  end

  def textbookcheck_privacy_policy
  end
end
