//
//  LocalizableViewController.swift
//  LocaliOS
//
//  Created by ManhCuong on 9/18/19.
//  Copyright © 2019 encodejsc. All rights reserved.
//

import UIKit

class LocalizableViewController: UIViewController {
    @objc var valueVE: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @objc func setLocalizable(key: String) -> String {
        var value: String?
        value = NSLocalizedString(key, comment: "")
        return value!
    }
    @objc func setLocalizableWithBundle(key: String) -> String {
        let vc: ViewController = ViewController()
        var value: String?
        if valueVE == nil {
            value = NSLocalizedString(key, comment: "")
        } else if valueVE == "en" {
            let path = Bundle.main.path(forResource: valueVE, ofType: "lproj")
            let bundle = Bundle.init(path: path!) as! Bundle
            value = bundle.localizedString(forKey: key, value: nil, table: nil)
        } else if valueVE == "vi" {
            let path = Bundle.main.path(forResource: valueVE, ofType: "lproj")
            let bundle = Bundle.init(path: path!) as! Bundle
            value = bundle.localizedString(forKey: key, value: nil, table: nil)
        }
        return value!
        
    }
}
