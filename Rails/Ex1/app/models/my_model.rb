class MyModel < ApplicationRecord
    def inc
        firstNumRecord = MyModel.find(1)
        firstNumRecord.num = firstNumRecord.num + 1
        firstNumRecord.save
        puts "done increasing num."
    end
end
