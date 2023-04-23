class AppointmentsController < ApplicationController

  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @pet = Pet.find(params[:pet_id])
    @appointment.pet = @pet
    @appointment.save

    redirect_to pet_path(@pet)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:reason, :doctor_id)
  end

end
