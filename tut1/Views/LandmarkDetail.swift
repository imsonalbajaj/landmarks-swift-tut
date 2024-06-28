//
//  LandmarkDetail.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            
            MapView(locationCoordinates: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -110)
                .padding(.bottom, -110)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                    .frame(height: 10)
                
                HStack() {
                    Text(landmark.park)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                }
                
                Spacer()
                    .frame(height: 20)
                
                Divider()
                
                Spacer()
                    .frame(height: 20)
                
                Text("About " + landmark.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(landmark.description)
                    .multilineTextAlignment(.leading)
                
            }
            .padding([.leading, .trailing], 30)
            
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
