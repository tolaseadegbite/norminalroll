class QualificationsController < ApplicationController
    def create
      qualification = Qualification.new(qualification_params)
      if qualification.valid?
        qualification.save
        render json: qualification
      end
    end
  
    private
  
    def qualification_params
      params.require(:qualification).permit(:name)
    end 
end
