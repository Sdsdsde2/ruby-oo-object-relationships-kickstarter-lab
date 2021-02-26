require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = []
        ProjectBacker.all.select {|project| projects << project.project if project.backer == self}
        projects
    end
end