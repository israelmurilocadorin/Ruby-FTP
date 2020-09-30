require_relative 'helper.rb'

class Client
    @connection_ftp = nil

    def initialize(connection_ftp)
        @connection_ftp = connection_ftp
        @helper = Helper.new
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

    def create_dir(name)
        name_folder = name != "" 
        if(name_folder)   
            @connection_ftp.mkdir name
        end
        @helper.feedback_user(name_folder)
    end
    
    def close
        @connection_ftp.close
        puts 'Close connection'
    end

end
