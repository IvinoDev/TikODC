import 'package:tikodc/models/user.dart';

import '../models/video.dart';

User user1 = User('little_witch_',
    'https://p16.tiktokcdn.com/tos-maliva-avt-0068/9f59a7016065f7ab56c177faa517f14d~c5_720x720.webp?x-expires=1667589700&x-signature=i3WY7K5VjUeOjIJnzAkKZa1zPcu%3D');

User user2 = User('snauzk',
    'https://p16-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/dad02241bb9dc39372bc37121e998ba6.jpeg');

User user3 = User('amyslisz',
    'https://p16.tiktokcdn.com/tos-maliva-avt-0068/0a4c9807699ab0216a6dc80a1e5a2646~c5_720x720.webp?x-expires=1667589200&x-signature=cw1wagUBtHvZ3x2qp4V5XCQx0C3%3D');

User user4 = User('msyafihakim',
    'https://p16.tiktokcdn.com/tos-useast2a-avt-0068-giso/9ee38ae8b0f1ec898d225c81f991b63b~c5_720x720.jpeg');

User user5 = User('jade13tr',
    'https://p16.tiktokcdn.com/tos-maliva-avt-0068/63e3d68d23bc2a52a844a0e50f7daf99~c5_720x720.webp?x-expires=1667591300&x-signature=FUO6Qlf514yspB7I2PQbClhCJgy%3D');


final List<Video> videos = [
  Video(
      'littlewitch.mp4',
      user1,
      'bon débarras asta la vista 🤣🤣 #bamakomali🇲🇱 #mariage #wedding',
      'La Bonne époque - original sound - la.bonnepoque',
      '265.22K',
      '22.11K',
      '296',
      '174'),
  Video('snauzk.mp4',
      user2,
      '#anime #anime_edit #otaku', 
      'tourner dans le vide - indila',
      '11K',
      '458', 
      '0', 
      '0'),
  Video('amyslisz.mp4',
       user3,
      'Seeing how many tricks our cat can learn! New trick is at the end! #cattricks',
      'Amy Slisz - original sound - amyslisz',
      '15.75M', 
      '2.45M', 
      '28.3K', 
      '183.09K'),
  Video(
      'msyafihakim.mp4',
      user4,
      'Flexible time + as well bro 🤫🤫 #programming #programmer #malaysia #developer #malaysiatiktok #viral',
      'cutepicsofwillow - original sound',
      '463.41K',
      '39.32K',
      '313',
      '465'),
  Video('jade13tr.mp4',
         user5,
        'feeling the vibe #cats #catsdoingthings',
        'ltsyameme - original sound',
        '2.93K',
        '79',
        '2',
        '23'),
];
