package test.dto;
public class TodoDto {
	private int num;
	private String things;
	private String time;
	
	public TodoDto() {};

	public TodoDto(int num, String things, String time) {
		super();
		this.num = num;
		this.things = things;
		this.time = time;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getThings() {
		return things;
	}

	public void setThings(String things) {
		this.things = things;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	};
	
	
}
