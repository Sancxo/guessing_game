defmodule Challenge1 do
    @author "Simon"
    def ask() do
        name = IO.gets("Hi honey ! What's your name ?\n") |> String.trim()

        case name do
            @author -> 
                IO.puts("Hop hop hop ... Me name's #{@author} too !\nAre you me-self ?")
            "" -> 
                IO.puts("...\nThis is not a name, it's just an empty value ...\nAre you an emtpy person ?")
            _ -> 
                IO.puts("Greetings #{name} !")
        end
    end
end