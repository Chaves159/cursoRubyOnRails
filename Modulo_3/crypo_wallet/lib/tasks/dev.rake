namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
      if Rails.env.development?
        show_spinner("Criando db...") do
           %x(db:create)
        end

        show_spinner("Migrando db...") do
          %x(db:migrate)
          end
        show_spinner("Semeando db") do
          %x(db:seed)
        end
      else
        puts "Você não esta em ambiente de desenvolvimento!!"
      end
    end
  def show_spinner(msg_start, msg_end = "Concluido!")
    spinner =TTY::Spinner.new("[:spinner]#{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
