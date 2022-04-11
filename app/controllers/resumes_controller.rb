class ResumesController < ApplicationController
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

    private
        def clean_params
            params.require(:resume).permit(:title, :content, :status)
        end
end
