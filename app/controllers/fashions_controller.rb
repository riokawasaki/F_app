# app/controllers/fashions_controller.rb
class FashionsController < ApplicationController
  def index
    # 過去データを登録日の降順で表示
    @fashions = Fashion.order(recorded_on: :desc)
  end

  def new
    @fashion = Fashion.new
  end

  def create
    @fashion = Fashion.new(fashion_params)
    @fashion.recorded_on ||= Date.today  # 空なら今日の日付をセット
  
    if @fashion.save
      redirect_to fashions_path, notice: "コーデを登録しました！"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def fashion_params
    params.require(:fashion).permit(:weather, :temperature, :recorded_on, :image)
  end
end
