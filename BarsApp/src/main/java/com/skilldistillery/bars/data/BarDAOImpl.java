package com.skilldistillery.bars.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.bars.entities.Bar;

@Service
@Transactional
public class BarDAOImpl implements BarDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Bar findById(int id) {
		return em.find(Bar.class, id);
	}

	@Override
	public Bar createBar(Bar newBar) {
		em.persist(newBar);
		em.flush();		
		return newBar;
	}

	@Override
	public boolean deleteBar(int id) {
		em.remove(em.find(Bar.class, id));
		em.flush();
		boolean stillContains = em.contains(em.find(Bar.class, id));
		System.out.println(stillContains);
		return !stillContains;
	}

	@Override
	public Bar updateBar(int id, Bar bar) {
		
		Bar toUpdate = em.find(Bar.class, id);
		
		toUpdate.setName(bar.getName());
		toUpdate.setCity(bar.getCity());
		toUpdate.setCountry(bar.getCountry());
		toUpdate.setRating(bar.getRating());
		toUpdate.setBlackedOutAt(bar.getBlackedOutAt());
		toUpdate.setActivities(bar.getActivities());
		toUpdate.setOtherComments(bar.getOtherComments());
		toUpdate.setPicture(bar.getPicture());
		em.flush();
		
		return toUpdate;
	}

	@Override
	public List<Bar> findBarWithSearchKeyword(String searchKeyword) {
		List<Bar> results = null;
		String jpql = "Select bar from Bar bar where bar.name like :key or bar.city like :key or bar.country like :key"
				+ " or bar.activities like :key or bar.otherComments like :key";
//		String jpql = "Select bar from Bar bar where bar.name like :key";
		results = em.createQuery(jpql, Bar.class).setParameter("key", searchKeyword).getResultList();
		return results;
	}

}
