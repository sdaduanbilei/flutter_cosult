import 'package:flutter/material.dart';

class ConsultList extends StatefulWidget {
  @override
  _ConsultListState createState() => _ConsultListState();
}
  
class _ConsultListState extends State<ConsultList> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.2,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
          actions: <Widget>[
            Icon(Icons.share, color: Colors.black,)
          ],
          title: Text('我的咨询', style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        body: Container(

          child: ListView(
            // 头部
            children: <Widget>[
              _buildConsultItem(),
              _buildConsultItem(),
              _buildConsultItem(),
              _buildConsultItem(),
              _buildConsultItem(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildConsultItem(){
    return Container(

      color: Colors.white,
      child: Column(
        children: <Widget>[
          _buildProductInfo(),
          _buildUserInfo(),
          _buildServerInfo(),
        ],
      ),
    );
  }

  /**
   * 商品头部
   */
  Widget _buildProductInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              children: <Widget>[
                Container(
                    width: 45,
                    height: 45,
                    child: Image.network(
                    'https://img2.ch999img.com/pic/product/160x160/20181203143906492.jpg')),
                Text(
                    'TicWatch Pro 4G版 幻影黑 '
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey,height: 2,)
        ],
      );
  }

  /**
   * 用户部分
   */
  Widget _buildUserInfo(){
    return Container(
      padding: const EdgeInsets.only(left:16.0,right: 16.0,top: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.25),
                  image: DecorationImage(
                    image: NetworkImage('https://avatars1.githubusercontent.com/u/3861614?s=400&u=5c6776ecc65a51ae166a6e22bf78523fb33ac1ae&v=4')
                  )
                ),

              ),

              Container(
                height: 45,
                margin: EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('t****9',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                    Text('定位准确嘛？',style: TextStyle(fontSize: 14,color: Colors.black),)
                  ],
                ),
              ),
              Spacer(),
              Text('2018-12-01',style: TextStyle(color: Colors.grey),),
            ],
          ),
          Divider(color: Colors.blueAccent),
        ],
      ),
    );
  }



// 客服答疑部门
  Widget _buildServerInfo(){
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.25),
                image: DecorationImage(
                    image: NetworkImage('https://img2.ch999img.com/newstatic/770/37d4da0c38ec3f.png')
                )
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '亲，IP68级防尘防水，生活防水是没有问题的，不能游泳或者洗澡的时候佩戴。 感谢您的关注，祝您生活愉快！',
                    style: TextStyle(color: Colors.blueAccent),

                  ),
                  Text(
                    '2018-12-02',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

