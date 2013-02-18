class WazzupsController < ApplicationController
 
  def new
    @wazzup = Wazzup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wazzup }
    end
  end


  # POST /wazzups
  # POST /wazzups.json
  def create
    @wazzup = Wazzup.new(params[:wazzup])

    respond_to do |format|
      if @wazzup.save
        QuestionMailer.question_email(@wazzup).deliver
        format.html { redirect_to root_path, notice: 'Your question has been sent!' }

      else
        format.html { render action: "new" }
        format.json { render json: @wazzup.errors, status: :unprocessable_entity }
      end
    end
  end

end
