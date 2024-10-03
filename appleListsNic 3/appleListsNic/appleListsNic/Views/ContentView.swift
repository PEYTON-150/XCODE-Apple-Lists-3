//
//  ContentView.swift
//  appleListsNic
//
//  Created by Nicolas Reilly on 6/13/23.
//
import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
