package com.bestchoice.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.bestchoice.model.Cars;


@RepositoryRestResource(collectionResourceRel="cars", path="cars")
@CrossOrigin
public interface CarsRepo extends JpaRepository<Cars,String> {

	@Query("select distinct brand from Cars")
	List<String> findBrands();

	List<Cars> findByBrand(String brand);
	
	@Query("select brand from Cars where model=?1")
	String findBrandByModel(String model);

	List<Cars> findByPriceGreaterThan(Long priceamt);

	List<Cars> findByPriceLessThan(Long priceamt);
}
