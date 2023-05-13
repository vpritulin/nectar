import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            VStack{
                Spacer()
                
                    Image("carrot")
                        .resizable()
                        .frame(width: 48.47, height: 56.36)
               
                    
                    Text("Welcome\nto our store")
                        .font(Font.custom("Gilroy", size: 48))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 19)
               

                    Text("Get your groceries in as fast as one hour")
                        .font(.custom("Gilroy", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 252/255, green: 252/255, blue: 252/255, opacity: 0.7))
                        .fixedSize()
                        .padding(.bottom, 10)
                
                Button(action:{}){
                    Text("Get Started")
                        .font(.custom("Gilroy", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .frame(width: 353,height: 67)
                .background(Color.green)
                .cornerRadius(20)
            
            }
            .padding(.bottom, 90.88)
        }
    }
}
