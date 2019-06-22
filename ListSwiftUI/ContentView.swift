//
//  ContentView.swift
//  ListSwiftUI
//
//  Created by Giuseppe Sapienza on 19/06/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var array: [GOTUser] = []

    var body: some View {
        NavigationView {
            List(array) { user in
                NavigationButton(destination: DetailView(user: user)) {
                    self.row(data: user)
                }
            }
            
            .navigationBarTitle(Text("Home"))
        }
    }
    
    fileprivate func row(data user: GOTUser) -> some View {
        return Group {
            CircleImage(uiImage: user.image, size: 60)
            VStack(alignment: .leading) {
                Text(user.name)
                    .fontWeight(.bold)
                Text(user.alias)
                    .font(.subheadline)
            }
        }
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(array: GOTUser.mockup())
    }
}
#endif
