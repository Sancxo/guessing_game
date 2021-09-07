defmodule Challenge1 do
    def ask() do
        name = IO.gets("Hi honey ! What's your name ?\n")
        name = String.trim(name)

        case name do
            "Simon" -> IO.puts("Hop hop hop ... Me name's #{name} too !\nAre you myself ?")
            "" -> IO.puts("...\nThis is not a name, it's just an empty value ...")
            _ -> IO.puts("Greetings #{name} !")
        end
    end
end