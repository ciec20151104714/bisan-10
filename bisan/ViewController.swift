//
//  ViewController.swift
//  bisan
//
//  Created by s20151104714 on 2017/3/29.
//  Copyright © 2017年 s20151104714. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    public var a:Int = 0
    public  var b:Int = 0
    public var c:Int = 1
    public var d:Int = 0
    public var e:Int = 0
    public var array1 : [Int] = [0,0,0]
    public var array2 : [Int] = [0,0,0]
    
    
    
    @IBOutlet weak var temp: UITextField!
    
    @IBOutlet weak var temp3: UITextField!
    @IBOutlet weak var temp1: UITextField!
    @IBOutlet weak var temp2: UITextField!
    @IBOutlet weak var temp4: UITextField!
    @IBAction func adda(_ sender: Any) {
        a=a+1
        if( b<10 && a==11 || b>=10 && a-b==2 )
        {
            temp.text="\("第" + String(c) + "局")"
            temp3.text="\("a胜")"
            array1[c-1] = a
            array2[c-1] = b
            c=c+1
            a=0
            b=0
            d=d+1
            temp1.text="\(d)"
            if (c == 4)
            {
                temp4.text="\("比赛结束" + String(d) + ":" + String(e))"
                temp.text="\( "a  " )"
                temp3.text="\( "赢  " )"
                c=1;
                d=0;
                e=0;
                temp2.text = "\(e)"
                temp1.text="\(d)"
                
            }
        }else
        {
            temp.text="\( String(a)  )"
            temp3.text="\( String(b) )"
            temp4.text="\("第" + String(c) + "局")"
        }
        
    }
    
    @IBAction func addb(_ sender: Any) {
        b=b+1
        if( a<10 && b==11 || a>=10 && b-a==2)
        {
            temp.text="\("第" + String(c) + "局")"
            temp3.text="\("b胜")"
            array1[c-1] = a
            array2[c-1] = b
            c=c+1
            a=0
            b=0
            e=e+1
            temp2.text = "\(e)"
            if (c == 4)
            {
                temp4.text="\("比赛结束" + String(d) + ":" + String(e))"
                temp.text="\( "b  " )"
                temp3.text="\( "赢  " )"
                c=1;
                d=0;
                e=0;
                temp2.text = "\(e)"
                temp1.text="\(d)"
            }
        }else
        {
            temp.text="\( String(a) )"
            temp3.text="\( String(b) )"
            temp4.text="\("第" + String(c) + "局")"
        }
    }
    
    @IBAction func acca(_ sender: Any) {
        if(a>0)
        {
            a=a-1
            temp.text="\( String(a)  )"
            temp3.text="\(  String(b) )"
            if( a<10 && b==11 || a>=10 && b-a==2)
            {
                temp.text="\("第" + String(c) + "局")"
                temp3.text="\("b胜")"
                array1[c-1] = a
                array2[c-1] = b
                c=c+1
                a=0
                b=0
                e=e+1
                temp2.text = "\(e)"
                if (c == 4)
                {
                    temp4.text="\("比赛结束" + String(d) + ":" + String(e))"
                    temp.text="\( "b  " )"
                    temp3.text="\( "赢  " )"
                    c=1;
                    d=0;
                    e=0;
                    temp2.text = "\(e)"
                    temp1.text="\(d)"
                }
            }else
            {
                temp.text="\( String(a)  )"
                temp3.text="\(  String(b) )"
            }
            
        }
        else if(a==0)
        {
            if(( c>=1 && d>=1))
            {
                a=array1[c-2]-1
                b=array2[c-2]
                c=c-1
                d=d-1
                temp4.text="\("第" + String(c) + "局")"
                temp1.text="\(d)"
                temp.text="\( String(a) )"
                temp3.text="\( String(b) )"
            }
            
            
        }
        
        
        
    }
    @IBAction func accd(_ sender: Any) {
        if(b>0)
        {
            b=b-1
            temp.text="\( String(a)  )"
            temp3.text="\(  String(b) )"
            if( b<10 && a==11 || b>=10 && a-b==2 )
            {
                temp.text="\("第" + String(c) + "局")"
                temp3.text="\("a胜")"
                array1[c-1] = a
                array2[c-1] = b
                c=c+1
                a=0
                b=0
                d=d+1
                temp1.text="\(d)"
                if (c == 4)
                {
                    temp4.text="\("比赛结束" + String(d) + ":" + String(e))"
                    temp.text="\( "a " )"
                    temp3.text="\( "赢  " )"
                    c=1;
                    d=0;
                    e=0;
                    temp2.text = "\(e)"
                    temp1.text="\(d)"
                }
                else
                {
                    temp.text="\( String(a)  )"
                    temp3.text="\( String(b) )"
                }
            }
            
        }
        else if(b==0)
        {
            if(( c>=1 && e>=1))
            {
                a=array1[c-2]
                b=array2[c-2]-1
                c=c-1
                e=e-1
                temp4.text="\("第" + String(c) + "局")"
                temp2.text="\(e)"
                temp.text="\( String(a)  )"
                temp3.text="\( String(b) )"
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

