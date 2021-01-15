class Project

    attr_reader :title, :all_backers

    def initialize(title)

        @title = title

        @all_backers = []

    end

    def add_backer(backer)

        new_project = ProjectBacker.new(self, backer)

        self.all_backers.push(backer)

    end

    def backers
       
        self.all_backers

    end

end