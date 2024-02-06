//
//  ViewController.swift
//  week4_homework_2
//
//  Created by 徐柏勳 on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        let session = URLSession(configuration: .default)
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        
        session.dataTask(with: url){
            (data, response, error) in
            
            if error != nil{
                print(error!)
                return
            }
            
            if let safeData = data {
                self.parseJSON(data: safeData)
            }
        }.resume()
    }
    
    func parseJSON(data: Data){
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(MyData.self, from: data)
            DispatchQueue.main.sync{
                stationIDLabel.text = decodedData.stationID
                stationNameLabel.text = decodedData.stationName
                addressLabel.text = decodedData.stationAddress
            }
        } catch {
            print(error)
        }
    }
}

