class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = find_patient
  end

  private
  def find_patient
    Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
