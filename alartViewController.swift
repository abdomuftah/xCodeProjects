    override func viewDidAppear(_ animated: Bool) {
        createAlert(title: "اضفني على تويتر", message: "لا تنسى متابعتي على تويتر للحصول على اخر الاخبار  !!")
    }
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    
    func createAlert (title:String, message:String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        //CREATING ON BUTTON
        alert.addAction(UIAlertAction(title: "حسناً 😍", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            
            UIApplication.shared.open(URL(string: "https://twitter.com/scar_naruto")! as URL, options: [:], completionHandler: nil)
            
            
            
        }))
        
        alert.addAction(UIAlertAction(title: "لا شكراً  ☹️", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
