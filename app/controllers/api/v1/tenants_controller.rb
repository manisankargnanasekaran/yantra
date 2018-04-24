module Api
  module V1 
    class TenantsController < ApplicationController
      before_action :set_tenant, only: [:show, :edit, :update, :destroy]

      # GET /tenants
      # GET /tenants.json
      def index
        @tenants = Tenant.all
      end

      # GET /tenants/1
      # GET /tenants/1.json
      def show
      end

      # GET /tenants/new
      def new
        @tenant = Tenant.new
      end

      # GET /tenants/1/edit
      def edit
      end

      # POST /tenants
      # POST /tenants.json
      def create
        @tenant = Tenant.new(tenant_params)

        respond_to do |format|
          if @tenant.save
            format.html { redirect_to @tenant, notice: 'Tenant was successfully created.' }
            format.json { render :show, status: :created, location: @tenant }
          else
            format.html { render :new }
            format.json { render json: @tenant.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /tenants/1
      # PATCH/PUT /tenants/1.json
      def update
        respond_to do |format|
          if @tenant.update(tenant_params)
            format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
            format.json { render :show, status: :ok, location: @tenant }
          else
            format.html { render :edit }
            format.json { render json: @tenant.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /tenants/1
      # DELETE /tenants/1.json
      def destroy
        @tenant.destroy
        respond_to do |format|
          format.html { redirect_to tenants_url, notice: 'Tenant was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_tenant
          @tenant = Tenant.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def tenant_params
          params.require(:tenant).permit(:tenant_name, :email, :password, :is_active, :deleted_at, addresses_attributes: [:id, :address_line1, :address_line2, :address_line3, :city, :state, :country, :postal_code], contacts_attributes: [:id, :email, :phone_no1, :phone_no2, :fax, :social_network])#:address_id, :contact_id)
        end
    end
  end
end