package Dto;

public class NBDto {
	private int num;
	private String title;
	private String date;
	
	public NBDto() {}

	public NBDto(int num, String title, String date) {
		super();
		this.num = num;
		this.title = title;
		this.date = date;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	};

}
