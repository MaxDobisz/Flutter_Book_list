import 'package:books_app/book_detail.dart';
import 'package:books_app/modal/book.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book currentBook;
  const BookItem({required this.currentBook, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 7,
      margin: const EdgeInsets.all(10.0),
      color: Colors.blueAccent[100],
      shadowColor: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(
            'assets/images/${currentBook.smallImage}',
            width: 75,
            height: 75,
          ),
          title: Text(
            currentBook.bookName,
            style: myTextStyle.headline6,
          ),
          subtitle: Text(
            currentBook.bookAuthor,
          ),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.amberAccent,
            size: 35,
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BookDetail(
                  selectedBook: currentBook
                )
              ),
            );
          },
        ),
      ),
    );
  }
}