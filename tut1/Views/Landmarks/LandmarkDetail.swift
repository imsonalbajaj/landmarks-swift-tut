//
//  LandmarkDetail.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var filteredIdx: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    //
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            
            MapView(locationCoordinates: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -110)
                .padding(.bottom, -110)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    .fontWeight(.semibold)
                    Spacer()
                    FavoriteButton(isSet: $modelData.landmarks[filteredIdx].isFavorite)
                }
                
                Spacer()
                    .frame(height: 10)
                
                HStack() {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                
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
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
