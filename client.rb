class Client
    @connection_ftp = nil

    def initialize(connection_ftp)
        @connection_ftp = connection_ftp
    end

    def create(name)
        @connection_ftp.put name, name
    end

    def remove(name)
        @connection_ftp.delete name
    end

    def list
        return @connection_ftp.list('*')
    end

    def download(name)
        @connection_ftp.get name, "./download/#{name}"
    end

    def close
        @connection_ftp.close
        puts 'Close connection'
    end

end
