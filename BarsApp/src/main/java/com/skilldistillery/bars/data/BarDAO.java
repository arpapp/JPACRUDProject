package com.skilldistillery.bars.data;

import java.util.List;

import com.skilldistillery.bars.entities.Bar;

public interface BarDAO {
	public Bar findById(int id);
	public Bar createBar(Bar newBar);
	public boolean deleteBar(int id);
	public Bar updateBar(int id, Bar bar);
	public List<Bar> findBarWithSearchKeyword(String searchKeyword);
}
