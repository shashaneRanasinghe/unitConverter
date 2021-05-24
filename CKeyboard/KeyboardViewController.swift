//
//  KeyboardViewController.swift
//  CKeyboard
//
//  Created by user188413 on 3/17/21.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    
    
    
    override func viewWillLayoutSubviews() {
        self.nextKeyboardButton.isHidden = !self.needsInputModeSwitchKey
        super.viewWillLayoutSubviews()
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 11:
            self.textDocumentProxy.deleteBackward()
        case 12:
           
            //if !(self.textDocumentProxy.documentContextAfterInput! .contains(".")){
              //  self.textDocumentProxy.insertText(".")
            //}
            self.textDocumentProxy.insertText(".")
            
        case 13:
            
            if self.textDocumentProxy.documentContextAfterInput?.range(of: "-") == nil{
                self.textDocumentProxy.insertText("-" )
            }

        default:
            self.textDocumentProxy.insertText(String(sender.tag))
        }
        
        
        
        }
    
    

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let click = UITapGestureRecognizer(target: self, action: #selector(UIViewController.minimizeKeyboard))
        click.cancelsTouchesInView = false
        view.addGestureRecognizer(click)
    }
    
    @objc func minimizeKeyboard() {
        view.endEditing(true)
    }
}
