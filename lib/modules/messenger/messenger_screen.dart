import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/user/user_model.dart';

class MessengerScreen extends StatelessWidget{
  List<UserModel> users = [
    UserModel(
      userName: 'user 1',
      message: 'Hello 1',
      userImage: 'https://img.freepik.com/free-vector/cute-astronaut-working-laptop-cartoon-vector-icon-illustration_138676-3472.jpg?size=338&ext=jpg&ga=GA1.2.647255339.1639699200',
    ),
    UserModel(
      userName: 'user 2',
      message: 'Hello 2',
      userImage: 'https://i.guim.co.uk/img/media/c8b1d78883dfbe7cd3f112495941ebc0b25d2265/256_0_3840_2304/master/3840.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=579884b0bd058f1350519d3cc586d587',
    ),
    UserModel(
      userName: 'user 3',
      message: 'Hello 3',
      userImage: 'https://i.ytimg.com/vi/E_lByLdKeKY/maxresdefault.jpg',
    ),
    UserModel(
      userName: 'user 4',
      message: 'Hello 4',
      userImage: 'https://img.freepik.com/free-vector/cute-swag-polar-bear-with-hat-gold-chain-necklace-cartoon-illustration-flat-cartoon-style_138676-2719.jpg?size=338&ext=jpg&ga=GA1.1.1419013925.1643500800',
    ),
    UserModel(
      userName: 'user 5',
      message: 'Hello 5',
      userImage: 'https://cdn.dribbble.com/users/3986931/screenshots/11938347/c_1_4x.jpg',
    ),
    UserModel(
      userName: 'user 6',
      message: 'Hello 6',
      userImage: 'https://m.media-amazon.com/images/I/71hMEM1a9EL._SL1500_.jpg',
    ),
    UserModel(
      userName: 'user 7',
      message: 'Hello 7',
      userImage: 'https://img.freepik.com/free-vector/cute-monkey-playing-skateboard-cartoon-vector-icon-illustration-animal-sport-icon-concept-isolated-premium-vector-flat-cartoon-style_138676-3516.jpg?size=338&ext=jpg',
    ),
    UserModel(
      userName: 'user 8',
      message: 'Hello 8',
      userImage: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/21/08/maya-and-bee.jpg?quality=75&width=982&height=726&auto=webp',
    ),
    UserModel(
      userName: 'user 9',
      message: 'Hello 9',
      userImage: 'https://wallpaperaccess.com/full/749909.jpg',
    ),
    UserModel(
      userName: 'user 10',
      message: 'Hello 10',
      userImage: 'https://static.toiimg.com/thumb/msid-88877183,width-900,height-1200,imgsize-29846,resizemode-6.cms',
    ),
    UserModel(
      userName: 'user 11',
      message: 'Hello 11',
      userImage: 'https://mtv.mtvnimages.com/uri/mgid:ao:image:mtv.com:92109?quality=0.8&format=jpg&width=1440&height=810&.jpg',
    ),
    UserModel(
      userName: 'user 12',
      message: 'Hello 12',
      userImage: 'https://i.pinimg.com/736x/ea/69/dc/ea69dc6226e72a33f82d3add20b470df.jpg',
    ),
  ];
  Widget storyItems() => Row(
    children: [
      Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-vector/cute-astronaut-working-laptop-cartoon-vector-icon-illustration_138676-3472.jpg?size=338&ext=jpg&ga=GA1.2.647255339.1639699200'),
                ),
                //Online or Offline User
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.8,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              'Heba Esmael Mohammed',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
      SizedBox(
        width: 15.0,
      ),
    ],
  );
  Widget chatItems(UserModel user) => Column(
    children: [
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('${user.userImage}'),
              ),
              //Online or Offline User
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  radius: 7.8,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.userName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.blueGrey[700],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${user.message}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.0,
                      ),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      child: Text(
                        '12:00 AM',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
      SizedBox(
        height: 20.0,
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://img.freepik.com/free-vector/cute-astronaut-working-laptop-cartoon-vector-icon-illustration_138676-3472.jpg?size=338&ext=jpg&ga=GA1.2.647255339.1639699200'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions:  [
          IconButton(
            onPressed: (){
              print('Hello From Camera !');
            },
            icon: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 15.0,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: (){
              print('Hello From Editing !');
            },
            icon: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 15.0,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[300],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Search..',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                height: 120.0,
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return storyItems();
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return chatItems(users[index]);
                },
                //scrollDirection: Axis.vertical,
                itemCount: users.length,
              ),

            ],
          ),
        ),
      ),
    );
  }

}