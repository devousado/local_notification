import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void initNofication() async {
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('mipmap/ic_launcher');

    InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  void displayNotifcation() async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "2",
      "noficacao local",
      importance: Importance.high,
      playSound: true,
    );
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );
    await flutterLocalNotificationsPlugin.show(
        2, "ola felizardo", "como tu estats", notificationDetails,
        payload: "ola mundo");
  }
}
