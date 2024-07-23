//
//  FavoriteButton.swift
//  tut1
//
//  Created by Sonal on 22/07/24.
//

import SwiftUI 
struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
//            isSet ? Text("On") : Text("off")
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(false))
}
