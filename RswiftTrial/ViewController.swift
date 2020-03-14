//
//  ViewController.swift
//  RswiftTrial
//
//  Created by Kazuya Kimura on 2020/03/14.
//  Copyright © 2020 Kazuya Kimura. All rights reserved.
//

import UIKit
import Rswift

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var introductionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.image = R.image.monkey_profile()
        introductionLabel.text = "R.swiftテスト\n本日の天気は晴れときどき曇りです。"
        introductionLabel.textColor = R.color.customRed()
    }
    @IBAction func changeColor(_ sender: UIButton) {
        introductionLabel.textColor = R.color.customBlue()
    }
    @IBAction func changeFont(_ sender: UIButton) {
        guard let font = R.font.ipAexMincho(size: introductionLabel.font.pointSize) else { return }
        introductionLabel.font = font
    }

}

