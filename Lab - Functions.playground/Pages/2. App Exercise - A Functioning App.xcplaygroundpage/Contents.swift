/*:
 ## App Exercise - A Functioning App
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var steps = 0
func incrementSteps (value: Int)-> Int{
    let newStep = value + 1
    print(newStep)
    return newStep
}
steps=incrementSteps(value: steps)
steps=incrementSteps(value: steps)
steps=incrementSteps(value: steps)
/*:
 Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout. Remember, you can convert numbers using the appropriate Int or Double initializer.
 */
let goal = 10000
func progressUpdate(value: Int){
    let progress=((Double(value)/Double(goal))*100)
    if(progress<10){
        print("You're off to a good start")
    }
    else if(progress>=10 && progress<50 ){
        print("You're almost halfway there!")
    }
    else if(progress>=50 && progress<90){
        print("You're over halfway there!")
    }
    else if(progress>=90 && progress < 100){
        print("You're almost there!")
    }
    else{
        print("You beat your goal!")
    }
}
progressUpdate(value: 4000)
progressUpdate(value: 5000)
progressUpdate(value: 8800)
progressUpdate(value: 9000)
progressUpdate(value: 10000)
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
