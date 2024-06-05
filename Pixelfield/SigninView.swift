//
//  SigninView.swift
//  Pixelfield
//
//  Created by Rafael Afonso on 5/6/24.
//

import SwiftUI

struct SigninView: View {
    
    @State private var email: String = "email@email.com"
    @State private var password: String = "testPassword"
    @State private var showPassword: Bool = false
    
    @Binding var path: [String]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 40) {
            Text("Sign in")
                .font(.title)
                .foregroundStyle(Color.white)
                .padding(.top)
            
            VStack(alignment: .leading) {
                Text("Email")
                TextField("", text: $email)
                    .foregroundStyle(Color.white)
                Color("pixelYellow")
                    .frame(height: 1)
            }
            .foregroundStyle(Color("pixelYellow"))
            
            VStack(alignment: .leading) {
                Text("Password")
                HStack {
                    if showPassword {
                        TextField("", text: $password)
                            .foregroundStyle(Color.white)
                    } else {
                        SecureField("", text: $password)
                            .foregroundStyle(Color.white)
                    }
                    Spacer()
                    Button {
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                    }
                }
                
                Color("pixelYellow")
                    .frame(height: 1)
            }
            .foregroundStyle(Color("pixelYellow"))
            
            
            Button {
                path.append("PixelTabView")
            } label: {
                HStack {
                    Spacer()
                    Text("Continue")
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
                    Text("Can't sign in?")
                        .foregroundStyle(Color.gray)
                }
                
                Button {} label: {
                    Text("Recover password")
                        .foregroundStyle(Color("pixelYellow"))
                }
                Spacer()
            }
            
            Spacer()
                .padding(.bottom)
        }
        .padding()
        .background {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    SigninView(path: Binding.constant([]))
}

