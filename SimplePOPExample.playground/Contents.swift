//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
// ViewController you are gonna use.
class MyViewController : UIViewController,UseAnyWhereCalculator{

 
    
    var a: Int = 3
    
    var b: Int = 4
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        let labelAdd = UILabel()
        labelAdd.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        labelAdd.text = "\(a)+\(b)=\(addAB())" // Use the addAB method to add two given values
        labelAdd.textColor = .black
        
        view.addSubview(labelAdd)
        
        let labelMultiply = UILabel()
        labelMultiply.frame = CGRect(x: 150, y: 250, width: 200, height: 20)
        labelMultiply.text = "\(a)x\(b)=\(multiplyAB())" // Use the multiplyAB method to multiply two given values
        labelMultiply.textColor = .black
        
        view.addSubview(labelMultiply)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

// UseAnyWhereCalculator Protocol
protocol UseAnyWhereCalculator{
    
    var a:Int { get }
    var b:Int { get }
    
    func addValues(inputA:Int,inputB:Int)->Int
    
    func addAB()->Int
}
// Protocol Extension
extension UseAnyWhereCalculator{
    func addValues(inputA:Int,inputB:Int)->Int{
        
        return inputA+inputB
    }
    
    func addAB()->Int{
        return addValues(inputA: a, inputB: b)
        
    }
    func multiplyValues(inputA:Int,inputB:Int)->Int{
        
        return inputA*inputB
    }
    
    func multiplyAB()->Int{
        return multiplyValues(inputA: a, inputB: b)
        
    }
}
