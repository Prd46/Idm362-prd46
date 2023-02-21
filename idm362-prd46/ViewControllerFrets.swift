//
//  ViewControllerFrets.swift
//  idm362-prd46
//
//  Created by Paul DiGerolamo on 2/21/23.
//

import UIKit

class ViewControllerFrets: UIViewController {

    @IBOutlet weak var fretsImage: UIImageView!
    
    @IBOutlet weak var keyMenuButton: UIButton!
    
    @IBOutlet weak var typeMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPopUpButton()
        setUpPopUpButton2()
        // Do any additional setup after loading the view.
        
        
        func setUpPopUpButton(){
            //build setup popup button values
            let optionsObj = {
                //(action : UIAction) in print(action.title)
                (action : UIAction) in self.fretsImage.image = UIImage(named:"\(action.title)")
                print("\(action.title)")
                //self.displayLabel.text = "\(action.title)"
            }
            keyMenuButton.menu = UIMenu(children : [
                UIAction(title: "C", state: .on, handler: optionsObj),
                UIAction(title: "E", handler: optionsObj)
                
            ])
            keyMenuButton.showsMenuAsPrimaryAction = true
            keyMenuButton.changesSelectionAsPrimaryAction = true
 
        }
        
        func setUpPopUpButton2(){
            //build setup popup button values
            let optionsObj2 = {
                //(action : UIAction) in print(action.title)
                (action : UIAction) in self.fretsImage.image = UIImage(named:"\(action.title)")
                print(action.title)
                //self.displayLabel.text = "\(action.title)"
            }
            typeMenuButton.menu = UIMenu(children : [
                UIAction(title: "Minor", state: .on, handler: optionsObj2),
                UIAction(title: "Major", handler: optionsObj2),
                
            ])
            typeMenuButton.showsMenuAsPrimaryAction = true
            typeMenuButton.changesSelectionAsPrimaryAction = true
 
        }
        
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
