class EstatesController < ApplicationController
  autocomplete :estate, :country,:full => true
  autocomplete :estate, :city,:full => true
  autocomplete :estate, :district,:full => true
  autocomplete :estate, :street,:full => true
  before_action :set_estate, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy, :my_estates]

  def index  
    @search = Estate.search(params[:q])
    @estates = @search.result(distinct: true)
    @estates = @estates.paginate(page: params[:page], per_page: 5)


    @countries = []
    Estate.all.each do |e|
      @countries << e.country
      @countries.uniq!
      @countries.sort!
    end
  end

  def new
    @estate = current_user.estates.build()
  end

  def create
    @estate = current_user.estates.build(estates_params)
    if @estate.save
      redirect_to estate_path(@estate.id)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @estate.update_attributes(estates_params)
      redirect_to estate_path(@estate.id)
    else
      render 'edit'
    end
  end

  def destroy
    if @estate.destroy
      redirect_to my_estates_path
    end
  end

  def my_estates
    @estates = Estate.where(user_id: current_user.id)
    @estates = @estates.paginate(page: params[:page], per_page: 5)
  end

  private

  def estates_params
    params.fetch(:estate,{}).permit(:title, :country, :city, :district, :street, :house,:flat, :area, :price, :user_id, :photo)
  end  

  def set_estate
    @estate = Estate.find(params[:id])
  end
end
