class ResumesController < ApplicationController
    before_action :find_resume, only: [:show ,:edit, :update,:destory ]
    # before_action :authenticate_user,expect:[:index, :show]
    # before_action :find_my_resume, expect:[:edit, :update,:destory ]
    

    def index
        @resumes =Resume.all
    end    

    def new
        @resume = Resume.new
    end

    def create
        # @resume = Resume.new(clean_params)
        # @resume.user_id = current_user.id
        
        @resume = current_user.resumes.new(clean_params)

        if @resume.save
            redirect_to resumes_path, notice: "新增成功"
        else
            render :new
        end
    end

    def show
        
    end

    def destroy
        
        @resume.destroy
        redirect_to resumes_path, notice: "已刪除"
    end

    def edit
        
    end

    def update
        
        if @resume.update(clean_params)
            redirect_to resumes_path, notice: "更新成功"
        else
            render :edit
        end
    end

    def my
    end

end
    private
        def clean_params
            params.require(:resume).permit(:title, :content, :status)
        end

        def find_resume
            @resume = Resume.find(params[:id])
        end

        def find_my_resume
            @resume = current_user.resumes.find(params[:id])
        end

        
