require_relative 'connection.rb'
require_relative 'helper.rb'
require_relative 'client.rb'

client = Client.new(Connection.new.connection)
helper = Helper.new

menu_options = ['Criar', 'Listar', 'Remover', 'Download', 'Criar pasta', 'Sair']

puts "Bem vindo!"
helper.space(2)

while true do
    opcao = helper.print_menu(menu_options)
    case opcao
        when '1'
            client.create(helper.get_varible("Digite o nome do arquivo que deseja transferir: "))
            puts "Finalizada com sucesso !"
            helper.space(2)
        when '2'
            puts client.list 
            helper.space(2)
        when '3'
            client.remove(helper.get_varible("Digite o nome do arquivo que deseja apagar: "))
            helper.space(2)
        when '4'
            client.download(helper.get_varible("Digite o nome do arquivo que deseja baixar: "))
            helper.space(2)
        when '5'
            client.create_dir(helper.get_varible("Digite o nome da pasta: "))
            helper.space(2)
        when '6'
            client.close
            puts "Bye Bye..."
            return
    else
        "Opção inválida"
    end
end