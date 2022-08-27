import 'package:flutter/material.dart';
import 'modal/book.dart';
import './data/listData.dart';
import 'book_item.dart';

class BookList extends StatelessWidget {
  late final List<Book> allBooks;

  BookList({Key? key}) : super(key: key) {
    allBooks = prepareData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BOOKS',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: allBooks.length,
        itemBuilder: (BuildContext context, int index) {
          var currentBook = allBooks[index];
          return BookItem(
            currentBook: currentBook,
          );
        },
       )
    );
  }

  List<Book> prepareData() {
    List<Book> tentativeList = [];
    for (int i = 0; i < 10; i++) {
      String bookName = Strings.books_name[i];
      String bookAuthor = Strings.books_authors[i];
      String bookDetail = Strings.books_detail[i];
      String smallImage = Strings.small_images[i];
      String bigImage = Strings.big_images[i];

      Book book = Book(bookName, bookAuthor, bookDetail, smallImage, bigImage);
      tentativeList.add(book);
    }
    return tentativeList;
  }
}