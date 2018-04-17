class ContactController < ApplicationController
  def index
    @contact = Contact.last
  end
end
