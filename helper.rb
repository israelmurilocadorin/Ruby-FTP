class Helper

    def space(num)
        for i in 1..num
            puts "\n"
        end
    end

    def get_varible(str)
        puts str
        name = gets.chomp
        return name
    end

    def print_menu(arr)
        arr.each_with_index do |item, index| 
            puts "[#{index.to_i+1}]#{item}"
        end

        value = get_varible("Digite a opção desejada: ")
        space(2)
        return value
    end

end


