import 'package:flutter/material.dart';
import 'package:xth_assesment/components.dart/product_component.dart';
import 'package:xth_assesment/components.dart/recommended_product_component.dart';
import 'package:xth_assesment/constants/color_constants.dart';
import 'package:xth_assesment/constants/string_constants.dart';
import 'package:xth_assesment/view/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xth_assesment/wrapper/home_response_wrapper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit homeCubit;
  late HomeResponseWrapper homeResponse;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        homeCubit = HomeCubit();
        WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
          homeCubit.loadHomeRespone();
        });
        return homeCubit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringConstants.shoppingCart,
              style: TextStyle(
                color: ColorConstants.black,
              )),
          centerTitle: true,
        ),
        body: BlocConsumer<HomeCubit, HomeState>(listener: (context, state) {
          if (state is SuccessHome) {
            homeResponse = state.homeResponseWrapper;
          }
        }, builder: (context, state) {
          if (state is LoadingHome) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FailureHome) {
            return Center(
              child: Text(state.error),
            );
          } else if (state is SuccessHome) {
            return SingleChildScrollView(
              child: Column(children: [
                ...List.generate(
                  (homeResponse.data?.cart?.products ?? []).length,
                  (index) => ProductComponent(
                    products: homeResponse.data?.cart?.products?[index],
                  ),
                ),
                Text("Products You May Like"),
                Row(
                  children: [
                    ...List.generate(
                      (homeResponse.data?.cart?.products ?? []).length,
                      (index) => RecommendedProductComponent(
                        products: homeResponse.data?.cart?.products?[index],
                      ),
                    ),
                  ],
                )
              ]),
            );
          }
          return const Center(
            child: Text('Error'),
          );
        }),
      ),
    );
  }
}
