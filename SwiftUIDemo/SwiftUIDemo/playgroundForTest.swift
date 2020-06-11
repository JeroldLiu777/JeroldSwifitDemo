//
//  playgroundForTest.swift
//  SwiftUIDemo
//
//  Created by liudj on 2020/6/1.
//  Copyright © 2020 liudj. All rights reserved.
//

import Foundation
import UIKit

class TestOne {
    private(set) var _image:UIImage? //私有属性_image, 有点像成员变量和属性的关系, 但只是作为存储值, 外部访问的时候, 访问到的image属性的set和get时, 其实是在操作_image
    //计算属性image
    
    var image:UIImage? {
        get {
            return _image
        }
        
        set {
            _image = newValue
        }
    }
    
    //懒加载 无法作用于计算属性
    lazy var sawadika:[String] = {
        var temp:Array = ["haha", "hwhwh"]
        return temp
    }()

}

class TestTwo: TestOne {
    //重写父类的get和set
    override var image: UIImage? {
        get {
            return super.image
        }
        
        set {
            super.image = newValue
        }
    }
}
