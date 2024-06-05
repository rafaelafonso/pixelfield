//
//  PixelTabView.swift
//  Pixelfield
//
//  Created by Rafael Afonso on 5/6/24.
//

import SwiftUI

enum TabSelection: Hashable {
    case scan, collection, shop, settings
}

struct PixelTabView: View {
    
    @Binding var path: [String]
    @State private var tabSelected: TabSelection = .collection
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 40) {
            
            TabView(selection: $tabSelected,
                    content:  {
                
                Text("Scan")
                    .tabItem {
                        VStack {
                            Image(systemName: "doc.viewfinder")
                            Text("Scan")
                        }
                    }
                    .tag(TabSelection.scan)
                
                CollectionView()
                    .tabItem {
                        VStack {
                            Image(systemName: "tablecells.fill")
                            Text("Collection")
                        }
                    }.tag(TabSelection.collection)
                
                Text("Shop")
                    .tabItem {
                        VStack {
                            Image(systemName: "waterbottle")
                            Text("Shop")
                        }
                    }
                    .tag(TabSelection.shop)
                
                Text("Settings")
                    .tabItem {
                        VStack {
                            Image(systemName: "gearshape")
                            Text("Settings")
                        }
                    }
                    .tag(TabSelection.settings)
            })
        }
        .padding()
        .background {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    PixelTabView(path: Binding.constant([]))
}

