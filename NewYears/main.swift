//
//  main.swift
//  NewYears
//
//  Created by Brian Blanco on 1/6/16.
//  Copyright © 2016 Brian Blanco. All rights reserved.
//

import Foundation

// User Input
func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding: NSUTF8StringEncoding) as! String
}



// User Game States
enum States {
    
    case room, window,  room_cellPhoneTime, room_cellPhoneFacebook
}

var myState = States.room



func Update() {
    if myState == States.room {
        room()
    } else if myState == States.room_cellPhoneTime {
        roomTime()
    }
}

func Start() {
    myState = States.room
    Update()
}

func room() {
    print("You've just woken up from the craziest new years party..you have the worst hangover ever...\n\n" + "Press D to check the time or F to check Facebook")
    let userInput = input()
    let d = "d"
    if userInput == d {
        print("okay")
    }
}

func roomTime() {
    let date = NSDate()
    let formatter = NSDateFormatter()
    formatter.timeStyle = .ShortStyle
    formatter.stringFromDate(date)
    print("You check your phone and it's \(date)..")
}

print("Please enter your name")

var userName = input()


print ("Okay great your name is \(userName) Let's get started...")

print("===================================================================================")

Start()










