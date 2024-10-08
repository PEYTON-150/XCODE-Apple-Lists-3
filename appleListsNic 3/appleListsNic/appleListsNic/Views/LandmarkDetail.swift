//
//  LandmarkDetail.swift
//  appleListsNic
//
//  Created by Nicolas Reilly on 6/13/23.
//

import SwiftUI


struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
        var landmark: Landmark


        var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }


        var body: some View {
            ScrollView {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)


                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)


                VStack(alignment: .leading) {
                    HStack {
                                        Text(landmark.name)
                                            .font(.title)
                                        FavButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                                    }
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)


                    Divider()


                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
