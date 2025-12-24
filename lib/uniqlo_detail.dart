import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqlo/Model/uniqlo.dart';


class UniqloDetail extends StatefulWidget {
  final Uniqlo uniqlo;

  const UniqloDetail({super.key, required this.uniqlo});

  @override
  State<UniqloDetail> createState() => _UniqloDetailState();
}

class _UniqloDetailState extends State<UniqloDetail> {
  double _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.uniqlo.imgTitle)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.uniqlo.imgUrl,
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: double.infinity,
                  height: 240,
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.broken_image,
                    size: 48,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.uniqlo.detail,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(fontSize: 16, height: 1.4),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                itemCount: widget.uniqlo.productdetail.length,
                itemBuilder: (BuildContext context, int index) {
                  final productdetail = widget.uniqlo.productdetail[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Text(
                      '${productdetail.quantity * _sliderValue} ' '${productdetail.category} ' '- \THB ${(productdetail.price * _sliderValue).toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderValue,
              label: _sliderValue.round().toString(),
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue.roundToDouble();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
