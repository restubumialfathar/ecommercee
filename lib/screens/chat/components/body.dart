import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _messages.add({"sender": "user", "text": _controller.text.trim()});
      });
      _controller.clear();
      _autoReply();
    }
  }

  void _autoReply() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _messages.add({"sender": "bot", "text": _generateReply()});
      });
    });
  }

  String _generateReply() {
    if (_messages.isNotEmpty) {
      String lastMessage = _messages.last["text"] ?? "";
      if (lastMessage.toLowerCase().contains("halo")) {
        return "Halo! Ada yang bisa saya bantu?";
      } else if (lastMessage.toLowerCase().contains("makanan")) {
        return "Apakah kamu mencari rekomendasi makanan?";
      } else if (lastMessage.toLowerCase().contains("minuman")) {
        return "Apakah kamu mencari rekomendasi minuman?";
      } else if (lastMessage.toLowerCase().contains("oi")) {
        return "apa";
      } else if (lastMessage.toLowerCase().contains("dev")) {
        return "follow @alfajwaj";
      } else if (lastMessage.toLowerCase().contains("help")) {
        return "keyword = [ halo / makanan / minuman / dev / desc ]";
      } else if (lastMessage.toLowerCase().contains("desc")) {
        return "ini adalah project skl(syarat kelulusan) dari sekolah kami yang dimana kami mengharuskan untuk membuat sebuah aplikasi ui ecommerce dengan beberapa fitur tertentu, disini saya tidak mengerjakannya sendirian tetapi juga dibantu oleh guru saya dan juga teman saya.";
      } 
    }
    return "ketik help untuk petunjuk";
  }

  void _deleteMessage(int index) {
    setState(() {
      _messages.removeAt(index);
    });
  }

  void _showDeleteDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Hapus Pesan"),
          content: const Text("Apakah Anda yakin ingin menghapus pesan ini?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Batal"),
            ),
            TextButton(
              onPressed: () {
                _deleteMessage(index);
                Navigator.of(context).pop();
              },
              child: const Text("Hapus"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                bool isUser = _messages[index]["sender"] == "user";
                return GestureDetector(
                  onLongPress: () => _showDeleteDialog(index), // Long press untuk hapus
                  child: Align(
                    alignment:
                        isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: isUser ? Color.fromARGB(255, 23, 36, 29) : Color.fromARGB(255, 12, 80, 47),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        _messages[index]["text"]!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Ketik pesan...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blue),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
