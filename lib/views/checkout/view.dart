import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_button/view.dart';
import 'package:cosmetics/views/checkout/widgets/checkout_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/views/home/cart/view.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0XFF1010100D),
                      radius: 20.r,
                      child: IconButton(
                        onPressed: () {
                          //
                          goTo(CartView());
                        },
                        icon: AppImage(
                          image: "arrowleft.svg",
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                    SizedBox(width: 80.w),
                    Text(
                      "Checkout",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                  color: Color(0x43c0dcdf),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery to",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Center(
                        child: Container(
                          width: 340.w,
                          height: 84.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Color(0xff73B9BB)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 97.w,
                                  child: GoogleMap(
                                    initialCameraPosition: CameraPosition(
                                      target: LatLng(31.0409, 31.3785),
                                      zoom: 8,
                                    ),
                                    zoomControlsEnabled: false,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Home",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp,
                                        color: Color(0xff434C6D),
                                      ),
                                    ),
                                    Text(
                                      "Mansoura, 14 Porsaid St",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10.sp,
                                        color: Color(0xff8E8EA9),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20.w),
                                IconButton(
                                  onPressed: () {},
                                  icon: AppImage(
                                    image: "arrow_down.svg",
                                    height: 22.h,
                                    width: 22.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 18.h),
                      CheckoutContainer(
                        radius: 40.r,
                        widget: Row(
                          children: [
                            AppImage(
                              image: "visa.svg",
                              height: 20.h,
                              width: 30.w,
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: Text(
                                  "Select Payment",
                                  style: TextStyle(
                                    color: Color(0xff434C6D),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                value: selectedValue,
                                items: const [
                                  DropdownMenuItem(
                                    value: "Visa",
                                    child: Text("Visa"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Cash",
                                    child: Text("Cash"),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.h),
                      CheckoutContainer(
                        radius: 40.r,
                        widget: Row(
                          children: [
                            AppImage(
                              image: "voucher.svg",
                              height: 24.h,
                              width: 24.w,
                              color: Color(0xff434C6D),
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Add voucher",
                                  hintStyle: TextStyle(
                                    color: Color(0xff434C6D),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                            FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                fixedSize: Size(90.w, 50.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                              ),
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text("_ " * 100, maxLines: 1),
                      SizedBox(height: 30.h),
                      Text(
                        "- REVIEW PAYMENT",
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      Text(
                        "PAYMENT SUMMARY",
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Subtotal"), Text("161.00 EGP")],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SHIPPING FEES"),
                          Text("TO BE CALCULATED"),
                        ],
                      ),
                      Divider(color: Color(0xff73B9BB)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("TOTAL + VAT"), Text("161.00 EGP")],
                      ),
                      SizedBox(height: 40.h),
                      Center(
                        child: AppButton(
                          icon: AppImage(image: "white_cart.svg", height: 24, width: 24),
                          title: "ORDER",
                          width: 268.w,
                          onPressed: () {
                            goTo(CartView());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
