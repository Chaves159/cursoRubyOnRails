namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
      if Rails.env.development?
        show_spinner("Criando db..."){%x(db:create)}

        show_spinner("Migrando db..."){ %x(db:migrate)}

        show_spinner("Semeando db") {%x(db:seed)}

        %x(rails dev:add_coins)
        %x(rails dev:add_mining_types)
      else
        puts "Você não esta em ambiente de desenvolvimento!!"
      end
  end
  desc "Cadastra as moedas"
  task add_coins: :environment do

    show_spinner("Cadastrando Moedas... ")
    coins =
        [
            {
                description: "Bitcoin",
                acronym: "BTC",
                url_image: "https://img2.gratispng.com/20180517/rbq/kisspng-bitcoin-cryptocurrency-exchange-digital-currency-t-5afdf7b0771a30.4144674615265934564879.jpg"
            },
            {
                description: "Ethereum",
                acronym: "ETH",
                url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/471px-Ethereum_logo_2014.svg.png"
            },
            {
                description: "Dash",
                acronym: "DASH",
                url_image: "https://image.shutterstock.com/image-illustration/raster-illustration-dash-crypto-currency-260nw-1009072462.jpg"
            }
        ]
    coins.each do |coin|
      Coin.find_or_create_by!(coin)
    end
  end
  desc "Cadastra os tipos de Mineração"
    task add_mining_types: :environment do
      show_spinner("Cadastrando Tipos de Mineração")
      mining_types = [
          {description: "Proof of Work", acronym: "PoW"},
          {description: "Proof of Stake", acronym: "PoS"},
          {description: "Proof of Capacity", acronym: "PoC"}
      ]
      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)

      end
    end

  def show_spinner(msg_start, msg_end = "Concluido!")
    spinner =TTY::Spinner.new("[:spinner]#{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
