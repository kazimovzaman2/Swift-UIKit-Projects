import UIKit
import OneSignalFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
    [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
          OneSignal.Debug.setLogLevel(.LL_VERBOSE)
          
          OneSignal.initialize("YOUR_ONESIGNAL_APP_ID", withLaunchOptions: launchOptions)
          
          OneSignal.Notifications.requestPermission({ accepted in
            print("User accepted notifications: \(accepted)")
          }, fallbackToSettings: true)
                
          return true
    }
  
}
