class ExamplesController < ApplicationController
  def new
    @example = Example.new
  end

  def create
    @example = Example.new(example_params)

    if @example.save
      redirect_to @example, notice: 'Example created successfully.'
    else
      flash.now[:alert] = 'Error creating the example.'
      render :new
    end
  end

  private

  def example_params
    params.require(:example).permit(:name, :email, :status)
  end

end
