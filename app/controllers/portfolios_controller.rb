class PortfoliosController < ApplicationController
  before_action :set_portfolio, except: %i[index new create]
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_path, notice: 'Portfolio created successfully!'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path, notice: 'Portfolio updated sucessfully!'
    else
      render 'edit'
    end
  end

  private

  def portfolio_params
    params.required(:portfolio).permit(:title, :subtitle, :body)
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
end
