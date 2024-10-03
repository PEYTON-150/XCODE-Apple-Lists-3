//
//  FavButton.swift
//  appleListsNic
//
//  Created by Nicolas Reilly on 6/15/23.
//

import Foundation
import SwiftUI


struct FavButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
                    isSet.toggle()
                } label: {
                    Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                        .labelStyle(.iconOnly)
                        .foregroundColor(isSet ? .yellow : .gray)
                }

    }
}


struct FavButton_Previews: PreviewProvider {
    static var previews: some View {
        FavButton(isSet: .constant(true))
    }
}

