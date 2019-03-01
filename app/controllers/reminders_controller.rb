# frozen_string_literal: true

class RemindersController < ApplicationController # :nodoc:
  before_action :authenticate_user!

  def index
    @reminders = current_user.reminder.all
  end

  def new
  end

  def create
    title = params['title']
    message = params['message']
    datetime = params['reminder']
    format_datetime = get_datetime(datetime)
    current_user.reminder.build(title: title, message: message,
                                datetime: format_datetime).save
    redirect_to action: 'index'
  end

  def show
  end

  def update
  end

  def edit
  end

  def delete
    reminder = current_user.reminder.find_by(id: params[:id])
    reminder&.destroy
    redirect_to reminders_index_path
  end

  private

  def get_datetime(datetime)
    str_datetime = datetime['dt(1i)'] + '-' + datetime['dt(2i)'] + '-' +
                   datetime['dt(3i)'] + ' ' + datetime['dt(4i)'] + ':' +
                   datetime['dt(5i)']
    DateTime.parse(str_datetime)
  end
end
