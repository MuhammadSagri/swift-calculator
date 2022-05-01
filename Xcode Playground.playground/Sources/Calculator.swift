import UIKit

public class Calculator: ObservableObject{
    public static let shared = Calculator()
    @Published public var input: String
    
    init(){
        self.input = ""
    }
    
    public func AC(){
        input = ""
    }
    
    public func plus(){
        input += "+"
    }
    
    public func minus(){
        input += "-"
    }
    
    public func multiply(){
        input += "*"
    }
    
    public func divide(){
        input += "/"
    }
    
    public func openBrackets(){
        input += "("
    }
    
    public func closedBrackets(){
        input += ")"
    }
    
    public func decimal(){
        input += "."
    }
    
    public func equals(){
        let exp: NSExpression = NSExpression(format: input)
        input = String(exp.expressionValue(with:nil, context: nil) as! Double)
        // issue is that first expression is evaluated according to computer, then answer is made double, which is then made the value of input, so 5/2 => 2 => 2.0 => "2.0"
    }
    
    public func one(){
        input += "1"
    }
    
    public func two(){
        input += "2"
    }
    
    public func three(){
        input += "3"
    }
    
    public func four(){
        input += "4"
    }
    
    public func five(){
        input += "5"
    }
    
    public func six(){
        input += "6"
    }
    
    public func seven(){
        input += "7"
    }
    
    public func eight(){
        input += "8"
    }
    
    public func nine(){
        input += "9"
    }
    
    public func zero(){
        input += "0"
    }
}
