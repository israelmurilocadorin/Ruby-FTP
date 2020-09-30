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
        space(1)
        value = get_varible("Digite a opção desejada: ")
        space(1)
        return value
    end
    
    def feedback_user(feedback_success)
        if(feedback_success)
            puts "Sucesso" 
        else
            puts "Erro"
        end
    end
    
end


