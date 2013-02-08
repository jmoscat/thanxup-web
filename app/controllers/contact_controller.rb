class ContactController < ApplicationController
   def new
      @contact_form = Question.new
    end

    def create
      begin
        @contact_form = Question.new(params[:contact_form])
        @contact_form.request = request
        if @contact_form.deliver
          flash.now[:notice] = 'Thank you for your message!'
        else
          render :new
        end
      rescue ScriptError
        flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
      end
    end
end
