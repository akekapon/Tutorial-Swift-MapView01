//
//  ViewController.swift
//  Tutorial Map
//
//  Created by Akekapon Suebprom on 9/24/2559 BE.
//  Copyright © 2559 kratostracking. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController ,MKMapViewDelegate{

    @IBOutlet weak var Maps: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let latitude:CLLocationDegrees = 13.731388
        let lontitude:CLLocationDegrees = 100.541584
        
        let latdelta:CLLocationDegrees = 0.05
        let lonDelta:CLLocationDegrees = 0.05
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latdelta, longitudeDelta: lonDelta)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: lontitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        Maps.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

