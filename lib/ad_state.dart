import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  Future<InitializationStatus> initialization;
  AdState(this.initialization);

  String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  AdListener get adListener => _adListener;

  AdListener _adListener = AdListener(
    onAdLoaded: (ad) => print('onAdLoaded'),
    onAdClosed: (ad) => print('onAdClosed'),
    onAdFailedToLoad: (ad, error) => print('onAdFailedToLoad'),
    onAdOpened: (ad) => print('onAdOpened'),
    onAppEvent: (ad, name, data) => print('onAppEvent'),
    onApplicationExit: (ad) => print('onApplicationExit'),
    onNativeAdClicked: (ad) => print('onNativeAdClicked'),
    onNativeAdImpression: (ad) => print('onNativeAdImpression'),
    onRewardedAdUserEarnedReward: (ad, reward) =>
        print('onRewardedAdUserEarnedReward'),
  );
}
