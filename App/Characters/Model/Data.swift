//
//  Data.swift
//  Characters
//
//  Created by arthur takahashi on 02/09/2018.
//  Copyright © 2018 arthur takahashi. All rights reserved.
//

import UIKit

class Data {
    static func getChars() -> [ModelData] {
        var data : [ModelData] = []
        //var pathImage = Bundle.main.path(forResource: "Lance", ofType: "jpg")
        let icones = Bundle.main.paths(forResourcesOfType: "jpg", inDirectory: "Images/Icons")
        let fullPictures = Bundle.main.paths(forResourcesOfType: "jpg", inDirectory: "Images/FullSize")
        data.append(ModelData(
            name: "Lance",
            country: "New Almekia",
            job: "King",
            icon: UIImage(named: icones[0]),
            fullPicture: UIImage(named: fullPictures[4])
            )
        )
        
        data.append(ModelData(name: "Vaynard", country: "Norgard", job: "Lord",icon: UIImage(named: icones[1]), fullPicture: UIImage(named: fullPictures[8])))
        data.append(ModelData(name: "Brusom", country: "New Almekia", job: "Samurai",icon: UIImage(named: fullPictures[0]), fullPicture: UIImage(named: fullPictures[0])))
        data.append(ModelData(name: "Coel", country: "New Almekia", job: "Cardinal",icon: UIImage(named: fullPictures[2]), fullPicture: UIImage(named: fullPictures[2])))
        data.append(ModelData(name: "Gereint", country: "New Almekia", job: "Shogun",icon: UIImage(named: fullPictures[3]), fullPicture: UIImage(named: fullPictures[3])))
        data.append(ModelData(name: "Liguel", country: "New Almekia", job: "Scout",icon: UIImage(named: fullPictures[5]), fullPicture: UIImage(named: fullPictures[5])))
        data.append(ModelData(name: "Loufal", country: "New Almekia", job: "Fighter",icon: UIImage(named: fullPictures[6]), fullPicture: UIImage(named: fullPictures[6])))
        data.append(ModelData(name: "Meleagant", country: "New Almekia", job: "Avenger",icon: UIImage(named: fullPictures[7]), fullPicture: UIImage(named: fullPictures[7])))
        data.append(ModelData(name: "Carlota", country: "New Almekia", job: "Enchantress",icon: UIImage(named: fullPictures[1]), fullPicture: UIImage(named: fullPictures[1])))
        
        return data;
    }
}
