class BobsController < ApplicationController
  before_action :set_bob, only: [:show, :edit, :update, :destroy]

  # GET /bobs
  # GET /bobs.json
  def index
    @bobs = Bob.all
  end

  # GET /bobs/1
  # GET /bobs/1.json
  def show
  end

  # GET /bobs/new
  def new
    @bob = Bob.new
  end

  # GET /bobs/1/edit
  def edit
  end

  # POST /bobs
  # POST /bobs.json
  def create
    @bob = Bob.new(bob_params)

    respond_to do |format|
      if @bob.save
        format.html { redirect_to @bob, notice: 'Bob was successfully created.' }
        format.json { render :show, status: :created, location: @bob }
      else
        format.html { render :new }
        format.json { render json: @bob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bobs/1
  # PATCH/PUT /bobs/1.json
  def update
    respond_to do |format|
      if @bob.update(bob_params)
        format.html { redirect_to @bob, notice: 'Bob was successfully updated.' }
        format.json { render :show, status: :ok, location: @bob }
      else
        format.html { render :edit }
        format.json { render json: @bob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bobs/1
  # DELETE /bobs/1.json
  def destroy
    @bob.destroy
    respond_to do |format|
      format.html { redirect_to bobs_url, notice: 'Bob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bob
      @bob = Bob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bob_params
      params[:bob]
    end
end
