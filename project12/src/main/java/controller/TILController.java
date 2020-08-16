package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;

import logic.DevService;
import logic.TIL;


@Controller // controller
@RequestMapping("til") // path
public class TILController {
	@Autowired
	DevService service;

	@GetMapping("*")
	public ModelAndView list(Integer no, Integer bno, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		TIL til = null;
		if (bno == null) { // num �Ķ���Ͱ� ���� ���
			til = new TIL();
		} else {

			til = service.getTil(no, bno); // board:파라미터 bno에 해당하는 게시물 정보 저장
			System.out.println(
					"===============================================================================================");
		}
		mav.addObject("no", no);
		
		mav.addObject("til", til);
		return mav;
	}

	@PostMapping("write")
	public ModelAndView board(TIL til, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		try {
			System.out.println(til);
			service.Til_insert(til);
			mav.setViewName("redirect:main.dev");

		} catch (Exception e) {
			e.printStackTrace();
			throw new BoardException("게시물 등록에 실패 했습니다.", "write.dev");
		}
		return mav;
	}

	@RequestMapping("main")
	public ModelAndView tillist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<TIL> tillist = service.tillist();
		mav.addObject("tillist", tillist);

		return mav;

	}

	@RequestMapping("mytil")
	public ModelAndView mytillist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<TIL> tillist = service.tillist();
		mav.addObject("tillist", tillist);

		return mav;

	}

	@GetMapping("delete")
	public ModelAndView delete(TIL til, Integer no, Integer bno, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		try {
			TIL dbTil = service.getTil(no, bno);

			System.out.println("dbTil:" + dbTil.getName());

			service.tilDelete(dbTil);
			mav.setViewName("redirect:main.dev");
			return mav;

		} catch (Exception e) {
			e.printStackTrace();

		}
		return mav;
	}
	
	@PostMapping("update")
	public ModelAndView update(TIL til, HttpServletRequest request) {
		ModelAndView mav= new ModelAndView();
		
		System.out.println(til);
		try {
			service.tilUpdate(til, request);
			mav.setViewName("redirect:info.dev?no=" + til.getNo() + "&&bno=" + til.getBno());
		}catch(Exception e) {
			e.printStackTrace();
			throw new BoardException("게시물 수정 오류입니다.", "update.dev?no=" + til.getNo() + "&&bno=" + til.getBno());
		}
		
		return mav;
	}

}
