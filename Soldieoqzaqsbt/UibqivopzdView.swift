//
//  UibqivopzdView.swift
//  Soldieoqzaqsbt
//
//  Created by Nicolae Chivriga on 18/02/2025.
//

import SwiftUI
import StoreKit

struct UibqivopzdView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("soqi9nshq")
                .resizable()
                .ignoresSafeArea()
            
            Color.black.opacity(0.75)
                .ignoresSafeArea()
            
            Image("soqizpbpsiqwrb")
                .resizable()
                .scaledToFit()
                .overlay {
                    VStack(spacing: 25) {
                        Button {
                            if let window = UIApplication.shared.windows.first {
                                requestReview(in: window)
                            }
                        } label: {
                            Image("weiropb")
                                .resizable()
                                .frame(width: 205, height: 47)
                                .overlay {
                                    Text("STARS")
                                        .font(.system(size: 28, weight: .semibold, design: .monospaced))
                                        .foregroundStyle(.white)
                                }
                             
                        }
                        
                        
                        Button {
                            if let url = URL(string: "mailto:reshmikamndar929393933@gmail.com") {
                                
                                UIApplication.shared.open(url) {  succes in
                                    if succes {
                                        vibr(style: .heavy)
                                    }
                                }
                            }
                        } label: {
                            Image("weiropb")
                                .resizable()
                                .frame(width: 205, height: 47)
                                .overlay {
                                    Text("CONTACT")
                                        .font(.system(size: 28, weight: .semibold, design: .monospaced))
                                        .foregroundStyle(.white)
                                }
                        }
                    }
                    .padding(.top, 80)
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            self.dismiss()
        }, label: {
            Image("builqpzibutow")
        }))
    }
}
