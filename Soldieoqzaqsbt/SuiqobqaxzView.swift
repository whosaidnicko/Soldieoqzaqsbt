//
//  SuiqobqaxzView.swift
//  Soldieoqzaqsbt
//
//  Created by Nicolae Chivriga on 18/02/2025.
//

import SwiftUI

struct SuiqobqaxzView: View {
    @State var woibjmoqps: Bool = false
    var body: some View {
        ZStack {
            
            Image("soqi9nshq")
                .resizable()
                .ignoresSafeArea()
            
            Color.black.opacity(0.5)
                .ignoresSafeArea()
            
            HStack {
                NavigationLink {
                    UibqivopzdView()
                } label: {
                    Image("umbplkzu")
                }

                Spacer()
                
                VStack {
                    
                        Image("yuiiklc")
                            .resizable()
                            .scaledToFit()
                            
                         
                            
                    
                    NavigationLink {
                        SiqaibopweosbiVoew()
                    } label: {
                        Image("weiropb")
                            .overlay {
                                Text("PLAY")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
                            }
                    }

                }
                
                Spacer()
                
                NavigationLink {
                    Uispqpbirqwr()
                } label: {
                    Image("uiqnbursapmk")
                }

            }
            .padding(.horizontal)
            .mask {
                Rectangle()
                    .frame(height: UIScreen.main.bounds.height * (woibjmoqps ? 1 : 0))
            }
            .animation(Animation.easeInOut(duration: 2), value: woibjmoqps)
         
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    woibjmoqps = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                    vibr(style: .rigid)
                }
            }
        
        }
        .navigationBarBackButtonHidden()
    }
}
extension View {
    func ijzbrter() -> some View {
        self.modifier(Poiuwqbkzidtuqaz())
    }
}
