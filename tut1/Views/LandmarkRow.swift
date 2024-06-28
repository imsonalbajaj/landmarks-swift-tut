//
//  LandmarkRow.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
            HStack {
                Spacer()
                    .frame(width: 20)
                landmark.image
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10).stroke(.gray)
                    }
                Spacer()
                    .frame(width: 20)
                Text(landmark.name)
                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                } else {
                    Image(systemName: "star")
                }
            }
    }
}

#Preview("rock") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
    
}

#Preview("trees") {
    LandmarkRow(landmark: landmarks[1])
}
