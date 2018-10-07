//
//  ModelData.swift
//  Characters
//
//  Created by arthur takahashi on 02/09/2018.
//  Copyright © 2018 arthur takahashi. All rights reserved.
//

import UIKit

class ModelData{
    //TODO colocar todo conteudo em um JSON e adicionar o arquivo em um servidor, fazer uma chamada como  do webservice para receber as informacoes e montar de acordo com a ordem do json
    /*
     {
     "char": {
     "name": "",
     "age": "",
     "alignment": "",
     "gender": "",
     "dices": "",
     "life": "",
     "faith": "",
     "runePower": "",
     "endurance": "",
     "attunement": "",
     "job": "",
     "country": "",
     "kp": "",
     "leadership" :"",
     "runePower": "",
     "mana": "",
     "background": ""
     }
     }
     */
    var name = "";
    var icon: UIImage?;
    var age = "";
    var alignment = ""; //TODO criar um STRUCT para as tendencias
    var gender = "Male" //TODO criar um STRUCT para o genero
    var fullPicture: UIImage?;
    var dices  = "1"
    var life = "3"
    var faith = "2"
    var leadership = "4"
    var endurance = "1"
    var attunement = "2"
    var job = "Warrior" //TODO criar um STRUCT para as classes/jobs
    var country = "Caerleon" //TODO criar um struct para os paises
    var kp = "2"
    var goldCost = "5"
    var mana = "3"
    var background = "Lance was the prince of the kingdom of Almekia and was poised to inherent the throne until Zemeckis staged his coup. As his kingdom was reorganized into the Esgares Empire, he fled west and took refuge in the kingdom of Padstow to avoid suffering the same fate as his father. King Coel, the elderly ruler of Padstow, saw Lance as an inspiring young man who could lead the people through difficult times, so he abdicated and allowed Lance to take the throne. Padstow became New Almekia, and Lance resolved to avenge his father's death and reclaim his birthright. After capturing Logres and defeating the Esgares Empire, Lance can change his class to King."

    
    
    init(name: String?, country: String?, job: String?, icon: UIImage?, fullPicture: UIImage?) {
        guard let strName = name else {
            print("erro ao carregar nome")

            return
        }
        guard let strCountry = country else {
            print("erro ao carregar pais")
            
            return
        }
        guard let strJob = job else {
            print("erro ao carregar job")

            return
        }
        guard let imgIcon = icon else {
            print("erro ao carregar imagem de \(strName)")
            return
        }
        guard let imgFullPic = fullPicture else {
            print("erro ao carregar imagem cheia de \(strName)")
            return
        }
        self.name = strName
        self.country = strCountry
        self.job = strJob
        self.icon = imgIcon
        self.fullPicture = imgFullPic
    }
    
}
