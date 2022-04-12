class ResumesController < ApplicationController
    before_action :find_resume, only: [:edit, :update, :show, :destory]

    def index
        @resumes =Resume.all
    end    

    def new
        @resume = Resume.new
    end

    def create
        @resume = Resume.new(clean_params)

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

end
    private
        def clean_params
            params.require(:resume).permit(:title, :content, :status)
        end

        def find_resume
            @resume = Resume.find(params[:id])
        end

        
