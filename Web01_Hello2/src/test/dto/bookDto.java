package test.dto;

public class bookDto {
   String name;
   String content;
   String date;
   String company;
   String author;
   int sort;
   String img;
   public bookDto(String name, String content, String date, String company, String author, int sort, String img) {

      this.name = name;
      this.content = content;
      this.date = date;
      this.company = company;
      this.author = author;
      this.sort = sort;
      this.img = img;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   public String getDate() {
      return date;
   }
   public void setDate(String date) {
      this.date = date;
   }
   public String getCompany() {
      return company;
   }
   public void setCompany(String company) {
      this.company = company;
   }
   public String getAuthor() {
      return author;
   }
   public void setAuthor(String author) {
      this.author = author;
   }
   public int getSort() {
      return sort;
   }
   public void setSort(int sort) {
      this.sort = sort;
   }
   public String getImg() {
      return img;
   }
   public void setImg(String img) {
      this.img = img;
   }
   
}