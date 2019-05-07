package com.oracle.web.test;


import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.PageHelper;
import com.oracle.web.bean.Monster2;
import com.oracle.web.mapper.MonsterMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/resources/applicationContext.xml")
public class TestMapper {

	@Autowired
	private MonsterMapper monsterMapper;
	
	@Test
	public void testAll() {
		PageHelper.startPage(1, 3);
		List<Monster2> list=this.monsterMapper.showPesgeAll();
		for (Monster2 monster2 : list) {
			System.out.println(monster2.toString());
		}
	}

}
