package org.travel.entity;

public class Note {
	private int id;
	private String noteTitle;
	private String noteContent;
	private int noteStatus;
	private String noteReply;

	public Note(String noteTitle, String noteContent) {
		super();
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
	}

	public Note(String noteTitle, String noteContent, String noteReply) {
		super();
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
		this.noteReply = noteReply;
	}

	public Note(int id, String noteTitle, String noteContent, String noteReply) {
		super();
		this.id = id;
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
		this.noteReply = noteReply;
	}

	public Note(int id, String noteTitle, String noteContent, int noteStatus,
			String noteReply) {
		super();
		this.id = id;
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
		this.noteStatus = noteStatus;
		this.noteReply = noteReply;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public int getNoteStatus() {
		return noteStatus;
	}

	public void setNoteStatus(int noteStatus) {
		this.noteStatus = noteStatus;
	}

	public String getNoteReply() {
		return noteReply;
	}

	public void setNoteReply(String noteReply) {
		this.noteReply = noteReply;
	}

}
