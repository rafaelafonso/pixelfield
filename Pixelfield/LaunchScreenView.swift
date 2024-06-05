//
//  LaunchScreenView.swift
//  Pixelfield
//
//  Created by Rafael Afonso on 5/6/24.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                    .overlay {
                        VStack {
                            Spacer()
                            VStack(spacing: 40) {
                                VStack(spacing: 12) {
                                    Text("Welcome!")
                                        .font(.title)
                                    Text("Text text text")
                                        .font(.body)
                                }
                                .foregroundStyle(Color.white)
                                .padding(.top)

                                Button {} label: {
                                    HStack {
                                        Spacer()
                                        Text("Scan bottle")
                                            .padding()
                                        Spacer()
                                    }
                                    .background {
                                        Color("pixelYellow")
                                            .cornerRadius(12)
                                            .padding(.horizontal)
                                    }
                                }
                                
                                HStack(spacing: 20) {
                                    Spacer()
                                    Button {} label: {
                                        Text("Have an account?")
                                            .foregroundStyle(Color.gray)
                                    }
                                    
                                    
                                    Button {
                                        path.append("SigninView")
                                    } label: {
                                        Text("Sign in first")
                                            .foregroundStyle(Color("pixelYellow"))
                                    }
                                    .navigationDestination(for: String.self) { view in
                                        if view == "SigninView" {
                                            SigninView(path: $path)
                                        } else if view == "PixelTabView" {
                                            PixelTabView(path: $path)
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(.bottom)
                            }
                            .padding()
                            .background {
                                Color.accentColor
                            }
                            .padding()
                        }
                    }
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
