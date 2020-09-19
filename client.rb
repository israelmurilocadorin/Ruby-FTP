require_relative 'connection.rb'

class Client

    @connection_ftp = nil

    def initialize(connection_ftp)
        #connection_ftp.login
        @connection_ftp = connection_ftp
    end

    def create
        puts 'create'
    end

    def remove
        puts 'remove'
    end

    def list
        puts @connection_ftp.list('*') 
    end

    def download
        puts 'download'
    end

    def close
        @connection_ftp.close
        puts 'Close connection'
    end

end

client = Client.new(Connection.new.connection)
puts "Bem vindo!"
puts "Para sair aperte crtl+c [*]"
puts "\n\n\n"

while true do
    puts "Digite a opção desejada: "
    puts "[1]Criar" 
    puts "[2]??"
    puts "[3]??"
    puts "[4]Deletar"
    opcao = gets.chomp
    
    case opcao
        when '1'
            client.create
        when '2'
            puts "opcao 2"
        when '3'
            puts "opcao 3"
        when '4'
            client.remove
    else
        "Opção inválida"
    end
end
#ftp.list()