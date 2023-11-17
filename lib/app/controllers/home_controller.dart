import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/user.dart';
import 'package:flutter_master/app/networking/api_service.dart';
import '/resources/widgets/logo_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'controller.dart';

class HomeController extends Controller {

  ApiService _apiService = ApiService();

  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  onTapDocumentation() async {
    await launchUrl(Uri.parse("https://nylo.dev/docs"));
  }

  onTapGithub() async {
    await launchUrl(Uri.parse("https://github.com/nylo-core/nylo"));
  }

  onTapChangeLog() async {
    // await launchUrl(Uri.parse(
    //     "https://github.com/nylo-core/framework/blob/5.x/CHANGELOG.md"));

    dynamic users = await _apiService.fetchUsers('get');
    print('fetchUsers 2 ${users}');
  }

  onTapYouTube() async {
    await launchUrl(Uri.parse("https://m.youtube.com/@nylo_dev"));
  }

  showAbout() {
    showAboutDialog(
        context: context!,
        applicationName: getEnv('APP_NAME'),
        applicationIcon: Logo(),
        applicationVersion: nyloVersion,
    );
  }
}
