import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ToastService {
// this will show the loading indicator while we are rinnning some big tasks
  void showLoadingIndicator() {
    BotToast.showCustomLoading(
      toastBuilder: (_) {
        return Container(
          width: 200,
          height: 120,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Center(child: CircularProgressIndicator()),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('Loading...')),
            ],
          ),
        );
      },
      clickClose: true,
    );
  }
}
