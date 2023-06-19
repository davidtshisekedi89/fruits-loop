package com.david.fruitloop.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.david.fruitloop.models.Item;


@Controller
public class ItemController {
 
 @GetMapping("/")
 public String index(Model model) {
     
     ArrayList<Item> fruits = new ArrayList<Item>();
     fruits.add(new Item("Kiwi", 1.5));
     fruits.add(new Item("Mango", 2.0));
     fruits.add(new Item("Goji Berries", 4.0));
     fruits.add(new Item("Guava", .75));
     model.addAttribute("listOfFruit", fruits );
     
     // Add fruits your view model here
     
     return "index.jsp";
 }
}




