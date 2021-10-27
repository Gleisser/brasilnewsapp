import 'package:brasilnews/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class LoadingHomeWidget extends StatelessWidget {
  const LoadingHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: ShimmerWidget.rectangular(
              height: 20,
              width: 150,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            color: Colors.grey.shade400,
            child: ShimmerWidget.rectangular(height: 40),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ShimmerWidget.rectangular(
                    height: 40,
                    width: 100,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: ShimmerWidget.rectangular(
              height: 20,
              width: 150,
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ShimmerWidget.rectangular(
                    height: 100,
                    width: 180,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: ShimmerWidget.rectangular(
              height: 20,
              width: 150,
            ),
          ),
          Container(
            height: 65,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ShimmerWidget.circular(
                    height: 64,
                    width: 64,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: ShimmerWidget.rectangular(
              height: 20,
              width: 150,
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 5),
                  child: ShimmerWidget.rectangular(
                    height: 100,
                    width: 100,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
