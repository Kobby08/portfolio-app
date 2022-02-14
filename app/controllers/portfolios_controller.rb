class PortfoliosController < ApplicationController
  before_action :set_portfolio, except: %i[index new create angular]
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular = Portfolio.angular
  end

  def show; end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
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

  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_path, notice: 'Portfolio removed!'
  end

  private

  def portfolio_params
    params
      .required(:portfolio)
      .permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
end
