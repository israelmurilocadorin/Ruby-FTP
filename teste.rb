require 'fileutils'

class Client

    def self.create(path)
        dir = File.dirname(path)
        
        if(File.directory?(dir))
            File.new(path, 'w')
            puts "> Arquivo criado com sucesso! <"
        else
            puts "> Diretório não encontrado <"
        end
    end

    def self.list(path)
        filenames = Dir.entries(path)
        puts "> Lista de arquivos <"
        puts filenames
        ######## > C:/Users/israe/Desktop/Ruby-FTP/arquivos
    end
    
    def self.update(current_name, new_name) 
        folder_path = "C:/Users/israe/Desktop/Ruby-FTP/arquivos"

        from_file = folder_path + "/" + current_name
        new_file = current_name + ".txt"

        File.rename(current_name, new_name)
    end

    def self.delete(path)
        if(File.exist?(path))
            File.delete(path)
            puts "> Deletado com sucesso <"
        else
            puts "> Arquivo inexistente <"
        end
    end
    
end

#Client.create('C:\Users\israe\Desktop\FTP\arquivos')

#novaClass = Client.new('C:\Users\israe\Desktop\FTP\arquivos')
Client.update("")


#https://code.likeagirl.io/socket-programming-in-ruby-f714131336fd

#File.open('p014constructs.rb', 'r') do |f1|  
#while line = f1.gets  
#    puts line  
#  end  
#end  