//
//  ModelData.swift..swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")   // landmarks 배열 선언
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured } // isFeatured 가 ture인 배열
    }
    
    var categories :[String: [Landmark]]{
        Dictionary(
            grouping: landmarks,  // grouping 할 배열을 grouping 파라미터로 넣어주고
            by: {$0.category.rawValue}  // by에서 어떤 값을 기준(Key)으로 Value들을 그룹핑 할지 결정. rawValue는 열거형에서
        )
    }
}

// load 함수 정의 -> jason 파일 로드 해서 data를 struct로 파싱(decode).
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    // 파일 가드인 것 같다. 파일이 없거나 등등의 이유로 오류나면 경고메시지 출력하는 듯.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    // 파일 로드. data 로드
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    // decode. return 문으로 data를 decode(struct로 파싱) 한 것을 반환한다.
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
