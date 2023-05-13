import SwiftUI

struct SplashScreen: View {
    @State private var isLoading = true
    @AppStorage("isSplashScreenShown") private var isSplashScreenShown = false
    var body: some View {
        Group{
            if isSplashScreenShown {
               OnboardingView()
                    .transition(.move(edge: .leading))
            }else{
                ZStack {
                    Color(
                        red: 83 / 255.0,
                        green: 177 / 255.0,
                        blue: 117 / 255.0
                    )
                    .edgesIgnoringSafeArea(.all)
                    Image("logo")
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        withAnimation(.easeInOut) {
                            isSplashScreenShown = true
                        }
                    }
                }
            }
        }
    }
}

