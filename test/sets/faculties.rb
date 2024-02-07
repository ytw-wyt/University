module Contexts
  module Faculties

    def create_faculties
      @profq = FactoryBot.create(:faculty, department: @is)
      @emily = FactoryBot.create(:faculty, first_name: "Emily", last_name: "Cooper", department:@cs, rank: "Associate Professor", active: true)
      @leo = FactoryBot.create(:faculty, first_name: "Leo", last_name: "Cooper", department: @is, rank: "Associate Professor", active: false)
    end
    
    def destroy_faculties
      @profq.delete
      @emily.delete
      @leo.delete
    end
  end
end