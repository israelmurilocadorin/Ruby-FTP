require "down"
require "fileutils"
require 'net/sftp'

class Client

    @@lista = Array.new
    @@img = ""

    def self.move()
    end
    
    def self.down()
        @@img = Down.download("https://plantasdecasas.com/storage/2017/07/planta-fachada-casa-115-fr-AG.jpg") 
        aa = @@img            #,destination: "C:/Users/israe/Desktop/FTP/arquivos")
        FileUtils.mv(img.path, "C:/Users/israe/Desktop/FTP/arquivos#{img.original_filename}")
        puts @@img
    end

end

Client.down()
#Client.down()



#C:/Users/israe/Desktop/FTP/arquivos/ggg.txt
#C:/Users/israe/Downloads