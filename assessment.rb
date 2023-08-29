fname = 'file.txt'

array = []
IO.foreach("file.txt") {|x| array.push(x.split) }
p array

size = array.length-1

progNames = []

progSize = []

progPerc = []


for x in 0..size do
    progNames.push(array[x][2])
end

for x in 0..size do
    progSize.push(array[x][1])
end

for x in 0..size do
    progPerc.push(array[x][0])
end

write = []

for x in 0..size do
    str1 = progNames[x]
    str2 = progSize[x]
    write.push(str1 + ' with ' + str2 + ' megabytes of code.')
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

File.write("result.txt", write.join("\n"), mode: "a")
