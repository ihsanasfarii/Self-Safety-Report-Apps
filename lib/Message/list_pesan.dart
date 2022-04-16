class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Akbar Putra",
    lastMessage: "Kabar gw aman ko skrang",
    image: "assets/images/Akbar.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Adam Firdaus",
    lastMessage: "Gppa ko santai",
    image: "assets/images/Adam.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Rizal Maidan",
    lastMessage: "otw kesana",
    image: "assets/images/Rizal.png",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Rizky Naufal",
    lastMessage: "Okeedeh",
    image: "assets/images/Rizky.png",
    time: "5d ago",
    isActive: true,
  ),
];
