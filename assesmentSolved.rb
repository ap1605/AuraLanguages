require 'rugged'
require 'linguist'

class Language 
    def languages(link)
        repo = Rugged::Repository.new(link)
        project=Linguist::Repository.new(repo,repo.head.target_id)

        array = project.languages.to_a

        size = array.length-1

        progNames = []

        progSize = []


        for x in 0..size do
            progNames.push(array[x][0])
        end

        for x in 0..size do
            progSize.push(array[x][1].to_s)
        end


        write = []

        for x in 0..size do
            str1 = progNames[x]
            str2 = progSize[x]
            str3 = str1 + ' with ' + str2 + ' megabytes of code.'
            write.push(str3)
        end

        total = 0
        sizeOfNums = progSize.length-1

        for x in 0..sizeOfNums do
            n = progSize[x].to_i
            total = total + n
        end

        total = total / 1000
        stotal = total.to_s
        write.push('Total gigabytes of code : ' + stotal)
        write = write.join("\n")
        File.write("result.txt", write, mode: "a")
        p write
        return write
    end
end

