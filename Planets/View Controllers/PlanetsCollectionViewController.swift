//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Alex Shillingford on 6/13/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlanetCell"

class PlanetsCollectionViewController: UICollectionViewController {
    
    let planetController = PlanetController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PlanetCollectionViewCell
    
        // Configure the cell
        let planet = planetController.planets[indexPath.item]
        cell.imageView.image = planet.image
        cell.nameLabel.text = planet.name
    
        return cell
    }
}
