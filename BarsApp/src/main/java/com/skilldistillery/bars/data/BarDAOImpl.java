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
	public boolean updateBar(Bar bar) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Bar> findBarWithSearchKeyword(String searchKeyword) {
		// TODO Auto-generated method stub
		return null;
	}

}
