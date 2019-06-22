//
//  DetailView.swift
//  ListSwiftUI
//
//  Created by Giuseppe Sapienza on 20/06/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    
    init(user: GOTUser) {
        self.user = user
    }
    
    fileprivate let user: GOTUser
    
    var body: some View {
        VStack {
            ZStack {
                Image(uiImage: user.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .relativeSize(width: 1, height: 1)
                    .clipped()
                    .blur(radius: 10, opaque: true)
                
                CircleImage(uiImage: user.image, size: 120)
            }
            
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(user.alias)
                    .font(.headline)
                
                Text(user.description)
                    .fixedSize(horizontal: false, vertical: false)
                    .lineLimit(nil)
                    .padding(.top, 10)
            }
            .padding()
            
            Spacer()
            
            .navigationBarTitle(Text("Detail"))
        }
    }
    
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView(user: GOTUser.mockup()[1])
    }
}
#endif
