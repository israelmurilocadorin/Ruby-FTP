require 'net/ftp'
require 'dotenv/load'

class Connection
    @connection = nil
    def initialize
        #@connection = FTP.new
        # Descomentra a linha de baixo \/ e comenter apagar a linha de cima /\
        @connection = Net::FTP.new(ENV['HOST'], ENV['USER'], ENV['PASSWORD'])
    end

    def connection
        return @connection
    end
end