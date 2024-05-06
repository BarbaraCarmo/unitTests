//
//  File.swift
//  testesUnitarios
//
//  Created by Bárbara Carmo on 01/05/24.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var instructionLabel: UILabel!
    var viewModel: AccountViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.shouldRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
        
        instructionLabel.text = viewModel?.instructionText
        
        
        
        Provider().getJoke { jokes, Error in
            print(jokes ?? "default value")
        }
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginButtonTap()
    }
}
