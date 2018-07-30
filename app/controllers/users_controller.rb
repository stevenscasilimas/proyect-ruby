class UsersController < ApplicationController
    def index
        @users=User.all
    end
    def new
        @users=User.new
    end
    def create
        @users=User.new(user_params)
        if @users.save
            redirect_to users_path
        else
            render :new
        end
    end
    def edit
        @users=User.find(params[:id])
    end
    def update
        @users=User.find(params[:id])
        if @users.update(user_params)
            redirect_to users_path
        else
            render :edit 
        end 
    end
    def delete
        @users=User.find(params[:id])
        @users.destroy
        redirect_to users_path
    end
    private
    def user_params
        params.require(:user).permit(:name,:surname,:document,:telefono)
    end  
end
