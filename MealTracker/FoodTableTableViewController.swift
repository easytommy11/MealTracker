//
//  FoodTableTableViewController.swift
//  MealTracker
//
//  Created by Tomiwa Babalola on 3/23/22.
//

import UIKit

class FoodTableTableViewController: UITableViewController {
    
    var meals:[Meal]{
        let firstBreakfastFood = Food(name: "Eggs", description: "Scrambled with bacon in a frying pan.")
        let secondBreakfastFood = Food(name: "Hashbrowns", description: "Cut potatoes then fry in oil until brown")
        let thridBreakfastFood = Food(name: "Bacon", description: "Key food in all breakfast meals.")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thridBreakfastFood])
        
        let firstLunchFood = Food(name: "Sandwich", description: "Easy to fix. Always delicous")
        let secondLunchFood = Food(name: "Chips", description: "Put a few in the sandwich for enhanced flavor")
        let thirdLuchFood = Food(name: "Apple", description: "An apple a day keeps the doctor away.")
        let lunch = Meal(name:"Lunch", food: [firstLunchFood, secondLunchFood, thirdLuchFood ])
        
        let firstDinnerFood = Food(name: "Steak", description: "Everyone needs some good protein")
        let SecondDinnerFood = Food(name: "Potatoes", description: "Great addition to go along with steak")
        let thirdDinnerFood = Food(name: "Brocolli", description: "Always finish out the food pyramid")
        let dinner = Meal(name:"Dinner", food: [firstDinnerFood, SecondDinnerFood, thirdDinnerFood ])
        
        return [breakfast, lunch, dinner]
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
       
        return cell
    }
    

    


    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
