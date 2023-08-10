//
//  HealthStore.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 6.10.2022.
//
import Foundation
import HealthKit

extension Date {
    static func mondayAt12AM() -> Date {
        return Calendar(identifier: .iso8601).date(from: Calendar(identifier: .iso8601).dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date()))!
    }
}

class HealthStore: ObservableObject {
    
    var healthStore: HKHealthStore?
    var query: HKStatisticsCollectionQuery?
     
    init() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }
    
    func calculateSteps(completion: @escaping(HKStatisticsCollection?) -> Void) {
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        let kmType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!
        let energyBurned = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!
 
        let startDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())
 
        let anchorDate =  Date.mondayAt12AM()
 
        let daily = DateComponents(day: 1)
 
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictStartDate)
     
        query = HKStatisticsCollectionQuery(quantityType: stepType, quantitySamplePredicate: predicate, options: .cumulativeSum, anchorDate: anchorDate, intervalComponents: daily)
 
        query!.initialResultsHandler = { query, statisticsCollection, error in
            completion(statisticsCollection)
        }
        
        if let healthStore = healthStore{
            DispatchQueue.main.async {
                let query = self.query
                healthStore.execute(query!)
            }
        }
    }
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        
        guard let  healthStore = self.healthStore else {
            return completion(false)
        }
            
        healthStore.requestAuthorization(toShare: [], read: [stepType]) { (success, error) in
            completion(success)
        }
    }
    
    func getStepsTodayUntilNow(completion: @escaping (Double?, Error?) -> Void) {
        guard let type = HKQuantityType.quantityType(forIdentifier: .stepCount) else {
            return completion(nil, NSError(domain: "com.myapp", code: 1, userInfo: [NSLocalizedDescriptionKey: "Steps count not available"]))
        }
        
        let now = Date()
        let startOfDay = Calendar.current.startOfDay(for: now)
        let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: now, options: .strictEndDate)
        let query = HKStatisticsQuery(quantityType: type, quantitySamplePredicate: predicate, options: .cumulativeSum) { (_, result, error) in
            guard let result = result, let sum = result.sumQuantity() else {
                return completion(nil, error)
            }
            
            completion(sum.doubleValue(for: HKUnit.count()), nil)
        }
        healthStore?.execute(query)
    }
}
/*import Foundation
import HealthKit

 extension Date{
    static func mondayAt12AM() -> Date {
       return Calendar(identifier: .iso8601).date(from: Calendar(identifier:.iso8601).dateComponents([.yearForWeekOfYear, .weekOfYear],from: Date()))!
    }
 }

 class HealthStore {
    var healthStore: HKHealthStore?
    var query: HKStatisticsCollectionQuery?
     
    init(){
        if HKHealthStore.isHealthDataAvailable(){
            healthStore = HKHealthStore()
        }
    }
   func calculateSteps(completion: @escaping(HKStatisticsCollection?) -> Void){
 
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        let kmType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!
        let energyBurned = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!
 
        let startDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())
 
        let anchorDate =  Date.mondayAt12AM()
 
        let daily = DateComponents(day:1)
 
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictStartDate)
     
      query = HKStatisticsCollectionQuery(quantityType: stepType, quantitySamplePredicate: predicate, options: .cumulativeSum, anchorDate: anchorDate, intervalComponents: daily)
 
      query!.initialResultsHandler = { query, statisticsCollection, error in
         completion(statisticsCollection)
     }
     if let healthStore = healthStore, let query = self.query {
        healthStore.execute(query)
      }
    }
     

    func requestAuthorization(completion: @escaping (Bool) -> Void){
        
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        
        guard let  healthStore = self.healthStore else {return completion(false)}
            
        healthStore.requestAuthorization(toShare: [], read: [stepType]) { (success, error) in
            completion(success)
          }
        }
     
    }*/
    

