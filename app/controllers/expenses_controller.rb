class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = current_user.expenses
  end

  def expense_form
  end

  def create
    expenses_params[:expenses].each do |expense_params|
      current_user.expenses.create(expense_params.permit(:amount, :description))
    end

    redirect_to expenses_path, notice: "Expenses saved successfully."
  end

  private

  def expenses_params
    params.permit(expenses: [ :amount, :description ])
  end
end
