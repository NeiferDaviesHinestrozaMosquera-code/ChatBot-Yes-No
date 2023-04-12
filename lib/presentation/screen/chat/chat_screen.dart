import 'package:flutter/material.dart';
import 'package:yesno/presentation/widget/chat/her_message_bubble.dart';
import 'package:yesno/presentation/widget/chat/my_message_bubble.dart';
import 'package:yesno/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://elcomercio.pe/resizer/yHlVmeje9JdLEROBvNgsdoVpwRs=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KRKOINCP7JGR7KWT4HNBDSJPDA.jpg'),
          ),
        ),
        title: Text('<3'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return (index % 2 == 0) //ESTO ES UN TERNARIO
                    ? HerMessageBubble()
                    : MyMessageBubble();
              },
            )),

            ///CAJA DE TEXTO
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
