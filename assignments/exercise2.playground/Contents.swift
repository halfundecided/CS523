/*
 CS-523
 Mijeong Ban
 I pledge my honor that I have abided by the Stevens Honor System
 */

import UIKit
/*
 func run(weather: Int, schedule: Int, likeRunning : Int) -> String {
 
 if likeRunning >= 4 {
 if schedule > 2 {
 return "Not going for a Run"
 } else {
 if weather > 45 && weather < 90 {
 return "Going for a Run"
 } else {
 return "Not Going for a Run"
 }
 }
 } else {
 return "Not going for a Run"
 }
 }
 
 print(run(weather:22, schedule:3, likeRunning:9))
 */

var weather = 50
var schedule = 1
var likeRunning = 4

if likeRunning >= 4 {
    if schedule > 2 {
        print("Not going for a Run")
    } else {
        if weather > 45 && weather < 90 {
            print("Going for a Run")
        } else {
            print("Not Going for a Run")
        }
    }
} else {
    print("Not going for a Run")
}

