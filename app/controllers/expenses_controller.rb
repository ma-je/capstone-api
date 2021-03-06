# frozen_string_literal: true

class ExpensesController < ProtectedController
  before_action :set_expense, only: [:update, :destroy]
  before_action :set_user_expenses, only: [:show]

  # GET /expenses
  def index
    #@expenses = Expense.all #edit to only show expenses of currently logged in user
    @expenses = Expense.where(:user_id => ["user_id = ? ", current_user.id])
    render json: @expenses
  end

  # GET /expenses/1
  def show
    @expense = current_user.expenses.find(params[:id])
    render json: @expense
  end

  # POST /expenses
  def create
    # @expense = Expense.new(expense_params)
    @expense = current_user.expenses.build(expense_params)
    if @expense.save
      render json: @expense, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  def update
    @expense = current_user.expenses.find(params[:id])
    if @expense.update(expense_params)
      render json: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  def destroy
    @expenses = current_user.expenses.find(params[:id])
    @expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def set_user_expenses
      @expense = Expense.where(:user_id => params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_params
      params.require(:expense).permit(:kind, :dueDate, :amount, :house_id)
    end
end
