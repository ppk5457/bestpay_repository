package com.neusoft.train.demo.scan.dao.impl;

import com.neusoft.train.demo.scan.dao.ScanDemoDao;
import org.springframework.stereotype.Repository;

/** 扫描方式测试dao实现类
 * @author tangwei
 * @created on 2016-08-16 17:22
 */
@Repository
public class ScanDemoDaoImpl implements ScanDemoDao {

	public void scanTestDao() {
		System.out.println("扫描dao调用............");
	}
}
