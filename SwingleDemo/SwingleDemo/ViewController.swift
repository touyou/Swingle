//
//  ViewController.swift
//  SwingleDemo
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import UIKit
import Swingle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Swingle().getSongInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { song in
            print("title: \(song.title)")
            print("artist: \(song.artist.name)")
        })

        Swingle().getSongBeatsInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { beats in
            print("first beat position: \(beats.beats?[0].position)")
            print("first bar start: \(beats.bars?[0].start)")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
