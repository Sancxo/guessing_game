defmodule GuessingGame do
    def guess(a, b) when a > b, do : guess(b, a)
    # this function is only called when right parameter is higher than the left one.

    def guess(low, high) do
        guess = IO.gets("Ay, caramba ... I think you're thinking about number #{mid(low, high)}, right ? (yes/bigger/smaller)\n")
        case String.trim(guess) do
            "bigger" -> bigger(low, high)
            "smaller" -> smaller(low, high)
            "yes" -> IO.puts("I knew it !")
            _ -> 
                IO.puts("Por favor, type a correct answer : yes / bigger / smaller.")
                guess(low, high)
        end
    end

    def mid(low, high), do : div(low + high, 2) 
    # "div" make a division /w integer as a result ("rem" giv the rest of "div").

    def bigger(low, high) do
        new_low = min(high, mid(low, high) + 1)
        guess(new_low, high)
    end

    def smaller(low, high) do
        new_high = max(low, mid(low, high) - 1)
        guess(low, new_high)
    end
end