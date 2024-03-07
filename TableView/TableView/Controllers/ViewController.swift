//
//  ViewController.swift
//  TableView
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2/27/24.
//

import UIKit

class ViewController: UIViewController {

//    var moviesArray: [Movie] = []
    
    var movieDataManager = DataManager()
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self     // delegate 패턴과 같은 역할
        tableView.rowHeight = 120
        
        tableView.delegate = self
        
        movieDataManager.makeMovieData()
//        moviesArray = movieDataManager.getMovieData()
    }
}


extension ViewController: UITableViewDataSource {
    
    // 몇 개의 컨텐츠를 만들 것인지?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
//        return moviesArray.count
        return movieDataManager.getMovieData().count
    }
    
    // n번째 cell을 표현하는 방법
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie = movieDataManager.getMovieData()[indexPath.row]
        
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLabel.text = movie.movieName
        cell.descriptionLabel.text = movie.movieDescription
        cell.selectionStyle = .none
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    // 테이블 뷰에서 cell이 선택되어 작동하는 매서드
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetail", sender: indexPath)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! DetailViewController
            
            let array = movieDataManager.getMovieData()
            
            let indexPath = sender as! IndexPath
            
            detailVC.movieData = array[indexPath.row]   // 전달하기 원하는 데이터
        }
        
        
    }
    
    
    
}
