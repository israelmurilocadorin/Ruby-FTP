class Client
    
    def self.delete(diretorio)
        
        if(File.exist?(diretorio))
            File.delete(diretorio)
            puts "> Deletado com sucesso <"
        else
            puts "> Arquivo inexistente <"
        end
    end

end

Client.delete("C:/Users/israe/Desktop/FTP/arquivos/ggg.txt")