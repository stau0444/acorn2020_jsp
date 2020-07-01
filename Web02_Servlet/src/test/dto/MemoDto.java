package test.dto;

public class MemoDto {
	
	private int num;
	private String contents;
	private String regdate;
	
	public MemoDto() {};
	public MemoDto(int num, String contents, String regdate) {
		super();
		this.num = num;
		this.contents = contents;
		this.regdate = regdate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
