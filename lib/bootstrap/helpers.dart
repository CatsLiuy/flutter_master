import 'package:app/fluttersignal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/user.dart';
import 'package:flutter_master/bootstrap/shared_pref/shared_key.dart';
import '/resources/themes/styles/color_styles.dart';
import '/config/decoders.dart';
import '/config/events.dart';
import 'package:nylo_framework/nylo_framework.dart';

// Add your helper methods here
// ...


Future<User?> getUser() async =>
    (await (NyStorage.read<User>(SharedKey.authUser)));

Future appSignal(Function(FlutterSignal api) api) async {
  return await api(FlutterSignal.instance);
}

/// helper to find correct color from the [context].
class ThemeColor {
  static ColorStyles get(BuildContext context, {String? themeId}) =>
      nyColorStyle<ColorStyles>(context, themeId: themeId);

  static Color fromHex(String hexColor) => nyHexColor(hexColor);
}

/// API helper
api<T>(dynamic Function(T request) request,
        {BuildContext? context,
        Map<String, dynamic> headers = const {},
        String? bearerToken,
        String? baseUrl,
          int? page,
          String? queryNamePage,
          String? queryNamePerPage,
          int? perPage,
        List<Type> events = const []}) async =>
    await nyApi<T>(
        request: request,
        apiDecoders: apiDecoders,
        context: context,
        headers: headers,
        bearerToken: bearerToken,
        baseUrl: baseUrl,
        events: events,
        page: page,
      perPage: perPage,
      queryParamPage: queryNamePage ?? "page",
      queryParamPerPage: queryNamePerPage
    );

/// Event helper
event<T>({Map? data}) async => await nyEvent<T>(params: data, events: events);

navigatorPush(BuildContext context,
    {required String routeName,
      Object? arguments,
      bool forgetAll = false,
      int? forgetLast}) {
  if (forgetAll) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }
  if (forgetLast != null) {
    int count = 0;
    Navigator.of(context).popUntil((route) {
      return count++ == forgetLast;
    });
  }
  Navigator.of(context).pushNamed(routeName, arguments: arguments);
}

checkImagePath(String skuImage){
  String imagePath = '';
  if(!skuImage.startsWith("http")){
    imagePath = '${getEnv('APP_ASSET_URL')}/${skuImage}';
  }
  return imagePath ;
}