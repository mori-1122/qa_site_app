class QuestionsController < ApplicationController
  # 質問一覧
  def index
    @questions = Question.all
    # p @questions
  end

  # 詳細
  def show
    # p params[:id]
    @question = Question.find(params[:id])
  end

  # 作成
  def new
    @question = Question.new
  end

  #   質問登録
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render "new", status: :unprocessable_entity
    end
  end


  # 　編集
  def edit
  end

  #   更新
  def update
  end

  def destroy
  end

   private
   def question_params
      params.require(:question).permit(:title, :name, :content)
   end
end

