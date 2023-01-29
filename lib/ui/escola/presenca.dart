import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Presenca extends StatelessWidget {
  const Presenca({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(0xFF, 0x21, 0x48, 0x3F);

    const urlTCE = "http://www.tce.rn.gov.br/EscolaContas/ConfirmacaoPresenca";
    WebViewController? webViewController = WebViewController();
    webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    webViewController.setBackgroundColor(const Color(0x00000000));
    webViewController.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {
          if (url.contains(urlTCE)) {
            webViewController.runJavaScript(
                "var elem = document.getElementsByClassName('det-new-redes-socias')[0]; elem.parentNode.removeChild(elem);");
            webViewController.runJavaScript(
                "document.getElementById('menu-bg-right').style.display='none';");
            webViewController.runJavaScript(
                "document.getElementById('footer').style.display='none';");
            webViewController.runJavaScript(
                "document.getElementById('menu-institucional').style.display='none';");

            webViewController.runJavaScript(
                "document.getElementsByClassName('col-md-10')[0].style.display='none';");
            webViewController.runJavaScript(
                "document.getElementsByClassName('2 redesociaisright')[0].style.display='none';");
            webViewController.runJavaScript(
                "document.getElementsByClassName('col-md-3')[0].style.display='none';");
          }
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    );
    webViewController.loadRequest(Uri.parse(urlTCE));

    return Scaffold(
        appBar: AppBar(
          title: const Text("Confirmação de Presença"),
          backgroundColor: primaryColor,
        ),
        body: WebViewWidget(
          controller: webViewController,
        ));
  }
}
