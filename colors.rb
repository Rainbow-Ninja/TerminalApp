#defined methods to call on strings to assign respective color.
class String
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def green; "\e[32m#{self}\e[0m" end
    def yellow; "\e[32m#{self}\e[0m" end
end