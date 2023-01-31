import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PainelObras extends StatelessWidget {
  const PainelObras({super.key});

  @override
  Widget build(BuildContext context) {
    const urlTCEBiObras =
        "https://app.powerbi.com/view?r=eyJrIjoiOTliZDU3NTYtNTM3Mi00MTgxLWI1MjAtOTY2ZTM4NmYwYjFlIiwidCI6ImRmMzBiMzI3LWVlNWMtNDdlZS1iNTljLTM5NTJiZjNiZDBiMyJ9";
    WebViewController? webViewController = WebViewController();
    webViewController.loadRequest(Uri.parse(urlTCEBiObras));
    webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    webViewController.setBackgroundColor(const Color(0x00000000));
    webViewController.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("Painel de Obras"),
          backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
        ),
        body: WebViewWidget(
          controller: webViewController,
        ));
  }
}
