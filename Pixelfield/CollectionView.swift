//
//  CollectionView.swift
//  Pixelfield
//
//  Created by Rafael Afonso on 5/6/24.
//

import SwiftUI

struct CollectionView: View {
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Text("My collection")
                        .font(.title)
                        .foregroundStyle(Color.white)
                        .padding(.top)
                    Spacer()
                    Image(systemName: "bell.badge")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundStyle(Color.white)
                }
            }
            
            HStack(spacing: 20) {
                Spacer()
            }
            
            Spacer()
                .padding(.bottom)
            
        }
        .padding()
        .background {
            Color.black.opacity(0.9)
//                .ignoresSafeArea()
        }
    }
}

#Preview {
    CollectionView()
}


