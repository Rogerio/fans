class ReportersController < ApplicationController

  def index
    @reporters = Reporter.all
    respond_with @reporters
  end

  def show
    @reporter = Reporter.find(params[:id])
    respond_with @reporter
  end

  def new
    @reporter = Reporter.new
    respond_with @reporter
  end

  # GET /reporters/1/edit
  def edit
    @reporter = Reporter.find(params[:id])
  end

  def create
    @reporter = Reporter.new(params[:reporter])
    flash[:notice] = "Reporter successfully created!" if @reporter.save
    respond_with @reporter, :location => [:admin, :reporters]
  end

  def update
    @reporter = Reporter.find(params[:id])
    flash[:notice] = "Reporter successfully updated!" if @reporter.update_attibutes(params[:reporter])
    respond_with @reporter, :location => [:admin, :reporters]
  end

  def destroy
    @reporter = Reporter.find(params[:id])
    @reporter.destroy
    respond_with @reporter, :location => [:admin, :reporters]
  end
end
