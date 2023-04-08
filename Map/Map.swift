//
//  Map.swift
//  Curriculo
//
//  Created by Gustavo Mendonca on 05/04/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    var gerenciadorLocal = CLLocationManager()
    
    
    @IBOutlet weak var Maps: MKMapView!
    
    
    
    
    
    
    override func viewDidLoad() {
        
        
        gerenciadorLocal.delegate = self
        gerenciadorLocal.desiredAccuracy = kCLLocationAccuracyBest
        gerenciadorLocal.requestWhenInUseAuthorization()
        gerenciadorLocal.startUpdatingLocation()
        
        
        /*
        let latitude: CLLocationDegrees = -23.549993// latitude de algum lugar do maps
        let longitude: CLLocationDegrees = -46.625283 // longitude de algum lugar do maps
        
        let deltaLatitude: CLLocationDegrees = 0.01 // distancia que temos do ponto que escolhemos, isso é o zoom
        let deltaLongitude: CLLocationDegrees = 0.01 // distancia que temos do ponto que escolhemos, isso é o zoom
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        
        let regiao: MKCoordinateRegion =  MKCoordinateRegion(center: localizacao, span: areaVisualizacao)
        
        
        
        Maps.setRegion(regiao, animated: true)
        */
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let localizacaoUsuario: CLLocation = locations.last! //recupera a ultima localizacao do usuario
        
        
        // monta a exibicao do mapa
        
        let latitude: CLLocationDegrees = localizacaoUsuario.coordinate.latitude// latitude de algum lugar do maps
        let longitude: CLLocationDegrees = localizacaoUsuario.coordinate.longitude  // longitude de algum lugar do maps
        
        let deltaLatitude: CLLocationDegrees = 0.01 // distancia que temos do ponto que escolhemos, isso é o zoom
        let deltaLongitude: CLLocationDegrees = 0.01 // distancia que temos do ponto que escolhemos, isso é o zoom
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        let regiao: MKCoordinateRegion =  MKCoordinateRegion(center: localizacao, span: areaVisualizacao)

         Maps.setRegion(regiao, animated: true)
    }
}
