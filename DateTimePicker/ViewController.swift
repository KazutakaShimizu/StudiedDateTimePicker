//
//  ViewController.swift
//  DateTimePicker
//
//  Created by Huong Do on 9/16/16.
//  Copyright © 2016 ichigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var item: UINavigationItem!
    var current = Date()

    @IBAction func showDateTimePicker(sender: AnyObject) {
        let min = Date().addingTimeInterval(-60 * 60 * 24 * 4)
        let max = Date().addingTimeInterval(60 * 60 * 24 * 4)
        
//        current = Date(timeInterval: 60*60*24, since: current)
        
        let picker = DateTimePicker.show(selected: current, minimumDate: min, maximumDate: max)
//        let picker = DateTimePicker.show()
        picker.highlightColor = UIColor(red: 255.0/255.0, green: 138.0/255.0, blue: 138.0/255.0, alpha: 1)
//        時間の選択が完了した際に押すボタンの文言を設定
        picker.doneButtonTitle = "!! DONE DONE !!"
//        picer右上の今日の日付に戻るボタンの文言を設定
        picker.todayButtonTitle = "Today"
        
//        時間をピックし終わった後の処理
        picker.completionHandler = { date in
            self.current = date
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm dd/MM/YYYY"
            self.item.title = formatter.string(from: date)
        }
    }

}

