

class ScanUtils{


  /*
   * 扫描二维码
   */
  static void scanQRCode() async {
    // try {
    //   String barcode = await BarcodeScanner.scan();
    //   // Fluttertoast.showToast(msg: barcode);
    //
    //   ToastUtils.show( barcode);
    //   setState(() => this.barcode = barcode);
    // } on PlatformException catch (e) {
    //   if (e.code == BarcodeScanner.CameraAccessDenied) {
    //     setState(() {
    //       this.barcode = 'The user did not grant the camera permission!';
    //     });
    //   } else {
    //     setState(() => this.barcode = 'Unknown error: $e');
    //   }
    // } on FormatException {
    //   setState(() => this.barcode =
    //   'null (User returned using the "back"-button before scanning anything. Result)');
    // } catch (e) {
    //   setState(() => this.barcode = 'Unknown error: $e');
    // }
  }

}