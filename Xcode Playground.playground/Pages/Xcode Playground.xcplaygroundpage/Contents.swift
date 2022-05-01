import SwiftUI
import PlaygroundSupport
import UIKit

struct calc: View {
    @ObservedObject var calculator:Calculator = Calculator.shared
    var body: some View {
        ZStack{
            Color(red: 0.19, green: 0.31, blue: 0.40)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Spacer()
                    Text(calculator.input)        .font(.system(size: 500))
                        .minimumScaleFactor(0.01)
                    
                }
                .padding()
                .foregroundColor(.red)
                .background(Color(.yellow))
                //              }
                //              VStack{
                HStack{
                    
                    Button(action: {
                        calculator.self.one()
                    }){
                        Text("  1 ")
                            .font(.system(size: 80))
                        
                    }            .background(Color(red: 0.5, green: 0.15, blue: 0.75))
                    .foregroundColor(.pink)
                    .clipShape(Capsule())
                    
                    //
                    Button(action: {
                        calculator.self.two()
                    }){
                        Text(" 2 ")
                            .font(.system(size: 80))
                        
                    }            .background(Color(red: 0.5, green: 0.5, blue: 0.9))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    //
                    
                    Button(action: {
                        calculator.self.three()
                    }){
                        Text(" 3 ")
                            .font(.system(size: 80))
                        
                    }            .background(Color(red: 0.5, green: 0.5, blue: 0.19))
                    .foregroundColor(.black)
                    .clipShape(Capsule())
                }
                VStack{
                    HStack{
                        Button(action: {
                            calculator.self.four()
                        }){
                            Text(" 4 ")
                                .font(.system(size: 80))
                            
                        }            .background(Color(red: 0.5, green: 0.5, blue: 0.9))
                        .foregroundColor(.orange)
                        .clipShape(Capsule())
                        
                        Button(action: {
                            calculator.self.five()
                        }){
                            Text(" 5 ")
                                .font(.system(size: 100))
                            
                        }            .background(Color(red: 0.3, green: 0.3, blue: 0.3))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                        Button(action: {
                            calculator.self.six()
                        }){
                            Text(" 6 ")
                                .font(.system(size: 80))
                            
                        }            .background(Color(red: 0.3, green: 0.9, blue: 0.2))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                    }
                    VStack{
                        HStack{
                            Button(action: {
                                calculator.self.seven()
                            }){
                                Text(" 7 ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.15, green: 0.5, blue: 0.9))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                            Button(action: {
                                calculator.self.eight()
                            }){
                                Text(" 8 ")
                                    .font(.system(size: 70))
                                
                            }            .background(Color(red: 0.35, green: 0.5, blue: 0.39))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                            Button(action: {
                                calculator.self.nine()
                            }){
                                Text(" 9 ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.2, green: 0.3, blue: 0.3))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                        }
                    }
                    VStack{
                        HStack{
                            Button(action: {
                                calculator.self.AC()
                            }){
                                Text(" AC ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.5, green: 0.2, blue: 0.2))
                            .foregroundColor(.red)
                            .clipShape(Capsule())
                            
                            
                            Button(action: {
                                calculator.self.zero()
                            }){
                                Text(" 0 ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.5, green: 0.5, blue: 0.9))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                            Button(action: {
                                calculator.self.equals()
                            }){
                                Text(" = ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.5, green: 0.5, blue: 0.6))
                            .foregroundColor(.green)
                            .clipShape(Capsule())
                            
                        }
                    }
                    VStack{
                        HStack{
                            
                            Button(action: {
                                calculator.self.multiply()
                            }){
                                Text(" X ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.5, green: 0.5, blue: 0.69))
                            .foregroundColor(.yellow)
                            .clipShape(Capsule())
                            
                            Button(action: {
                                calculator.self.divide()
                            }){
                                Text("  /  ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.85, green: 0.85, blue: 0.66))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            Button(action: {
                                calculator.self.openBrackets()
                            }){
                                Text(" ( ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.5, green: 0.25, blue: 0.29))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                            
                            Button(action: {
                                calculator.self.decimal()
                            }){
                                Text(" . ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.25, green: 0.85, blue: 0.49))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                        }
                        
                        
                    }
                    VStack{
                        HStack{
                            Button(action: {
                                calculator.self.closedBrackets()
                            }){
                                Text(" ) ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.80, green: 0.52, blue: 0.62))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            Button(action: {
                                calculator.self.plus()
                            }){
                                Text(" + ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.90, green: 0.62, blue: 0.22))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                            Button(action: {
                                calculator.self.minus()
                            }){
                                Text(" - ")
                                    .font(.system(size: 80))
                                
                            }            .background(Color(red: 0.80, green: 0.1, blue: 0.62))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            
                        }
                    }
                    
                    
                }
            }
        }
    }
}

PlaygroundPage.current.setLiveView(calc())
