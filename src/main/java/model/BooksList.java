package main.java.model;

import main.java.entities.Book;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 */
public class BooksList {
    private static BooksList instance = new BooksList();

    private List<Book> bookList;

    public static BooksList getInstance() {
        return instance;
    }

    public BooksList() {
        bookList = new ArrayList<>();
    }

    public void addBook(Book book){
        bookList.add(book);
    }
    public List<String> listTitle() {
        return bookList.stream()
                .map(Book::getTitle)
                .collect(Collectors.toList());
    }
    public List<String> listAuthor() {
        return bookList.stream()
                .map(Book::getAuthor)
                .collect(Collectors.toList());
    }
}
