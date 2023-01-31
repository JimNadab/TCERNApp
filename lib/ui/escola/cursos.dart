import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Cursos extends StatelessWidget {
  const Cursos({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(0xFF, 0x21, 0x48, 0x3F);

    const urlTCE = "http://www.tce.rn.gov.br/EscolaContas/CursosRealizados";
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

            webViewController.runJavaScript(
                "document.getElementsByClassName('col-md-9')[0].style.position='relative';");
            webViewController.runJavaScript(
                "document.getElementsByClassName('col-md-9')[0].style.right='8px';");
            webViewController.runJavaScript(
                "document.getElementsByClassName('dataTables_wrapper')[0].style.position='relative';");
            webViewController.runJavaScript(
                "document.getElementsByClassName('dataTables_wrapper')[0].style.right='21px';");
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
          title: const Text("Cursos"),
          backgroundColor: primaryColor,
        ),
        body: WebViewWidget(
          controller: webViewController,
        ));
  }
}
