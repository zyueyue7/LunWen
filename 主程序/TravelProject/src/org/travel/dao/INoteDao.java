package org.travel.dao;

import java.util.List;

import org.travel.entity.Note;

public interface INoteDao {
	// 增加留言
	public Boolean addNote(Note note);

	// 游客查看留言
	public List<Note> queryNote();

	// 管理员查看留言
	public List<Note> queryAllNotes();

	// 管理员审核留言（将0变为1）
	public boolean agreeNotes(int id);

	// 根据id查询留言
	public Note queryNoteById(int id);

	// 管理员拒绝留言（将0变为2）
	public boolean refuseNotes(int id);

	// 管理员删除留言
	public boolean deleteNotes(int id);

	// 审核时只查看状态为0的
	public List<Note> queryNotesBySta(int status);

	// 回复留言
	public boolean replyNote(Note note);

	// 查看转态为0的且没有被回复的
	public List<Note> queryNoteByStaReply(int sta);
}
