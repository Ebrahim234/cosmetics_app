import 'package:cosmetics/core/logic/dio_helper.dart';
import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/core/ui/app_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/logic/helper_methods.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<CategoriesModel>? list;
  bool isLoading = true;

  Future<void> getData() async {
    final resp = await DioHelper.getData(path: "api/Categories");
    if (resp.isSuccess) {
      list = CategoriesData.fromJson({"list": resp.data}).list;
    } else {
      showMsg(resp.msg ?? "Something went wrong", isError: true);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    if (list == null) {
      return Center(child: Text("No data was sent"));
    }
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                AppSearch(),
                SizedBox(height: 32.h),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list!.length,
                  itemBuilder: (context, index) {
                    return _item(model: list![index]);
                  },
                  separatorBuilder: (context, index) => Column(
                    children: [
                      SizedBox(height: 10.h),
                      Divider(color: Color(0x434C6D8C)),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _item extends StatelessWidget {
  final CategoriesModel model;

  const _item({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AppImage(
            image: model.imageUrl,
            height: 69.h,
            width: 64.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            model.title,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: AppImage(image: "arrow_right.svg", height: 24, width: 24),
        ),
      ],
    );
  }
}

class CategoriesData {
  late final List<CategoriesModel> list;

  CategoriesData.fromJson(Map<String, dynamic> json) {
    list = List.from(
      json['list'],
    ).map((e) => CategoriesModel.fromJson(e)).toList();
  }
}

class CategoriesModel {
  late final int id;
  late final String title;
  late final String imageUrl;

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imageUrl = json['imageUrl'];
  }
}
