//
//  AppDelegate + UserNotificationDelegate.swift
//  HW_16
//
//  Created by Wishell on 29.11.2018.
//  Copyright © 2018 Wishell. All rights reserved.
//

import Foundation
import UserNotifications

extension AppDelegate: UNUserNotificationCenterDelegate {

    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(.alert)
    }

    func scheduleLocalNotification() {
        let notificationContent = UNMutableNotificationContent()

        // Configure Notification Content
        notificationContent.title = "WishellNotification"
        notificationContent.subtitle = "Local Notifications"
        notificationContent.body = "Data were upload"

        // Add Trigger
        let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)

        // Create Notification Request
        let notificationRequest = UNNotificationRequest(identifier: "WishellNotification", content: notificationContent, trigger: notificationTrigger)

        // Add Request to User Notification Center
        UNUserNotificationCenter.current().add(notificationRequest) { (error) in
            if let error = error {
                print("Unable to Add Notification Request (\(error), \(error.localizedDescription))")
            }
        }
    }

}
