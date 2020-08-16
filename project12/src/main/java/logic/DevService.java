package logic;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TilDao;

@Service
public class DevService {

	@Autowired
	private TilDao tilDao;

	public void Til_insert(TIL til) {
		int max=tilDao.maxnum();
		System.out.println(max);
		til.setBno(++max);
		til.setNo(3);
		System.out.println(til);
		tilDao.insert(til); 
	}

	public List<TIL> tillist() {
		
		return tilDao.list();
	}

	public TIL getTil(Integer no, Integer bno) {
		
		return tilDao.selectOne(no,bno);
	}

	public void tilDelete(TIL til) {
		tilDao.delete(til);
		
	}

	public void tilUpdate(TIL til, HttpServletRequest request) {
		tilDao.update(til);
		
	}
	
	


}
