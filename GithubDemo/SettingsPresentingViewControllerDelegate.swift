//
//  SettingsPresentingViewControllerDelegate.swift
//  GithubDemo
//
//  Created by Richard Du on 2/12/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import Foundation
protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
