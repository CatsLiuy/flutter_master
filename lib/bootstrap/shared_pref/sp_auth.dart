//  Label StoreMax
//
//  Created by Anthony Gordon.
//  2023, WooSignal Ltd. All rights reserved.
//

//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

import 'package:flutter/cupertino.dart';
import 'package:flutter_master/bootstrap/helpers.dart';
import 'package:flutter_master/bootstrap/shared_pref/shared_key.dart';
import 'package:nylo_framework/nylo_framework.dart';

Future<bool> authCheck() async => ((await getUser()) != null);

Future<String?> readAuthToken() async => (await getUser())!.name;

Future<int?> readUserId() async => (await getUser())!.id;

authLogout(BuildContext context) async {
  await NyStorage.delete(SharedKey.authUser);
  navigatorPush(context, routeName: "/shop", forgetAll: true);
}
