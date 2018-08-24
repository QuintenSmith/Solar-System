//
//  PlanetViewController.swift
//  Solar System
//
//  Created by Quinten Smith on 8/21/18.
//  Copyright © 2018 Quinten Smith. All rights reserved.
//

import UIKit

class PlanetViewController: UIViewController {
    
    
    
    @IBOutlet weak var planetNameLabel: UILabel!
    
    @IBOutlet weak var planetImageView: UIImageView!
    
    @IBOutlet weak var diameterLabel: UILabel!
    
    @IBOutlet weak var daylength: UILabel!
    
    @IBOutlet weak var millionsKMsFromSun: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    
    func updateView() {
        guard let unwrappedPlanet = planet else{return}
        planetNameLabel.text = unwrappedPlanet.name
        diameterLabel.text = "\(unwrappedPlanet.diameter)"
        daylength.text = "\(unwrappedPlanet.dayLength)"
        millionsKMsFromSun.text = "\(unwrappedPlanet.millionKMsFromSun)"
        planetImageView.image = UIImage(named: unwrappedPlanet.imageName)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
