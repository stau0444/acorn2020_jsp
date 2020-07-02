package test.util;

import test.dao.TotoDao;

public class todoDaotest {
	public static void main(String[] args) {
		TotoDao dao=TotoDao.getInstance();
		dao.insert("테스트");
	}
	
	
}
