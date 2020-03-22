//
//  ViewController.swift
//  Calculator
//
//  Created by 이용광 on 2020/03/13.
//  Copyright © 2020 이용광. All rights reserved.
//

//드래그는 control

import UIKit        //UI

class ViewController: UIViewController {    //class

    @IBOutlet weak var display: UILabel! //controller에 있는 display라는 property이다.
    // UILabel? 로도 할 수 있다. 다만 이 경우 밑에 display를 사용시 뒤에 !를 붙여줘야한다
    //type이 optional일 경우 자동으로 nil(set되지 않은 상태)로 초기화 되므로 초기화 해줄 필요가 없다
    
    var userIsInTheMiddleOfTyping = false
    //스위프트에서는 모든 변수를 초기화 해줘야한다
    //false는 bool만 가질 수 있기 때문에 스위프트가 추정하므로 : Bool를 써줄 필요가 없다
    
    @IBAction func touchDigit(_ sender: UIButton) {
        //@IBOutlet은 스위프트가 아니라 xcode에서 연결을 위해 쓰임
        //touchDigit은 함수이름
        //_ sender: UIButton은 argument
        //@IBAction func touchDigit(_ sender: UIButton, otherArgument: Int)->Double   #return type이 double이고 인자가 2개인 함수
        // self.touchDigit(someButton, otherArgument: 5)   #자기 자신의 함수를 호출할 경우  #스위프트에서는 첫번째 인자에는 값만 넣어도 되지만 두번째 부터는 인자의 이름까지 넣어야함
        let digit = sender.currentTitle!
        //var digit = sender.currentTitle #지역변수를 선언하던 초기화되고 변하지 않을 property를 선언할 때 즉, constant 변수일 경우 var대신 let으로 해야함 let으로 dictionary나 array를 선언하면 추가로 들어가거나 빼낼수 없다는 뜻. read only
        //print("touched \(digit) digit")  # c에서는 %s지만 swift는 \(digit)을 사용
        //'!'를 뒤에 붙여야하는 이유: 스위프트에는 optional type이라는게 있다. 이 type은 오직 두가지의 값으로 설정될 수 있다. not set(nil)과 set. 그러므로 currentTitle은 optional type을 가졌고 관련된 값이 string인 optional string이다. button의 title이 set되어있지 않을 수도 있기 때문에 optional인것이다. !를 붙이면 optional의 연관된 type으로 강제로 명시해준다
        //digit을 선언할때 digit: string과 같이 type을 선언해주지 않은 이유는 swift는 type을 자동으로 추정하기 때문이다
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay=display.text!
            // let textCurrentlyInDisplay=display.text #display!
            display.text=textCurrentlyInDisplay+digit
            //display!.text를 set하고 싶지 않으면 = nil
        } else{
            display.text=digit
        }
        userIsInTheMiddleOfTyping = true
        
    }
    
}
