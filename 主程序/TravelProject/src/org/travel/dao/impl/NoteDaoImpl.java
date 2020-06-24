package org.travel.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.travel.dao.INoteDao;
import org.travel.entity.Note;
import org.travel.util.DBUtil;

public class NoteDaoImpl implements INoteDao {

	// 增加一条留言
	@Override
	public Boolean addNote(Note note) {
		String sql = "INSERT INTO tr_note(notetitle,notecontent) VALUES(?,?)";
		Object[] params = { note.getNoteTitle(), note.getNoteContent() };
		return DBUtil.executeUpdate(sql, params);
	}

	// 游客查看留言
	@Override
	public List<Note> queryNote() {
		Note note = null;
		List<Note> notes = new ArrayList<>();
		ResultSet rs = null;
		try {
			String sql = "SELECT notetitle, notecontent, notereply FROM tr_note";
			/* Object[] params = { null }; */
			rs = DBUtil.executeQuery(sql, null);
			while (rs.next()) {
				String notetitle = rs.getString("notetitle");
				String notecontent = rs.getString("notecontent");
				String notereply = rs.getString("notereply");
				note = new Note(notetitle, notecontent, notereply);
				notes.add(note);

			}
			return notes;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	// 管理员查看留言
	@Override
	public List<Note> queryAllNotes() {
		Note note = null;
		List<Note> notes = new ArrayList<>();
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM tr_note";
			rs = DBUtil.executeQuery(sql, null);
			while (rs.next()) {
				int id = rs.getInt("id");
				String notetitle = rs.getString("notetitle");
				String notecontent = rs.getString("notecontent");
				int status = rs.getInt("notestatus");
				String notereply = rs.getString("notereply");
				note = new Note(id, notetitle, notecontent, status, notereply);
				notes.add(note);
			}
			return notes;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 审核留言
	@Override
	public boolean agreeNotes(int id) { // 1表示通过审核
		String sql = "UPDATE tr_note SET notestatus = ? WHERE id =?";
		Object[] params = { 1, id };
		return DBUtil.executeUpdate(sql, params);
	}

	// 根据id查询留言
	@Override
	public Note queryNoteById(int id) {
		Note note = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM tr_note WHERE id = ?";
			Object[] params = { id };
			rs = DBUtil.executeQuery(sql, params);
			if (rs.next()) {
				int no = rs.getInt("id");
				String notetitle = rs.getString("notetitle");
				String notecontent = rs.getString("notecontent");
				int status = rs.getInt("notestatus");
				String notereply = rs.getString("notereply");
				note = new Note(no, notetitle, notecontent, status, notereply);
			}
			return note;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	// 管理员拒绝留言
	@Override
	public boolean refuseNotes(int id) {
		String sql = "UPDATE tr_note SET notestatus = ? WHERE id =?";
		Object[] params = { 2, id };
		return DBUtil.executeUpdate(sql, params);
	}

	// 管理员删除留言
	@Override
	public boolean deleteNotes(int id) {
		String sql = "DELETE FROM tr_note WHERE id=?";
		Object[] params = { id };
		return DBUtil.executeUpdate(sql, params);
	}

	// 查询状态为0的留言
	@Override
	public List<Note> queryNotesBySta(int status) {
		Note note = null;
		ResultSet rs = null;
		List<Note> notes = new ArrayList<>();
		try {
			String sql = "SELECT * FROM tr_note WHERE notestatus = ?";
			Object[] params = { status };
			rs = DBUtil.executeQuery(sql, params);
			while (rs.next()) {
				int no = rs.getInt("id");
				String notetitle = rs.getString("notetitle");
				String notecontent = rs.getString("notecontent");
				int notestatus = rs.getInt("notestatus");
				String notereply = rs.getString("notereply");
				note = new Note(no, notetitle, notecontent, notestatus,
						notereply);
				notes.add(note);
			}
			return notes;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	// 回复留言
	@Override
	public boolean replyNote(Note note) {
		String sql = "UPDATE tr_note SET notereply = ? WHERE id = ?";
		Object[] params = { note.getNoteReply(), note.getId() };
		return DBUtil.executeUpdate(sql, params);
	}

	// 查看转态为1的且没有被回复的
	@Override
	public List<Note> queryNoteByStaReply(int sta) {
		Note note = null;
		ResultSet rs = null;
		List<Note> notes = new ArrayList<>();
		try {
			String sql = "SELECT * FROM tr_note WHERE notereply = ? AND notestatus = ?";
			Object[] params = { "noreply", sta };
			rs = DBUtil.executeQuery(sql, params);
			while (rs.next()) {
				int no = rs.getInt("id");
				String notetitle = rs.getString("notetitle");
				String notecontent = rs.getString("notecontent");
				int notestatus = rs.getInt("notestatus");
				String notereply = rs.getString("notereply");
				note = new Note(no, notetitle, notecontent, notestatus,
						notereply);
				notes.add(note);
			}
			return notes;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}
}
