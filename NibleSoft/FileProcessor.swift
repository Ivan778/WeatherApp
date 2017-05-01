//
//  FileProcessor.swift
//  NibleSoft
//
//  Created by Иван on 01.05.17.
//  Copyright © 2017 IvanCode. All rights reserved.
//

import Foundation

public class FileProcessor {
    //Путь к папке с документами
    class func documentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    //Путь к файлу Checklist.plist, в котором мы будем хранить наши дела
    class func dataFilePath() -> URL {
        return documentsDirectory().appendingPathComponent("PreviousRequests.plist")
    }
    
    //Сохраняет в файл предыдущие запросы
    class func saveChecklistItems(items: [[String: String]]) {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        
        archiver.encode(items, forKey: "PreviousRequests")
        archiver.finishEncoding()
        data.write(to: dataFilePath(), atomically: true)
    }
    
    //Считывает из файла предыдущие запросы
    class func loadChecklistItems() -> [[String: String]] {
        var items = [[String: String]]()
        
        let path = dataFilePath()
        
        if let data = try? Data(contentsOf: path) {
            let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
            items = unarchiver.decodeObject(forKey: "PreviousRequests") as! [[String: String]]
            unarchiver.finishDecoding()
        }
        
        return items
    }
    
}
