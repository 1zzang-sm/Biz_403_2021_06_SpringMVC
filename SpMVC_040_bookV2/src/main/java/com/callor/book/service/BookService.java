package com.callor.book.service;

import java.io.IOException;

import org.json.simple.parser.ParseException;

public interface BookService {

	int insert(String isbnUTF) throws IOException, ParseException;

}
