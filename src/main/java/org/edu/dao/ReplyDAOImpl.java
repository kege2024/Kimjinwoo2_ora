package org.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.PageVO;
import org.edu.vo.ReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements IF_ReplyDAO {
	private static String mapperQuarry = "org.edu.dao.IF_ReplyDAO";
	@Inject
	private SqlSession sqlSession; //mybatis 사용변수추가
	
	@Override
	public List<ReplyVO> selectReply(Integer bno, PageVO pageVO) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("pageVO", pageVO);
		return sqlSession.selectList(mapperQuarry + ".selectReply", paramMap);
	}

	@Override
	public void insertReply(ReplyVO replyVO) throws Exception {
		sqlSession.insert(mapperQuarry +".insertReply", replyVO);
	}

	@Override
	public void updateReply(ReplyVO replyVO) throws Exception {
		sqlSession.update(mapperQuarry + ".updateReply", replyVO);
	}

	@Override
	public void deleteReply(Integer rno) throws Exception {
		sqlSession.delete(mapperQuarry + ".deleteReply", rno);
	}

	@Override
	public int countRno(Integer bno) throws Exception {
		return sqlSession.selectOne(mapperQuarry + ".countRno", bno);
	}

}
