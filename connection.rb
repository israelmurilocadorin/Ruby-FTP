require 'net/ftp'
require 'dotenv/load'

class Connection
    @connection = nil
    
    def initialize
        @connection = Net::FTP.new(ENV['HOST'], ENV['USER'], ENV['PASSWORD'])
    end

    def connection
        return @connection
    end
end