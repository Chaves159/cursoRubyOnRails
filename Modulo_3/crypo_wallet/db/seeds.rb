# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas... ")
spinner.auto_spin
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
spinner.success("Concluido!")
