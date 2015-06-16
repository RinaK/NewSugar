package com.newSugar;

import java.io.*;
import java.util.*;
 
import javax.jdo.*;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class NewSugarServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");
	}
}
