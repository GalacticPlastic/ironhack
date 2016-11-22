class ContactsController < ApplicationController
	def index
		@contacts = Contact.order(name: :desc)
		render "index"
	end
	def show
		@new_contact = Contact.find(params[:id])
		render :show
	end
	def new
		@new_contact = Contact.new
		render 'new'
	end
	def create
		@new_contact = Contact.new(entry_params)
		@new_contact.save
		redirect_to contact_path(@new_contact)
	end
	def edit
		@new_contact = Contact.find(params[:id])
		render :edit
	end
	def update
		@new_contact = Contact.find(params[:id])
		@new_contact = Contact.new(entry_params)
		if @new_contact.update(entry_params)
			redirect_to contact_path(@new_contact)
		else
			render :edit
		end
	end
	def destroy
		@new_contact = Contact.find(params[:id])
		@new_contact.destroy()
		redirect_to contact_path(@new_contact)
	end
	private
	def entry_params
		params.require(:contact).permit(:name, :address, :phone, :email)
	end
end