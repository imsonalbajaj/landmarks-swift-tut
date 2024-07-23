//
//  CircleImage.swift
//  tut1
//
//  Created by Sonal on 09/06/24.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        VStack {
            image
                .resizable(resizingMode: .stretch)
                .clipShape(Circle())
                .frame(width: 200, height: 200)
                .overlay {
                    Circle().stroke(.white, lineWidth: 3)
                }
            .shadow(radius: 10)
        }
    }
}
