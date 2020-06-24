package org.travel.service.impl;

import java.util.List;

import org.travel.dao.INoteDao;
import org.travel.dao.impl.NoteDaoImpl;
import org.travel.entity.Note;
import org.travel.service.INoteService;

public class NoteServiceImpl implements INoteService {
	INoteDao noteDao = new NoteDaoImpl();

	// 增加一条留言
	@Override
	public boolean addnote(Note note) {
		return noteDao.addNote(note);
	}

	// 游客查看留言
	@Override
	public List<Note> queryNote() {
		return noteDao.queryNote();
	}

	// 管理员查看留言
	@Override
	public List<Note> quaryAllNotes() {
		return noteDao.queryAllNotes();
	}

	// 管理员同意留言
	@Override
	public boolean agreeNotes(int id) {
		Note note = noteDao.queryNoteById(id);
		if (note != null) {
			if (note.getNoteStatus() == 0) {
				return noteDao.agreeNotes(id);
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	// 管理员拒绝留言
	@Override
	public boolean refuseNotes(int id) {
		Note note = noteDao.queryNoteById(id);
		if (note != null) {
			if (note.getNoteStatus() == 0) {
				return noteDao.refuseNotes(id);
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	// 管理员删除留言
	@Override
	public boolean deleteNotes(int id) {
		Note note = noteDao.queryNoteById(id);
		if (note != null) {
			return noteDao.deleteNotes(id);
		} else {
			return false;
		}
	}

	// 查询状态为0的留言
	@Override
	public List<Note> queryNotesBySta(int status) {
		return noteDao.queryNotesBySta(status);
	}

	// 回复留言
	@Override
	public boolean replyNote(Note note) {
		Note note2 = noteDao.queryNoteById(note.getId());
		if (note2 != null) {
			return noteDao.replyNote(note);
		} else {
			return false;
		}
	}

	// 根据id查询留言
	@Override
	public Note queryNoteById(int id) {
		return noteDao.queryNoteById(id);
	}

	// 查询状态为1没有被回复的
	@Override
	public List<Note> queryNoteByStaReply(int sta) {
		return noteDao.queryNoteByStaReply(sta);
	}
}
