import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PainelTransparencia extends StatelessWidget {
  const PainelTransparencia({super.key});

  @override
  Widget build(BuildContext context) {
    const urlTCEBiTransparencia =
        "https://app.powerbi.com/view?r=eyJrIjoiMTY0OTZkYjItNjc0YS00ZTQ0LTlhZTAtODhjNTkxOGE2ZTYyIiwidCI6ImRmMzBiMzI3LWVlNWMtNDdlZS1iNTljLTM5NTJiZjNiZDBiMyJ9";
    WebViewController? webViewController = WebViewController();
    webViewController.loadRequest(Uri.parse(urlTCEBiTransparencia));
    webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    webViewController.setBackgroundColor(const Color(0x00000000));
    webViewController.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {},
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
          title: const Text("Painel da Transparência"),
          backgroundColor: const Color.fromARGB(0xFF, 0x21, 0x48, 0x3F),
        ),
        body: WebViewWidget(controller: webViewController));
  }
}
