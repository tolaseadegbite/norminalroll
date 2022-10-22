class StaffsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_staff, only: %i[show edit update destroy]

    def index
        @staffs = Staff.all.order(created_at: :asc)
        # @staffs = Staff.where(title: Staff.titles[params[:title].to_sym]).order("created_at DESC") if params[:title].present?
    end

    def new
        @staff = Staff.new
    end

    def show
        
    end

    def create
        @staff = current_user.staffs.new(staff_params)
        if @staff.save
            redirect_to @staff
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        redirect_to staffs_path, alert: 'You are not authorized' unless @staff.user == current_user
    end

    def update
        if @staff.user == current_user
            if @staff.update(staff_params)
                redirect_to @staff, notice: "Staff record successfully updated"
            else
                render :edit, status: :unprocessable_entity
            end
        end
    end

    def destroy
        if @staff.user == current_user
            @staff.destroy
            redirect_to staffs_url, notice: "Staff record successfully deleted"
        else
            redirect_to staffs_path, alert: "You are not authorized"
        end
    end

    def doctor
        @staffs = Staff.doctor
        render :index
    end
    def mr
        @staffs = Staff.mr
        render :index
    end
    def mrs
        @staffs = Staff.mrs
        render :index
    end

    def clwphd
        @staffs = Staff.Chief_lecturer_with_PhD
        render :index
    end
    def clwmsc
        @staffs = Staff.Chief_lecturer_with_MSc
        render :index
    end
    def slwphd
        @staffs = Staff.Senior_lecturer_with_PhD
        render :index
    end
    def slwmsc
        @staffs = Staff.Senior_lecturer_with_MSc
        render :index
    end

    def pending
        @staffs = Staff.pending
        render :index
    end
    def retired
        @staffs = Staff.retired
        render :index
    end
    def active
        @staffs = Staff.active
        render :index
    end

    def male
        @staffs = Staff.male
        render :index
    end
    def female
        @staffs = Staff.female
        render :index
    end

    private

        def find_staff
            @staff = Staff.find(params[:id])
        end

        def staff_params
            params.require(:staff).permit(:title, :surname, :other_names, :sex, :state, :lga, :designation, :qwd, :prof_qualifications, :conpcass, :staff_status, :dob, :dofa, :dopa, :status_of_app, :file_no, :remarks, qualification_ids: [])
        end
end