//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Richard Du on 2/12/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {

    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings?
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var minStarSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let settings = settings {
            starCountLabel.text = "\(settings.minStars)"
            minStarSlider.value = Float(settings.minStars)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        settings?.minStars = Int(minStarSlider.value)
        
        self.delegate?.didSaveSettings(settings: settings!)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func sliderChanged(_ sender: AnyObject) {
        starCountLabel.text = "\(Int(minStarSlider.value))"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
