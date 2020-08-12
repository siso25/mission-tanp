class PreciousdaysController < ApplicationController
  def show
  end

  def new
    @precious_person = PreciousPerson.new
    @precious_person.precious_days.build
  end

  def create
  end

  def update
  end

  def destroy
  end
end
