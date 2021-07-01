 package com.callor.book.service.impl.movie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.callor.book.config.NaverQualifier;
import com.callor.book.config.NaverSecret;
import com.callor.book.model.MovieDTO;
import com.callor.book.service.NaverAbstractService;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service(NaverQualifier.NAVER_MOVIE_SERVICE_V1)
public class NaverMovieServiceImplV1 extends NaverAbstractService<MovieDTO>{

	@Override
	public String queryURL(String search_text) throws UnsupportedEncodingException {

		String searchUTF = URLEncoder.encode(search_text, "UTF-8");
		String queryURL = NaverSecret.nURL.MOVIE;
		
		queryURL += "?query=%s&display=10";
		queryURL = String.format(queryURL, searchUTF);
		log.debug("queryURL : {}", queryURL);
		return queryURL;
	}


	@Override
	public List<MovieDTO> getNaverList(String jsonString) throws ParseException {

		JsonElement jSonElement = JsonParser.parseString(jsonString);

		JsonElement oItems = jSonElement.getAsJsonObject().get("items");

		Gson gson = new Gson();

		TypeToken<List<MovieDTO>> typeToken = new TypeToken<List<MovieDTO>>() {};
		List<MovieDTO> movieList = gson.fromJson(oItems, typeToken.getType());
		return movieList;
	}
}
