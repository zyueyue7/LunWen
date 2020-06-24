package org.travel.service;

import java.util.List;

import org.travel.entity.Note;

public interface INoteService {
	// 写留言
	public boolean addnote(Note note);

	// 游客查看留言
	public List<Note> queryNote();

	// 管理员查看留言
	public List<Note> quaryAllNotes();

	// 管理员同意留言
	public boolean agreeNotes(int id);

	// 管理员拒绝留言
	public boolean refuseNotes(int id);

	// 管理员删除留言
	public boolean deleteNotes(int id);

	// 查询状态为0的留言
	public List<Note> queryNotesBySta(int status);

	// 回复留言
	public boolean replyNote(Note note);

	// 根据id查询留言
	public Note queryNoteById(int id);

	// 查询状态为1没有被回复的
	public List<Note> queryNoteByStaReply(int sta);
}
