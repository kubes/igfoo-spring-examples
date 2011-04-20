package com.igfoo.examples.assets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.igfoo.core.web.Assets;

@Controller
@RequestMapping("/example3.html")
public class Example3Controller {

  @RequestMapping(method = RequestMethod.GET)
  public String getView(Model model,
    @RequestParam(value = "path", required = false, defaultValue="1") int path,
    HttpServletRequest request, HttpServletResponse response) {
    
    if (path == 1) {
      model.addAttribute(Assets.TITLE, "This is my dynamic title");
      model.addAttribute(Assets.PATH, "example3-first-path");
      return "example.3.path1";
    }
    else {
      model.addAttribute(Assets.PATH, "example3-second-path");
      return "example.3.path2";
    }
  }
}
