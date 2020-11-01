
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        project = ProjectBacker.new(project, self)
    end

    def backed_projects
        my_projects = ProjectBacker.all.select do |projects|
            projects.backer == self
        end
        my_projects.map do |projects|
            projects.project
        end
    end

end