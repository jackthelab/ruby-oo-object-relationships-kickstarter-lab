require 'pry'
class Backer

    attr_reader :name#, :projects

    def initialize(name)
        @name = name

        # @projects = []
    end

    def back_project(project)

        new_project = ProjectBacker.new(project, self)

        #self.projects.push(project)

    end

    # def backed_projects

    #     self.projects

    # end

    def backed_projects
        backed_projects = []
        ProjectBacker.all.each do |item|
            if item.backer.name == self.name
                backed_projects.push(item.project)
            end
        end

        backed_projects
    end
end