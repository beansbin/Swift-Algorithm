func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var citys = cities.map {$0.lowercased()}
    var result = 0
    var cache: [String] = []
    var cacheCount: [Int] = []
    
    if cacheSize == 0 {
        return cities.count * 5
    }
    
    for item in citys {
        if cache.contains(item) {
            result += 1
            var index = cache.firstIndex(of: item)!
            cacheCount[index] += 1
            cache.append(item)
            cacheCount.append(cacheCount[index])
            cache.remove(at: index)
            cacheCount.remove(at: index)
        } else {
            result += 5
            if cache.count == cacheSize {
                cache.remove(at: 0)
                cacheCount.remove(at: 0)
            }
            cache.append(item)
            cacheCount.append(0)
        }
    }
    return result
}
