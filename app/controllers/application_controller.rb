class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_user_status
  
  def check_user_status
#    logger.info current_user
#    logger.info current_therapist
    if current_therapist && !(params[:controller]=~ /^devise/) && !(params[:controller]=~/^home/)
      case current_therapist.status
        when "pending"
          redirect_to :controller=>"therapists", :action=>"extrareg"
        when "deleted"
          sign_out :therapist
          redirect_to root_path
        else 
           #redirect_to root_path
      end
    end
    logger.info(params)
#    if current_user && !(params[:controller] =~ /^devise/) && !(params[:controller]=~/^home/)&& params[:action] != "profile" && params[:action] !="extrareg" && params[:action] !="isusernameunique" && params[:action]!="extraregupdate" # && params[:action] != "destroy" && params[:action] !='edit'
#      case current_user.status
#      when "pending" 
#        redirect_to :controller=>"therapists", :action=>"extrareg"
#       when "deleted"
#         sign_out :user
#         redirect_to root_path
#        #else 
#          #new user in existing company
#          
#        #end
#        #redirect_to root_path                
#      end
#    end
  end
  
end
