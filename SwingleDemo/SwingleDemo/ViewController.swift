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
//        Swingle().getSongInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { song in
//            print("title: \(song.title)")
//            print("artist: \(song.artist.name)")
//        })
//
//        Swingle().getSongBeatsInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { beats in
//            print("first beat position: \(beats.beats?[0].position)")
//            print("first bar start: \(beats.bars?[0].start)")
//        })
//
//        Swingle().getBeatRevisions("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { revisions in
//            print("first beat revision: \(revisions.revisions?[0].updatedAt)")
//        })
//
//        Swingle().getSongChordInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { chords in
//            print("first chord: \(chords.chords?[0].name)")
//        })
//
//        Swingle().getChordRevisions("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { revisions in
//            print("first chord revision: \(revisions.revisions?[0].updatedAt)")
//        })
//
//        Swingle().getSongMelodyInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { melody in
//            print("first pitch: \(melody.notes?[0].pitch)")
//        })
//
//        Swingle().getMelodyRevisions("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { revisions in
//            print("first melody revision: \(revisions.revisions?[0].updatedAt)")
//        })
//
//        Swingle().getSongChorusInfo("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { chorus in
//            print("first chorus duration: \(chorus.chorusSegments?[0].duration)")
//        })
//
//        Swingle().getChorusRevisions("http://www.youtube.com/watch?v=PqJNc9KVIZE", success: { revisions in
//            print("first chorus revision: \(revisions.revisions?[0].updatedAt)")
//        })

        Swingle().searchSong("", success: { songs in
            print("first song name: \(songs.songs?[0].title)")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
