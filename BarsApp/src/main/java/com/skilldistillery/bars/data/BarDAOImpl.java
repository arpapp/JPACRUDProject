package com.skilldistillery.bars.data;

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

}
