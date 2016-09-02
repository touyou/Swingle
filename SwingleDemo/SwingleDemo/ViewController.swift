//
//  ViewController.swift
//  SwingleDemo
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import UIKit
import Swingle

final class ViewController: UIViewController {

    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var searchField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushInfo() {
        Swingle().getSongInfo(urlField.text ?? "", success: { song in
            print("title: \(song.title)")
            print("artist: \(song.artist.name)")
        })
    }

    @IBAction func pushBeat() {
        Swingle().getSongBeatsInfo(urlField.text ?? "", success: { beats in
            print("first beat position: \(beats.beats?[0].position)")
            print("first bar start: \(beats.bars?[0].start)")
        })
    }

    @IBAction func pushBeatRevision() {
        Swingle().getBeatRevisions(urlField.text ?? "", success: { revisions in
            print("first beat revision: \(revisions.revisions?[0].updatedAt)")
        })
    }

    @IBAction func pushChord() {
        Swingle().getSongChordInfo(urlField.text ?? "", success: { chords in
            print("first chord: \(chords.chords?[0].name)")
        })
    }

    @IBAction func pushChordRevision() {
        Swingle().getChordRevisions(urlField.text ?? "", success: { revisions in
            print("first chord revision: \(revisions.revisions?[0].updatedAt)")
        })
    }

    @IBAction func pushMelody() {
        Swingle().getSongMelodyInfo(urlField.text ?? "", success: { melody in
            print("first pitch: \(melody.notes?[0].pitch)")
        })
    }

    @IBAction func pushMelodyRevision() {
        Swingle().getMelodyRevisions(urlField.text ?? "", success: { revisions in
            print("first melody revision: \(revisions.revisions?[0].updatedAt)")
        })
    }

    @IBAction func pushChorus() {
        Swingle().getSongChorusInfo(urlField.text ?? "", success: { chorus in
            print("first chorus duration: \(chorus.chorusSegments?[0].duration)")
        })
    }

    @IBAction func pushChorusRevision() {
        Swingle().getChorusRevisions(urlField.text ?? "", success: { revisions in
            print("first chorus revision: \(revisions.revisions?[0].updatedAt)")
        })
    }

    @IBAction func search() {
        Swingle().searchSong(searchField.text ?? "", success: { songs in
            print("first song name: \(songs.songs?[0].title)")
        })
    }

}
