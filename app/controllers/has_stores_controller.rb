class HasStoresController < ApplicationController
  before_action :set_has_store, only: %i[ show edit update destroy ]

  # GET /has_stores or /has_stores.json
  def index
    @has_stores = HasStore.all
  end

  # GET /has_stores/1 or /has_stores/1.json
  def show
  end

  # GET /has_stores/new
  def new
    @has_store = HasStore.new
  end

  # GET /has_stores/1/edit
  def edit
  end

  # POST /has_stores or /has_stores.json
  def create
    @has_store = HasStore.new(has_store_params)

    respond_to do |format|
      if @has_store.save
        format.html { redirect_to @has_store, notice: "Has store was successfully created." }
        format.json { render :show, status: :created, location: @has_store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @has_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /has_stores/1 or /has_stores/1.json
  def update
    respond_to do |format|
      if @has_store.update(has_store_params)
        format.html { redirect_to @has_store, notice: "Has store was successfully updated." }
        format.json { render :show, status: :ok, location: @has_store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @has_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /has_stores/1 or /has_stores/1.json
  def destroy
    @has_store.destroy
    respond_to do |format|
      format.html { redirect_to has_stores_url, notice: "Has store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_store
      @has_store = HasStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def has_store_params
      params.require(:has_store).permit(:Product, :Store)
    end
end
