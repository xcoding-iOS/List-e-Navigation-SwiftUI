//
//  CircleImage.swift
//  ListSwiftUI
//
//  Created by Giuseppe Sapienza on 20/06/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    init(uiImage: UIImage, size: Length = 50) {
        self.uiImage = uiImage
        self.size = size
    }
    
    fileprivate let uiImage: UIImage
    fileprivate let size: Length
    
    var body: some View {
        Image(uiImage: uiImage)
            .resizable()
            .frame(width: size, height: size)
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(uiImage: GOTUser.mockup()[0].image, size: 100)
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
#endif
