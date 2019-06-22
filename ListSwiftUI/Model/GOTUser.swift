//
//  GOTUser.swift
//  ListSwiftUI
//
//  Created by Giuseppe Sapienza on 19/06/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct GOTUser: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let alias: String
    let description: String
    let image: UIImage
}


#if DEBUG
extension GOTUser {
    static func mockup() -> [GOTUser] {
        return [
            GOTUser(name: "Jon Snow", alias: "The White Wolf", description: "Jon is introduced in 1996's A Game of Thrones as the illegitimate son of Ned Stark, the honorable lord of Winterfell, an ancient fortress in the North of the fictional continent of Westeros. Knowing his prospects are limited by his status, Jon joins the Night's Watch, who guard the far northern borders from the wildlings who live beyond The Wall.", image: #imageLiteral(resourceName: "jon")),
            
            GOTUser(name: "Sansa Stark", alias: "Lady of Winterfell", description: "Sansa Stark is the second child and elder daughter of Eddard Stark and Catelyn Stark. She was born and raised in Winterfell, until leaving with her father and sister at the beginning of the series. She was raised with a younger sister Arya Stark, two younger brothers Rickon Stark and Bran Stark, as well as an older brother Robb Stark, and an older illegitimate half-brother, Jon Snow", image: #imageLiteral(resourceName: "sansa")),
            
            GOTUser(name: "Daenerys Targaryen", alias: "Protector of the Seven", description: "Introduced in 1996's A Game of Thrones, Daenerys is one of the last two surviving members (along with her older brother, Viserys) of the House Targaryen, who, until fourteen years before the events of the first novel, had ruled Westeros from the Iron Throne for nearly three hundred years.", image: #imageLiteral(resourceName: "daenerys")),
            
            GOTUser(name: "Tyrion Lannister", alias: "Lord of Casterly Rock", description: "Tyrion is a dwarf and member of House Lannister of Casterly Rock, one of the wealthiest and most powerful families in the fictional continent of Westeros. In the story, Tyrion uses his status as a Lannister to mitigate the prejudice he has received all of his life, even from his own family, especially his father and sister.", image: #imageLiteral(resourceName: "tyrion"))
        ]
    }
}
#endif
