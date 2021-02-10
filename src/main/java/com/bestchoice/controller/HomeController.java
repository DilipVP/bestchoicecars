package com.bestchoice.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bestchoice.dao.CarsRepo;
import com.bestchoice.model.Cars;



@RestController
@CrossOrigin
public class HomeController {
	
	@Autowired
	CarsRepo carsrepo;
	
	@GetMapping("/cars")
	public List<Cars> getCars() {
		
		return carsrepo.findAll();
	}
	
	@PostMapping(path="/cars",produces= {"application/json"},consumes={"application/json"})
	public Cars postCars(@RequestBody Cars cars) {
		
		carsrepo.save(cars);
		return cars;
	}
	
	@PutMapping(path="/cars",produces= {"application/json"},consumes={"application/json"})
	public Cars saveOrUpdateHuman(@RequestBody Cars cars) {
		
		carsrepo.save(cars);
		return cars;
	}
	
	
	@RequestMapping(value = {"/" , "homePage"})
	public ModelAndView HomePage() {
		ModelAndView mv = new ModelAndView("homePage");
		
		return mv;
	}
	
	@RequestMapping("/byBrand")
	public ModelAndView byBrand() {
		
		ModelAndView mv = new ModelAndView("byBrand");
		List<String> cars = carsrepo.findBrands();
		
		mv.addObject("cars", cars);
		return mv;
	}
	
	@RequestMapping("/byPrice")
	public ModelAndView byPrice() {
		ModelAndView mv = new ModelAndView("byPrice");
		return mv;
	}
	
	@RequestMapping("/brandList")
	public ModelAndView brandList(@RequestParam("brand") String brand)
	{
		ModelAndView mv = new ModelAndView("brandList");
		
		
		List<Cars> brandlist = carsrepo.findByBrand(brand);
		
		mv.addObject("brandlist",brandlist);
		
		return mv;
	}
	
	@RequestMapping("/priceList")
	public ModelAndView priceList(@RequestParam("price") String price)
	{
		
		ModelAndView mv = new ModelAndView("priceList");
		
		String priceval[] = price.split("_");
		
		String evaluate = priceval[0];
		Long priceamt = Long.parseLong(priceval[1]);
		List<Cars> cars;
		
		if(evaluate.equalsIgnoreCase("less"))
			cars = carsrepo.findByPriceLessThan(priceamt);
		else
			cars = carsrepo.findByPriceGreaterThan(priceamt);
		
		mv.addObject("brandlist",cars);
		
		return mv;
	}
	
	@RequestMapping("/confirmCar")
	public ModelAndView confirmBrand(@RequestParam("cars") String model)
	{
		ModelAndView mv = new ModelAndView("confirmCar");
		mv.addObject("model",model);
		
		String brand = carsrepo.findBrandByModel(model);
		
		mv.addObject("brand",brand);
		
		return mv;
	}

}
