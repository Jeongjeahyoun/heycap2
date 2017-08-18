require 'mailgun' 
class HomeController < ApplicationController
  def index
    @zzim_list2 = Diet.all
  end
  
  def diet_program
  end
  
  def main

    
  end
  
  def zzim
      @zzim_list = Diet.new
      @zzim_list.diet_title = params[:name]
      @zzim_list.user_id = current_user.id
      @zzim_list.save
       
       redirect_to '/index'

  end
  
  def delete
    
    @zzim_what = Diet.find(params[:id])
    @zzim_what.destroy
    
    redirect_to '/index'
  end  
  
end
