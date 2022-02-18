class PortfoliosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :find_portfolio, only: [:show, :edit, :update, :destroy]
  def index
    @portfolios = Portfolio.all
  end

  def show
  end
  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolio_path(@portfolio)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @portfolio.update!(portfolio_params)
    redirect_to portfolio_path(@portfolio)
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path
  end
  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :body, :main_image, :thumb_image)
  end
  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
