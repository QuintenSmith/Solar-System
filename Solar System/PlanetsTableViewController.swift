//
//  PlanetsTableViewController.swift
//  Solar System
//
//  Created by Quinten Smith on 8/21/18.
//  Copyright © 2018 Quinten Smith. All rights reserved.
//

import UIKit

class PlanetsTableViewController: UITableViewController {
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        return cell
    }


   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Check if its the right Segue
        if segue.identifier == "toPlanetDetail" {
        
            //We are going to get our destination ViewController from the segue
            let destinationVC = segue.destination as? PlanetViewController
        
            //I want to know where on the tableView my User selected and get back the indexPath for that call
            guard let indexPathOfCellThatWasSelected = tableView.indexPathForSelectedRow else { return }
            
            // Get back the specific day the user tapped on from our data source(days) use the indexPath to get there
            let planet = PlanetController.planets[indexPathOfCellThatWasSelected.row]
        
            //Set our landing pod to get result needed
            destinationVC?.planet = planet
            
            
        }
    }
}
