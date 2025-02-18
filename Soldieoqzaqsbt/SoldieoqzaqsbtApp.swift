//
//  SoldieoqzaqsbtApp.swift
//  Soldieoqzaqsbt
//
//  Created by Nicolae Chivriga on 18/02/2025.
//

import SwiftUI

@main
struct SoldieoqzaqsbtApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Iub()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
func vibr(style: UIImpactFeedbackGenerator.FeedbackStyle) {
    let feedbackGenerator = UIImpactFeedbackGenerator(style: style)
    feedbackGenerator.impactOccurred()
    
}

import StoreKit
func requestReview(in window: UIWindow?) {
    if let windowScene = window?.windowScene {
        SKStoreReviewController.requestReview(in: windowScene)
    } else {
        print("Failed to find a valid UIWindowScene.")
    }
}

struct Swipsortba: ViewModifier {
    var onDismiss: () -> Void
    @State private var offset: CGSize = .zero

    func body(content: Content) -> some View {
        content
//            .offset(x: offset.width)
            .animation(.interactiveSpring(), value: offset)
            .simultaneousGesture(
                DragGesture()
                    .onChanged { value in
                                      self.offset = value.translation
                                  }
                                  .onEnded { value in
                                      if value.translation.width > 70 {
                                          onDismiss()
                                  
                                      }
                                      self.offset = .zero
                                  }
            )
    }
}


