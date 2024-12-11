import UIKit
import OneSignalFramework


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
    [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
      // Remove this method to stop OneSignal Debugging
      OneSignal.Debug.setLogLevel(.LL_VERBOSE)
      
      // OneSignal initialization
      OneSignal.initialize("YOUR_ONESIGNAL_APP_ID", withLaunchOptions: launchOptions)
      
      // requestPermission will show the native iOS notification permission prompt.
      // We recommend removing the following code and instead using an In-App Message to prompt for notification permission
      OneSignal.Notifications.requestPermission({ accepted in
        print("User accepted notifications: \(accepted)")
      }, fallbackToSettings: true)

      return true
    }

}
