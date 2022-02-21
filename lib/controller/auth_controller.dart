import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:paylater_startup/controller/user_controller.dart';
import 'package:paylater_startup/models/check_password.dart';
import 'package:paylater_startup/models/content_data.dart';
import 'package:paylater_startup/models/image_data.dart';
import 'package:paylater_startup/models/user_data.dart';
import 'package:paylater_startup/util/constants.dart';

class AuthController extends GetxController{

  final _ph = ph;
  final _phDomain = domain;

  UserController _user = Get.put(UserController());

  var check = CheckPassword(userData: UserModel(), responseCode: "919").obs;
  var showButton = RxBool(true).obs;
  var showButton2 = RxBool(true).obs;
  var showButton3 = RxBool(true).obs;
  var login = RxBool(false).obs;
  var imageData = ImageData().obs;
  var userData = UserModel(responseCode: "909").obs;

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

  UserModel get user => _user.user;

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

    // print(json);

    try {

      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };

      http.Response response = await http.post(url, body: json,
          headers: requestHeaders);

      print(response.body);

      loginState.value = 1;

      //print("response : ${response.body}");

      if (response.statusCode > 399) {
        check.value = CheckPassword.fromJson(jsonDecode(response.body));
        login.value = RxBool(false);
        loginState.value = 4;
        // views.value = "SHOW_LOGIN_ERROR";
      } else {

        check.value = CheckPassword.fromJson(jsonDecode(response.body));
        if (check.value.responseCode!="00"){

          check.value = CheckPassword.fromJson(jsonDecode(response.body));
          login.value = RxBool(false);
          loginState.value = 3;

          // print(check.value.responseCode);
          // views.value = "SHOW_LOGIN_FAIL";

        } else {
          CheckUser checkPassword2 = CheckUser.fromJson(jsonDecode(response.body));
          check.value.userData = checkPassword2.userData;
          login.value = RxBool(true);

          _getUserAvatar(_uname, check.value.token);
          loginState.value = 2;
          userData.value = checkPassword2.userData;
          _user.user = userData.value;
          /*if(!check.value.userData.accountNonExpired){
            // views.value = "CHANGE_PWD_VIEW";
          } else {
            // views.value = "MAIN_PAGE";
          }*/
        }
      }

    } catch (e){

      check.value=CheckPassword(responseCode: '05', responseMessage: 'error', userData: UserModel());
      login.value = RxBool(false);
      loginState.value = 5;

      // views.value = "SHOW_LOGIN_ERROR";
      //print(e.toString());

    }

  }

  void submitRegistration(String email, String _passRef, String _password) async {

    if(_passRef != _password){
      userData.value.responseCode="39";
      userData.value.responseMessage="sandi tidak sama";
      return;
    }

    RegistrationModel regModel = RegistrationModel(
      userId: email,
      roles: "ROLE_USER",
    );

    var passBytes = utf8.encode(_password);
    var passDigest = sha256.convert(passBytes);
    regModel.imei = platformType();
    regModel.type = "SIMPLE_REG";
    regModel.pass = passDigest.toString();

    var url = Uri.parse(_ph + "/registration/simple/register");
    String json = jsonEncode(regModel);

    //print(json);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    try{

      http.Response response = await http.post(url, body: json, headers: requestHeaders);

      print('submit reg : status ${response.statusCode} : ${response.body}');

      if(response.statusCode!=200){
        // regState.value = 3;
        userData.value.responseCode=response.statusCode.toString();
        userData.value.responseMessage= "I'm sorry there's an error on our part, please try again";
        // views.value = "REG_FAIL";
        Get.snackbar("Failed to Register", userData.value.responseMessage, snackPosition: SnackPosition.BOTTOM);
      } else {
        userData.value = UserModel.fromJson(jsonDecode(response.body));
        if(userData.value.responseCode!='00'){
          // regState.value = 1;
          // views.value = "REG_FAIL";
          Get.snackbar("Failed to Register", userData.value.responseMessage, snackPosition: SnackPosition.BOTTOM);
          // _loginController.views.value = "MAIN_PAGE_OFF";
        } else {
          _user.user = userData.value;
          Get.back();
        }
      }

    } catch(e){
      // regState.value = 4;
      userData.value.responseCode="403";
      userData.value.responseMessage= "Error : " + e.toString();
      views.value = "REG_ERROR";
      Get.snackbar("Failed to Register", userData.value.responseMessage, snackPosition: SnackPosition.BOTTOM);
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

  String platformType(){

    if (kIsWeb) {
      return "web";
    } else {
      if (Platform.isAndroid) {
        return "android";
      } else if (Platform.isIOS) {
        return "ios";
      } else if (Platform.isLinux) {
        return "linux";
      } else if (Platform.isMacOS) {
        return "macos";
      } else if (Platform.isWindows) {
        return "window";
      } else {
        return "not known";
      }
    }

  }
}