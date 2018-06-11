use "random"
use "time"

actor Main
  new create(env: Env) =>
    env.out.print("Hello world")
    let rand : Random = Rand(Time.millis(), Time.millis())
    let dice : Dice = Dice(rand)
    var rolls : U32 = 0
    repeat
        env.out.print(dice(3, 6).string())
        rolls = rolls + 1
    until rolls == 6 end

