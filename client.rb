class Client

    #lista = Array.new
    @@lista = Array.new
    @@pop = "pop"
    
    #constructor
    def initialize(path)
        @path = path
    end

    def create()
        #out_file = File.new("osssssd.txt", "w")#Create text file (empty "w")
        puts @path
        puts @@pop
        @@lista = 
        
        #@@lista.each do |items|
        #    puts items
        #end

    end

    def self.list(diretorio)
        filenames = Dir.entries(diretorio)
        puts "> Lista de arquivos <"
        puts filenames
    end
    
    def self.update() 
        nome_atual = ""
        nome_novo = ""
        
        puts "Digite o nome atual do arquivo que deseja modificar: "
        nome_atual = gets
        #Needs to be done
        #Search name in the array
        puts "Digite o novo nome desejado: "
        nome_novo = gets

        File.rename("arc.txt", "arquivo.txt")
    end

    def self.delete(diretorio)
        
        #if (File.Exists(fileName))  
        #    File.Delete(fileName);    
        #end

        if(File.exist?(diretorio))
            File.delete(diretorio)
            puts "> Deletado com sucesso <"
        else
            puts "> Arquivo inexistente <"
        end
    end
    
end

#Client.create('C:\Users\israe\Desktop\FTP\arquivos')

novaClass = Client.new('C:\Users\israe\Desktop\FTP\arquivos')
novaClass.create()