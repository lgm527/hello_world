class SuppliersController < ApplicationController
before_action :find_supplier, only: [:show, :edit, :update]

    def new
        @supplier = Supplier.new
    end

    def create
        @supplier = Supplier.new(supplier_params)
        if @supplier.valid?
            @supplier.save
            redirect_to @supplier
        else
            render :new
        end
    end

    def index
        @suppliers = Supplier.all
    end

    def show
        # @supplier = Supplier.find(params[:id])
    end

    def edit
        # @supplier = Supplier.find(params[:id])
    end
    
    def update
        # @supplier = Supplier.find(params[:id])
        if @supplier.valid?
            @supplier.update(supplier_params)
            redirect_to @supplier
        else
            render :edit
        end
    end

    private

    def supplier_params
        params.require(:supplier).permit(:name, :ein, :address_1, :address_2, :city, :state, :phone_number)
    end

    def find_supplier
        @supplier = Supplier.find(params[:id])
    end
end
