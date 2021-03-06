import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplaza/const/colors.dart';
import 'package:shoplaza/views/HomeLayout/cubit.dart';
import 'package:shoplaza/views/carts/view.dart';
import 'package:shoplaza/views/search/view.dart';

Widget homeAppBar(context) => AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu_open),
        onPressed: () {
          HomeLayoutCubit.scaffoldKey.currentState.openDrawer();
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartView(),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeSearchView(),
                )),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ],
      backgroundColor: redColor,
      elevation: 0,
    );
