# code here!

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster
        @roster
    end


    def add_student(student_name,grade)

        if roster[grade].instance_of?Array
            roster[grade] << student_name
        
        else
            roster[grade] = [] << student_name    
        end
    end

    def grade(grade)
        roster[grade]

    end

    def sort


        result = {}
        roster.keys.sort.each {|grade|
        #     if result[grade].instance_of?Array
        # result[grade] << roster[grade].sort
             result[grade]  = roster[grade].sort
            # end
        }
        result
    end
end