//
//  ViewController.swift
//  Judging
//
//  Created by Anais Zoub on 1/23/18.
//  Copyright © 2018 Anais Zoub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var teamNumTF: UITextField!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var GlyphScoredTF: UITextField!
    @IBOutlet weak var glyphBonus: UITextField!
    @IBOutlet weak var autoLabel: UILabel!
    @IBOutlet weak var glyphScoreCBTF: UITextField!
    @IBOutlet weak var rowsTF: UITextField!
    @IBOutlet weak var columnsTF: UITextField!
    @IBOutlet weak var completeCipherTF: UITextField!
    @IBOutlet weak var teleLabel: UILabel!
    @IBOutlet weak var endGameLabel: UILabel!
    
    
    var glyphScored : Double = 0
    var Bonus : Double = 0
    var auto : Double = 0
    var safeParking : Double = 0
    var jewels : Double = 0
    var safeZone : Double = 0
    var cryptoScore : Double = 0
    var rows : Double = 0
    var columns : Double = 0
    var completeCipher : Double = 0
    var balenced : Double = 0
    var relicPlacing : Double = 0
    var relicUpright : Double = 0
    var tele : Double = 0
    var end : Double = 0
    var finalL : Double = 0
    var labelNo : Double = 0
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        
        
    }

    @IBAction func glyphsButton(_ sender: UIButton)
    {
        auto = Double(autoLabel.text!)!
        
        glyphScored = Double(GlyphScoredTF.text!)! * 15
        Bonus = Double(glyphBonus.text!)! * 30
        autoLabel.text = String(jewels + safeZone + glyphScored + Bonus)
    }
   
    
    @IBAction func calculate2(_ sender: Any) {
      
        
        tele = Double(teleLabel.text!)!
        cryptoScore = Double(glyphScoreCBTF.text!)! * 2
        rows = Double(rowsTF.text!)! * 10
        columns = Double(columnsTF.text!)! * 20
        completeCipher = Double(completeCipherTF.text!)! * 30
        teleLabel.text = String(cryptoScore + rows + columns + completeCipher)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var jewelSeg: UISegmentedControl!
    @IBAction func jewelSeg(_ sender: Any)
    {
        switch jewelSeg.selectedSegmentIndex
        {
        case 0:
            jewels = 30
        case 1:
            jewels = 0
        default: break;
        }
    }
    
    
    @IBOutlet weak var safeSeg: UISegmentedControl!
    @IBAction func safeSeg(_ sender: Any)
    {
        switch safeSeg.selectedSegmentIndex
        {
        case 0:
            safeZone = 10
        case 1:
            safeZone = 0
        default: break;
        }
    }
    
    
    @IBOutlet weak var balencedSeg: UISegmentedControl!
    @IBAction func balencedSeg(_ sender: Any)
    {
       switch balencedSeg.selectedSegmentIndex
       {
       case 0:
            balenced = 20
        case 1:
            balenced = 0
        
       default: break;
        }
    }
    @IBOutlet weak var placingSeg: UISegmentedControl!
    @IBAction func placingSeg(_ sender: Any) {
        switch placingSeg.selectedSegmentIndex
        {
            
        case 0:
            relicPlacing = 0
        case 1:
            relicPlacing = 10
        case 2:
            relicPlacing = 20
        case 3:
            relicPlacing = 40
        default: break;
            
        }
    }
    @IBOutlet weak var relicUprightSeg: UISegmentedControl!
    @IBAction func relicUprightSeg(_ sender: Any) {
        switch relicUprightSeg.selectedSegmentIndex
    
    {
        case 0:
            relicUpright = 15
        case 1:
            relicUpright = 0
        default: break;
    
            
    }
}

    @IBAction func calculateButton3(_ sender: Any) {
        end = Double(endGameLabel.text!)!
        endGameLabel.text = String(balenced + relicPlacing + relicUpright)
        finalLabel.text = String(auto + tele + end)
        
    }
   

    @IBAction func nextPageButton(_ sender: Any) {
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
//            let nextScene = segue.destination as? VehicleDetailsTableViewController ,
//            let indexPath = self.tableView.indexPathForSelectedRow {
//            let selectedVehicle = vehicles[indexPath.row]
//            nextScene.currentVehicle = selectedVehicle
            let fvc = segue.destination as! finalVCViewController
            finalL = Double("\(finalLabel.text ?? "0.0")")!
            fvc.passedAuto = auto
            fvc.passedTele = tele
            fvc.passedEnd = end
   
            
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        /////you can save in local storage here for permanently///
       
        glyphScored = 0
        Bonus = 0
        cryptoScore = 0
        rows = 0
        columns = 0
        completeCipher = 0
        GlyphScoredTF.text = ""
        glyphBonus.text = ""
        glyphScoreCBTF.text = ""
        rowsTF.text = ""
        columnsTF.text = ""
        completeCipherTF.text = ""
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//        let fvc = segue.destination as! finalVCViewController
//        
//        fvc.passedAuto = auto
//        fvc.passedTele = tele
//        fvc.passedEnd = end
//        
//    }
    
}
