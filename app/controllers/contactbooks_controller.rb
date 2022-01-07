class ContactbooksController < ApplicationController
  #Method to view all contacts in our phonebook app
  def index
    contactbooks = Contactbook.all
    render json: Contactbook.all
  end

  #Show a particular contact
  def show
    contactbook = Contactbook.find(params[:id])
    render json: contactbook
  end


  #Method to create a new contact in our phonebook app
  def create
    contactbook = Contactbook.create(contactbook_params)
    render json: contactbook
  end

  private

  def contactbook_params
    params.require(:contactbook).permit(:name, :phone_number)
  end

  #Our update method
  def update
    contactbook = Contactbook.find(params[:id])
    contactbook.update(contactbook_params)
    render json: contactbook
  end

  #Method to delete a contact from our phonebook app
  def destroy
    Contactbook.destroy(params[:id])
    render json: contactbook
  end

end
