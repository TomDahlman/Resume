class ResumesController < ApplicationController
  # GET /experiences
  # GET /experiences.json
  
	def index
    @experiences = Experience.all
    @duties = Duty.all
    @educations = Education.all
    @skills = Skill.all
	end

end