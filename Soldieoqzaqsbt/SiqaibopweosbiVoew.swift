//
//  SiqaibopweosbiVoew.swift
//  Soldieoqzaqsbt
//
//  Created by Nicolae Chivriga on 18/02/2025.
//

import SwiftUI
import Lottie

struct SiqaibopweosbiVoew: View {
    @Environment(\.dismiss) var dismiss
    @State var goihoqkslb: Bool = false 
    var body: some View {
        ZStack {
            Image("soqi9nshq")
                .resizable()
                .ignoresSafeArea()
            
            Color.black.opacity(0.75)
                .ignoresSafeArea()
            
            if !goihoqkslb {
                LottieView(animation: .named("wiqaobrq"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 150, height: 150)
            }
            
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/baccarat/")!) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        goihoqkslb = true
                    }
                    
                }
            }
                .cornerRadius(5)
            
                .mask {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width * (goihoqkslb ? 1 : 0))
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
