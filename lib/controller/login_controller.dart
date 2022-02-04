import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/models/check_password.dart';
import 'package:paylater_startup/models/content_data.dart';
import 'package:paylater_startup/models/image_data.dart';
import 'package:paylater_startup/models/user_data.dart';
import 'package:paylater_startup/util/constants.dart';

class LoginController extends GetxController{

  final _ph = ph;
  final _phDomain = domain;

  var check = CheckPassword(userData: UserModel(), responseCode: "919").obs;
  var showButton = RxBool(true).obs;
  var showButton2 = RxBool(true).obs;
  var showButton3 = RxBool(true).obs;
  var login = RxBool(false).obs;
  var imageData = ImageData().obs;

  //======== InfoController =================================

  Map contentDataMap = <String, ContentData>{};
  Map<String, ImageSimple> imageMap = <String, ImageSimple>{};
  var dataLength = 0.obs;
  var imageLength = 0.obs;

  bool dataAvailable(String key){
    return dataLength.value>0 && contentDataMap.containsKey(key)?true:false;
  }

  bool imageAvailable(String key){
    return imageLength.value>0 && imageMap.containsKey(key)?true:false;
  }

  //=========================================================


  var loginState = 0.obs;  // value 2 is successful login
  var views = "MAIN_PAGE".obs;

  void submitLogin(String _uname, String _password, String roles) async {

    var passBytes = utf8.encode(_password);
    var passDigest = sha256.convert(passBytes);

    CheckPassword checkPass = CheckPassword(
        userId: _uname, pass: passDigest.toString(), roles: roles, userData: UserModel());

    var url = Uri.parse(_ph + "/aut/pass");
    String json = jsonEncode(checkPass);

    //print(json);

    try {

      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };

      http.Response response = await http.post(url, body: json,
          headers: requestHeaders);

      loginState.value = 1;

      //print("response : ${response.body}");

      if (response.statusCode == 200) {
        check.value = CheckPassword.fromJson(jsonDecode(response.body));
        if (check.value.responseCode=="00"){
          CheckUser checkPassword2 = CheckUser.fromJson(jsonDecode(response.body));
          check.value.userData = checkPassword2.userData;
          login.value = RxBool(true);

          _getUserAvatar(_uname, check.value.token);
          loginState.value = 2;
          if(!check.value.userData.accountNonExpired){
            // views.value = "CHANGE_PWD_VIEW";
          } else {
            // views.value = "MAIN_PAGE";
          }

        } else {
          check.value = CheckPassword.fromJson(jsonDecode(response.body));
          login.value = RxBool(false);
          loginState.value = 3;
          // views.value = "SHOW_LOGIN_FAIL";
        }
      } else {
        check.value = CheckPassword.fromJson(jsonDecode(response.body));
        login.value = RxBool(false);
        loginState.value = 4;
        // views.value = "SHOW_LOGIN_ERROR";
      }

    } catch (e){

      check.value=CheckPassword(responseCode: '05', responseMessage: 'error', userData: UserModel());
      login.value = RxBool(false);
      loginState.value = 5;

      // views.value = "SHOW_LOGIN_ERROR";
      //print(e.toString());

    }

  }

  void _getUserAvatar(String userId, String token) async{

    imageData.value.available=false;

    Map<String, String> params = {
      'userid': userId,
      'token': token,
      'id': "useravatar_$userId",
    };

    Map<String, String> headers = {HttpHeaders.acceptHeader:"application/json",
      HttpHeaders.contentTypeHeader:"application/json"};

    var uri = Uri.https(_phDomain, "/img/get", params);

    try {

      http.Response response = await http.get(uri, headers: headers, );

      //print("avatar response : ${response.body}");

      if (response.statusCode == 200) {
        imageData.value = ImageData.fromJson(jsonDecode(response.body));
        var imageArray = imageData.value.content.split(",");
        imageData.value.content = imageArray[1];
        imageData.value.img = base64Decode(imageData.value.content);
        imageData.value.available=true;
        //print("at login : ${imageData.value.available}");
      } else {
        imageData.value = ImageData(name:"NA", content: response.statusCode.toString() + " : " + response.body);
      }
    } catch(e){
      imageData.value = ImageData(name:"NA", content: e.toString());
      //print("error : ${e.toString()}");
    }

  }
}