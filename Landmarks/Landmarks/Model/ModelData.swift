//
//  ModelData.swift..swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//
//  총체적 난국,, 각잡고 다시 봐야 할 듯.

import Foundation

var landmarks: [Landmark] = load("landmarkData.json") // landmarks 배열 선언

// 이게 뭐야;;; 지금 이해할 수 있는 게 아닌 듯,,,
// load 함수 정의 -> jason 파일 로드 해서 data로 파싱.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    // 파일 가드인 것 같다. 파일이 없거나 등등의 이유로 오류나면 경고메시지 출력하는 듯.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
