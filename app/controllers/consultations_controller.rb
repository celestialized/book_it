class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:show]

  # GET /consultations
  # GET /consultations.json
  def index
    @consultations = Consultation.all
  end

  # GET /consultations/1
  # GET /consultations/1.json
  def show
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end
end
