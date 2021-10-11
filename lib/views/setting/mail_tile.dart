import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/services/i18n_service.dart';

class MailTile extends StatelessWidget {
  const MailTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _mailUrl = 'cyan92128505@gmail.com';
    String _mailTo = 'mailto:$_mailUrl';

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.mail),
      ),
      title: Text(I18nService.of(context).getText(LangKey.contactUs)),
      subtitle: Text(_mailUrl),
      onTap: () async {
        if (await canLaunch(_mailTo)) {
          await launch(_mailTo);
        }
      },
    );
  }
}
