import 'package:flutter/material.dart';
import 'package:xth_assesment/wrapper/home_response_wrapper.dart';

class RecommendedProductComponent extends StatefulWidget {
  final Products? products;
  const RecommendedProductComponent({super.key, required this.products});

  @override
  State<RecommendedProductComponent> createState() =>
      _RecommendedProductComponentState();
}

class _RecommendedProductComponentState
    extends State<RecommendedProductComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Image.network(
            widget.products?.thumb ?? '',
            width: 100,
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.products?.name ?? '',
              ),
              Text(
                widget.products?.manufacturerName ?? '',
              ),
              Text(
                'Set -${widget.products?.quantity ?? ''}Pieces',
              ),
              Text(
                widget.products?.priceFormatted ?? '',
                style: TextStyle(
                    color: Colors.grey, decoration: TextDecoration.lineThrough),
              ),
              Text(
                widget.products?.priceNoTaxFormatted ?? '',
                style: TextStyle(
                  color: Colors.red,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.delete_outline_sharp),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.remove),
                    Text(widget.products?.quantity ?? ''),
                    Icon(Icons.add),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
