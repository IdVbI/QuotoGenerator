//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by 임성빈 on 2022/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지는 삶을 시작조차 못하는 사람이 많다.", names: "벤다이크"),
        Quote(contents: "나를 죽이지 못한 것은 나를 더욱 강하게 만든다.", names: "니체"),
        Quote(contents: "도망쳐서 도착한 곳에 낙원은 없다.", names: "베르세르크"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다.", names: "아인슈타인"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", names: "암브로스 빌")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapChangeQuote(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.names
    }
    
}

