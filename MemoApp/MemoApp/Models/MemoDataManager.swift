//
//  MemoDataManager.swift
//  MemoApp
//
//  Created by shinyoungkim on 2/27/25.
//

import Foundation

class MemoDataManager {
    private var memoDataArray: [String] = []
    
    func getMemoData() -> [String] {
        memoDataArray = UserDefaults.standard.array(forKey: "memoData") as? [String] ?? []
        return memoDataArray
    }
    
    func setMemoData(_ memo: String) {
        memoDataArray.append(memo)
        UserDefaults.standard.set(memoDataArray, forKey: "memoData")
    }
    
    func removeMemoData(at index: Int) {
        memoDataArray.remove(at: index)
        UserDefaults.standard.set(memoDataArray, forKey: "memoData")
    }
}
