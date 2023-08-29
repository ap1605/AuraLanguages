require_relative 'assesmentSolved'
class UnTest
    def unit_test1(link)
        result = Language.new.languages(link)
        known = "Ruby with 313023 megabytes of code.\nPuppet with 101249 megabytes of code.\nShell with 846 megabytes of code.\nTotal gigabytes of code : 415"
        ret = (known == result) ? "unit test passed" : "unit test failed"
        puts ret
        return ret
    end
end




