//
//  AppDelegate.swift
//  SwiftBasicTour
//
//  Created by Nitin Gupta on 13/12/14.
//  Copyright (c) 2014 Nitin Gupta. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func compareName(name: String, withString OtherName:String?)-> Bool {
        println("Hello, world")
        var myVariable = 42                               // variable (can't be nil)
        println(myVariable)
        let π = 3.1415926                                 // constant
        println(π)
        let (x, y) = (10, 20)                             // x = 10, y = 20
        println("(x, y)",(x, y))
        let explicitDouble: Double = 1_000.000_1          // 1,000.0001
        println(explicitDouble)
        let label = "some text " + String(myVariable)     // Casting
        println(label)
        let piText = "Pi = \(label)"                          // String interpolation
        println(piText)
        var optionalString: String? = "optional"          // Can be nil
        optionalString = nil
        println("optionalString  = \(optionalString)")
        
        var shoppingList = ["catfish", "water", "lemons"]
        shoppingList[1] = "bottle of water"               // update
        shoppingList.count                                // size of array (3)
        shoppingList.append("88")
        println("shoppingList \(shoppingList)")
        println(shoppingList.endIndex)
        var index = find(shoppingList, "catfish")
        var filtered = shoppingList.filter { $0 == "catfish" }  // <= returns [3]
        println("shoppingList \(filtered)")
//        for i in (0..shoppingList.count) {
//            if x[i] == 3 {
//                found = i
//            }
//        }
        
        // Dictionary
        var occupations = [
            "Malcolm": "Captain",
            "kaylee": "Mechanic"
        ]
        println(occupations)
        occupations["Jayne"] = "Public Relations"
        println(occupations)
        var emptyDictionary = Dictionary<String, Float>()
        
        // for loop (array)
        let myArray = [1, 1, 2, 3, 5]
        for value in myArray {
            if value == 1 {
                println("One!")
            } else {
                println("Not one!")
            }
        }
        
        // for loop (dictionary)
        var dict = [
            "name": "Steve Jobs",
            "title": "CEO",
            "company": "Apple"
        ]
        for (key, value) in dict {
            println("\(key): \(value)")
        }
        
        // for loop (range)
        for i in -1...1 { // [-1, 0, 1]
            println(i)
        }
        // use .. to exclude the last number
        
        // for loop (ignoring the current value of the range on each iteration of the loop)
        for _ in 1...3 {
            // Do something three times.
        }
        
        // while loop
        var i = 1
        while i < 1000 {
            i *= 2
            println(i)
        }
        
        // do-while loop
        do {
            println("hello")
        } while 1 == 2
        
        // Switch
        let vegetable = "watercress"//"red pepper"
        var vegetableComment = "NITIN";
        switch vegetable {
        case "celery":
            vegetableComment = "Add some raisins and make ants on a log."
        case "cucumber", "watercress":
            vegetableComment = "That would make a good tea sandwich."
        case let x where x.hasSuffix("pepper"):
            vegetableComment = "Is it a spicy \(x)?"
        default: // required (in order to cover all possible input)
            vegetableComment = "Everything tastes good in soup."
        }
        println("\(vegetableComment)")
        // Switch to validate plist content
        let city:Dictionary<String, AnyObject> = [
            "name" : "Qingdao",
            "population" : 2_721_000,
            "abbr" : "QD"
        ]
        switch (city["name"], city["population"], city["abbr"]) {
        case (.Some(let cityName as String),
            .Some(let pop as NSNumber),
            .Some(let abbr as NSString))
            where abbr.length == 2:
            println("City Name: \(cityName) | Abbr.:\(abbr) Population: \(pop)")
        default:
            println("Not a valid city")
        }

        
        // Array slicing
        var fibList: Array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 5]
//        fibList[4..6] // [3, 5]. Note: the end range value is exclusive
//        fibList[0..fibList.endIndex] // all except last item
//        // Subscripting returns the Slice type, instead of the Array type.
//        // You may need to cast it to Array in order to satisfy the type checker
//        Array(fibList[0..4])
//        
//        // Variants of creating an array. All three are equivalent.
//        var emptyArray1 = String[]()
//        var emptyArray2: String[] = []
        
        var emptyArray1 = [String]()
        var emptyArray2: [String] = []

//        println(\(emptyArray1))
        println(emptyArray2.capacity)
        return false;
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return compareName("Nitin", withString: "Gupta")
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

