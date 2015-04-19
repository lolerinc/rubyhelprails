class ClassGsController < ApplicationController
  before_action :set_class_g, only: [:show, :edit, :update, :destroy]

  # GET /class_gs
  # GET /class_gs.json
  def index
    @class_gs = ClassG.all
  end

  # GET /class_gs/1
  # GET /class_gs/1.json
  def show
  end

  # GET /class_gs/new
  def new
    @class_g = ClassG.new
  end

  # GET /class_gs/1/edit
  def edit
  end

  # POST /class_gs
  # POST /class_gs.json
  def create
    @class_g = ClassG.new(class_g_params)

    respond_to do |format|
      if @class_g.save
        format.html { redirect_to @class_g, notice: 'Class g was successfully created.' }
        format.json { render :show, status: :created, location: @class_g }
      else
        format.html { render :new }
        format.json { render json: @class_g.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_gs/1
  # PATCH/PUT /class_gs/1.json
  def update
    respond_to do |format|
      if @class_g.update(class_g_params)
        format.html { redirect_to @class_g, notice: 'Class g was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_g }
      else
        format.html { render :edit }
        format.json { render json: @class_g.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_gs/1
  # DELETE /class_gs/1.json
  def destroy
    @class_g.destroy
    respond_to do |format|
      format.html { redirect_to class_gs_url, notice: 'Class g was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_g
      @class_g = ClassG.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_g_params
      params.require(:class_g).permit(:col1, :col2)
    end
end
