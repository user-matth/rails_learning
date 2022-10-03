class Admin::ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to [:admin, @contact], notice: "Contact was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      redirect_to [:admin, @contact], notice: "Contact was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contacts.destroy
    redirect_to admin_contacts_url, notice: "Contact was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contacts = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :email, :description, :message, :status)
    end
end
