package com.neusoft.train.demo.scan.service.impl;

import com.neusoft.train.demo.scan.dao.ScanDemoDao;
import com.neusoft.train.demo.scan.service.ScanDemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 扫描方式测试service实现类
 * @author tangwei
 * @created on 2016-08-16 17:32
 */
@Service("scanService")
public class ScanDemoServiceImpl implements ScanDemoService {
	@Autowired
	ScanDemoDao scanDemoDao;
	public void scanDemoTest() {
      scanDemoDao.scanTestDao();
	}
}
