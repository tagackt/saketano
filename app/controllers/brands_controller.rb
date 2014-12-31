class BrandsController < ApplicationController
  before_action :authenticate_user!

  # TODO: impressionの作成画面に当たるので、 impression にアクションがある方が良いのでは？
  def index
  end

  def ajax_brand_list
    @brands = Brand.includes(:brewery).where('name_kana like :query', query: "#{params[:inc_search]}%").order(:name_kana)
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brands_url, notice: 'お酒の銘柄（ブランド）を登録しました。'
    else
      render :new
    end
  end

  private
    def brand_params
      params.require(:brand).permit(:name, :name_kana, :brewery_id, :updated_seq, :updated_by, :updated_at)
    end

end
