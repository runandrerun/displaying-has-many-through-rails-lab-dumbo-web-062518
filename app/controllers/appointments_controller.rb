class AppointmentsController < ApplicationController
  def show
    @appointment = find_appointment
  end

  private
  def find_appointment
    Appointment.find(params[:id])
  end
end
