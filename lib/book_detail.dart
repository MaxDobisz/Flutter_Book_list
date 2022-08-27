import 'package:books_app/modal/book.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final Book selectedBook;

  const BookDetail({required this.selectedBook, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/${selectedBook.bigImage}',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                selectedBook.bookDetail,
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}