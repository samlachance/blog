class QsosController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit]
  def index
    @qsos = Qso.all.order(id: :desc)
  end

  def new
    @qso = Qso.new
  end

  def create
    @qso = current_user.qsos.build(qso_params)

    if @qso.save
      redirect_to '/ham'
    else
      render 'edit'
    end
  end

  private
    def qso_params
      params.require(:qso).permit(:date, :de, :band, :mode, :country, :op)
    end
end
