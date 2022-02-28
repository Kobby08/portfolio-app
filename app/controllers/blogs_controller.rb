class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy toggle_status]
  layout 'blog'
  access(
    all: %i[show index],
    user: {
      except: %i[new create edit update destroy],
    },
    site_admin: :all,
  )

  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.all
    @page_title = 'My Blogs'
  end

  # GET /blogs/1 or /blogs/1.json
  def show
    @page_title = @blog.title
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit; end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html do
          redirect_to blog_url(@blog), notice: 'Blog was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html do
          redirect_to blog_url(@blog), notice: 'Blog was successfully updated.'
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy

    respond_to do |format|
      format.html do
        redirect_to blogs_url, notice: 'Blog was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    redirect_to blogs_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.friendly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
