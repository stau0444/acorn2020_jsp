package test.main;

import java.util.ArrayList;

import test.dto.bookDto;

public class insertart{
   

   public static void main(String[] args) {
      ArrayList<bookDto> dto=new ArrayList<bookDto>();
      String name;
      String content;      
      String content2;
      String date;
      String company;
      int num=3;      // 분류번호
      String img;
      String author;
            
      name="방구석 미술관";      //제목
      date="2020-05-05";      //출판일
      company="블랙피쉬";      //출판사
      author="조원재";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/862/x9788968331862.jpg";         //이미지링크
      content="미술에 대해 관심은 있지만 뭐부터 어떻게 시작해야 할지 몰라 막막했던 사람들에게 부담과 걱정을 잠시 내려놓고 가벼운 마음으로 미술계 거장들을 만나볼 수 있도록 구성한 책이다. 이 책에 등장하는 화가들은 과거와 현재를 잇는 모더니즘 화가들로, 이들만 제대로 알아도 미술사의 흐름을 한눈에 꿸 수 있다. 각각 화가들의 이야기의 마지막에는 화가의 기본 정보와 함께 작품을 이해하는데 꼭 필요한 핵심 미술 이론들을 일목요연하게 정리해두었고, 들으면서 한 번 더 복습할 수 있는 팟캐스트 ‘방구석 미술관’의 QR 코드를 담아 가볍고 재미있게 미술을 즐길 수 있도록 했다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//1
      
      name="더 터치: 머물고 싶은 디자인";      //제목
      date="2020-06-30";      //출판일
      company="월북";      //출판사
      author="박여진";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/822/x9791155812822.jpg";         //이미지링크
      content="이 책은 ‘이론과 타이포와 스타일이 하나로 흘러드는 우아한 책’이라는 평가에 걸맞게 텍스트와 타이포, 구성, 이미지가 적재적소에 들어차 있다. 공간을 구성하는 5가지 기본 요소, 즉 빛, 자연, 물질성, 색, 공동체라는 주제에 따라 깊은 생각을 불러일으키는 에세이들과 영감을 주는 이미지들이 교차 편집되어 언제든 펴보면 머릿속을 맑게 비워준다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//2
      
      name="미술관에서는 언제나 맨얼굴이 된다";      //제목
      date="2020-07-10";      //출판일
      company="나무의철학";      //출판사
      author="이세라";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/814/x9791158511814.jpg";         //이미지링크
      content="KBS 기상캐스터로 7년간 활발한 활동을 이어왔던 방송인 이세라가 마이크를 내려놓은 지 1년 만에 작가가 되어 돌아왔다. 혹시 젊고 아리따운 여성 방송인의 아기자기한 일상 이야기, 사랑과 연애, 나만의 소확행 같은 달콤말랑한 내용을 짐작했다면, 그 생각은 잠시 내려놓자. 방송인 다음으로 이세라 작가가 선택한 행보는 바로 ‘미술 번역가’이다. “기상캐스터가 무슨 미술?”이라고 의아하게 여기는 사람들이 있겠지만, 그는 KBS〈9시 뉴스〉기상캐스터로 일하던 당시 이화여자대학교 대학원에서 미술사학으로 석사 과정을 마쳤을 만큼 미술에 대한 애정이 남다르다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//3
      
      name="서양미술사";      //제목
      date="2003-07-10";      //출판일
      company="예경";      //출판사
      author="백승길";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/659/x9788970840659.jpg";         //이미지링크
      content="서양미술사는 미술이라는 분야에 처음 입문하여 아직은 낯설기만 한 사람들을 위해 이론적 정보를 제공하기 위한 책이다. 이 책은 복잡한 인명과 각 시대의 양식들을 알기 쉽게 정리해놓았으며 저자는 자신의 경험을 통해 전문 용어나 감상보다는 평이한 말을 사용했다. 따라서 독자들의 이해를 돕기 위해 학술적인 용어의 남용을 경계하며 난해한 사상들까지 두루 담아냈다. 가장 기본적이고도 필수적으로 알아야 할 서양미술사의 개념들을 확인할 수 있는 미술사 입문의 필독서이다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//4
      
      name="칼 라르손, 오늘도 행복을 그리는 이유";      //제목
      date="2020-06-20";      //출판일
      company="알에이치코리아";      //출판사
      author="이소영";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/910/x9788925536910.jpg";         //이미지링크
      content="칼 라르손은 장인에게 선물 받은 집 ‘릴라 히트나스’를 고쳐나가는 과정, 아내 카린이 책 읽는 모습, 아이들이 정원에서 뛰노는 풍경, 크리스마스 홈 파티에서 사람들과 함께 파티를 즐기는 모습 등 일상에 숨어 있는 작은 행복을 기록하고 또 기록했다. 그의 그림은 우리에게 평범함과 특별함이 실은 같을 말일지도 모른다고 말해준다. 그들의 일상이 특별하게 느껴지는 이유 역시 평범함을 특별하게 만들기 때문일 것이다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//5
      
      name="애뽈의 숲소녀 컬러링북";      //제목
      date="2017-11-22";      //출판일
      company="시드앤피드";      //출판사
      author="애뽈";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/279/x9791187798279.jpg";         //이미지링크
      content="『애뽈의 숲소녀 컬러링북』은 《너의 숲이 되어줄게》로 전 세계 독자들에게 사랑받는 애뽈 작가가 2015년부터 지금까지 연재한 2백여 점의 작품 중에서 독자를 위해 직접 58점을 골라 선보이는 컬러링북이다. ‘숲속 이야기, 집에서 보낸 하루, 상상 속 세계’라는 세 가지 구성으로 나눠진 작품들은 세밀한 연필선으로 작업한 실제 밑그림의 아날로그 느낌을 그대로 살려 컬러링 버전으로 만들어졌다. 그동안 그라폴리오를 통해 공개된 작품은 물론 미공개 최신작까지 실어 애뽈 작가의 그림을 좋아하는 독자들이라면 컬러링 북의 풍성하고 꽉 찬 구성에 만족할 것이다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//6
      
      name="브랜드 브랜딩 브랜디드";      //제목
      date="2020-06-24";      //출판일
      company="안그라피스";      //출판사
      author="임태수";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/247/x9788970591247.jpg";         //이미지링크
      content="이 책은 세 가지 주제로 구성된다. [브랜드]에서 브랜드의 근간을 공고히 해야 하는 이유와 그 중요성을 설명한다면, [브랜딩]에서는 브랜드가 그것을 전개하고 유지하는 다양한 방식을 알아본다. 그리고 [브랜디드]에서는 한 단계 더 나아가 좋은 브랜드, 즉 철학을 가지고 일상에서 묵묵히 그 철학을 구현하고자 노력하는 브랜드가 우리의 일상을 어떻게 변화시키는지에 대해 생각한다. 좋아하는 디자이너의 아이디어 노트에서 착안해 직접 그린 그림도 지은이의 일상에 깊은 인상을 남긴 브랜드 이야기를 함께 나누는 데 좋은 말동무가 된다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//7
      
      name="스즈키 바이올린 교본. 1";      //제목
      date="2009-12-01";      //출판일
      company="세광음악출판사";      //출판사
      author="세광음악출판사 ";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/116/x9788903411116.jpg";         //이미지링크
      content="자타공인 불후의 명곡은 물론 숨겨진 보석 같은 곡들을 발굴해낸 이 책에서 저자는 다소 낯선 현대 작곡가들의 음악은 물론 상대적으로 덜 알려진 여성 작곡가들의 음악에 주목했다. 막연하게 클래식이 어렵다고 생각하는 사람, 어디서부터 시작해야 할지 막막한 사람들의 고민을 단번에 해결해주는 이 책을 통해 음악에 얽힌 작곡가들의 사연을 이해하고 음악을 들으며 클래식의 매력에 빠지게 될 것이다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//8
      
      name="1일 1클래식 1기쁨";      //제목
      date="2020-01-15";      //출판일
      company="월북";      //출판사
      author="클레먼시 버턴힐";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/556/x9791155812556.jpg";         //이미지링크
      content="클래식을 전혀 모르는 사람이라도, 혹은 이미 클래식에 조예가 깊은 사람이라도 그 매력에 충분히 빠져들 만한 플레이리스트로 구성된 이 책의 주요한 특징은 누구나 공감할 수 있는 음악이라는 사실이다. 작곡가의 흥미진진한 비하인드 스토리나 해당 음악의 탄생 배경까지 저널리스트이자 소설가다운 문체로 써내려가, 클래식 음악에 대한 경계심을 풀고 자연스럽게 음악 속으로 젖어들게 한다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//9
      
      name="만화 캐릭터 데생 입문";      //제목
      date="2019-11-01";      //출판일
      company="EJONG";      //출판사
      author="후이지 에이슌";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/954/x9788979292954.jpg";         //이미지링크
      content="어떤 만화캐릭터든 얼굴과 전신을 그리는 기본 방법부터 모든 각도, 장면까지 초보자도 그릴 수 있도록 자세히 설명해나갑니다. 신체의 각 부분의 골격, 관절, 근육, 주름, 표정 등 기본적인 부분을 그리기 위한 해설이 충실히 실려 있습니다. 기본적인 캐릭터 그리는 방법을 배운 다음, 다양한 각도와 장면을 그릴 수 있도록 많은 일러스트와 사진을 제시하고 있습니다. 알아보기 어렵거나 주요한 표현을 확대해서 소개하고 작화의 요령을 알려주는 “POINT”, 실수를 예방하기 위한 “NG”, 플러스알파의 표현을 가르치는 “만화표현”, 변형해 표현하는 법을 알려주는 “연출” 등 4가지 설명박스가 제시되어 있어 더 이해하기 쉽습니다. 각 파트의 끝마다 만화를 그리는 데 중요한 테크닉을 만화로 소개하고 있어 효과선, 그림자 등의 기법을 배울 수 있습니다. 또한 이 책에서 작화를 담당하고 있는 프로 만화가 마로의 시연을 유튜브에서 특별 공개합니다! 책과 함께 동영상의 작화 과정을 보면서 배워보세요!";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//10
      
      name="애뽈의 숲을 닮은 컬러링북";      //제목
      date="2020-07-13";      //출판일
      company="시드앤피드";      //출판사
      author="애뽈";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/930/x9791165341930.jpg";         //이미지링크
      content="출간 즉시 예술, 취미 분야 베스트셀러 1위에 오르며 컬러링북 열풍을 다시 불러일으킨 애뽈 작가의 컬러링북 신작이 마침내 출시되었다. 프리미엄 에디션 ≪숲으로 물드는 행복한 순간≫ 이후 2년 만이다. 그라폴리오에서 6년 간 꾸준히 연재해온 350여 점의 작품 중 57컷의 도안을 선별한 《애뽈의 숲을 닮은 컬러링북: 오롯이 나를 위한 시간》은 저자의 컬러링북 시리즈 중에서도 독보적인 분량을 자랑한다. 출간 후 3년 동안 베스트셀러의 자리를 지켜온 전작의 장점은 더욱 살리고, 본격적인 컬러링을 시작하기 전 작은 식물과 소품, 나만의 패턴을 연습할 수 있는 페이지를 알차게 수록했으며, 특별한 부록까지 더했다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//11
      
      name="최신 기법의 아나토미 @ 조형 회화 애니메이션 창작을 위한 인체 해부도감";      //제목
      date="2017-01-01";      //출판일
      company="엠지에이치북수";      //출판사
      author="Uldis Zarins";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/214/x9791186655214.jpg";         //이미지링크
      content="그림을 그리다보면 어떻게 해야 더 좋은 그림을 그릴 수 있을까 라는 생각을 하게됩니다. 특히 만화를 그린다면 빠질 수 없는게 인물입니다. 인물을 잘 그리기 위해선 구조를 파악하는게 중요합니다. 거리에 지나다니는 사람들을 보고인물의 구조를 한번에 파악할수 있다면, 아마 그건 천재일겁니다. 인물을 잘 그린다는 건 정말 어려운 일입니다. 그래도 하나하나 익혀가면 점점 눈에 보이는게 늘어나고 그릴 수 있는 것도 늘어납니다. 그러기 위해선 많은걸 보고 참고해야합니다. 아무것도 모르는 상태에서 100을 보고 따라하는건 너무나도 힘든 일입니다. 그렇기에 이런 참고서들을 참고하는게 좋다생각합니다. 참고서를 봐도 모르겠다 느낄수도있습니다. 하지만 거기에 절망하지말고 계속 관찰하고 그려보는 겁니다. 드로잉 실력이란건 한 순간에 늘어나는게 아닙니다. 계속해서 숙달시켜야 늘어나는 겁니다. 자신의 숙달 속도가 느려서 실력이 늘지않는다고 생각하면 안됩니다. 분명 조금씩 늘고있습니다.  이 책은 자신의 드로잉을 위한 참고서 중 하나라 생각하시면 됩니다. 이거 책 하나로 끝날게 아니라 더 많은 참고서들을 보는 것도 좋습니다. 해부학을 어떻게 써야하나 싶을 수도 있지만, 뼈는 인물의 기초입니다. 자신이 정말로 인물에 대해 알고싶다면 이런 참고서들을 참고하는 것도 좋다 생각합니다";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//12
      
      name="다른 방식으로 보기(Ways of Seeing)";      //제목
      date="2019-06-01";      //출판일
      company="열화당";      //출판사
      author="존 버거";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/272/x9788930104272.jpg";         //이미지링크
      content="다른 방식으로 보기 Ways of Seeing 는 1972년에 방영된 텔레비전 연속 강의들을 바탕으로 한 책이다. 이 강의에서 존 버거는 일반적으로 미술작품을 감상하는 법이라고 알려진 것들이 어딘가 잘못된 또는 편협한 방식일 수도 있다고 주장하며 기존의 아카데믹한 방식에 대해 근본적으로 재검토할 것을 요청하고 있다. 그는 거의 난폭하다 할 정도로 영국의 제도화된 강단 미술사학의 암묵적 전제들을 공격하고 있는데, 그러면서 기존의 표준적인 방식이 아닌 새로운 방식으로 작품을 볼 수 있다고 제안한다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//13
      
      
      name="당신의 밤을 위한 드라마 사용법";      //제목
      date="2020-06-24";      //출판일
      company="김민정";      //출판사
      author="작가";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/117/x9791190566117.jpg";         //이미지링크
      content="교수는 이화여자대학교 언론홍보영상학부를 졸업하고 중앙대학교 문예창작학과에서 문학창작으로 박사학위를 받았다. ‘한 사람이 한 권의 책’이라는 생각으로 문학과 문화를 분주히 오가며 나만의 장르를 만들기 위해 열심히 글을 쓰고 있다. 저서로 인문교양서 『당신의 삶은 어떤 드라마인가요』, 소설집 『홍보용 소설』, ‘이 사람 시리즈’ 『한현민의 블랙 스웨그』 등이 있으며 현재 중앙대에서 스토리텔링콘텐츠 강의를 하고 있다. 세상에 있는 모든 이야기, 특히 이 글을 읽고 있는 당신이 살아가는 이야기에 관심이 많다. 당신의 배려 덕분에 우리가 향유하는 삶과 예술의 지평이 조금씩 넓어지고 있다고 굳게 믿는다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//14
      
      name="애니메이션 캐릭터 작화 기술";      //제목
      date="2019-03-08";      //출판일
      company="영진닷컴";      //출판사
      author="무로이 야스오";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/715/x9788931459715.jpg";         //이미지링크
      content="위의 내용이 모두 수록된 이 책은 저자의 애니메이터 경험과 수업을 진행하면서 키운 노하우를 정리한 것입니다. 총 3교시에 걸쳐 캐릭터의 ‘얼굴과 포즈를 그리고, 채색하는 방법’을 동영상으로 제공하고 있기 때문에, 애니메이터뿐만 아니라 만화가, 일러스트레이터 등 그림과 관련된 모든 사람 또는, 취미지만 잘 그리고 싶은 사람의 창작 활동에 있어, 어떻게 하면 ‘애니메이션 캐릭터를 제대로 그릴 수 있을까?!’라는 궁금증에 명쾌한 해답이 되어 줄 것입니다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//15
      
      name="지은쌤의 30일 피아노 코드 반주. 2";      //제목
      date="2020-05-27";      //출판일
      company="1458music";      //출판사
      author="김지은";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/099/x9791189598099.jpg";         //이미지링크
      content="유튜브 강의와 함께 연습하는, 지은쌤의 30일 피아노 코드 반주 2\r\n" + 
            
            "‘지은쌤의 30일 피아노 코드 반주 2’는 제목 그대로, 30일 동안 피아노 코드 반주를 배우는 책이다. 1권이 느린 음악을 중심으로 반주의 기본기를 연습했다면, 2권은 빠른 음악을 장르별 스타일에 맞춰 연습하도록 구성되어 있다.\r\n" + 
            "\r\n" + 
            "이 책은 단순히 악보만 따라 치는 교재를 넘어 스스로 반주를 만들 수 있는 능력을 키워준다. 반주 이론을 배우는 ‘오늘의 이론’, 배운 이론을 실제 대중음악에 맞춰 연습하는 ‘오늘의 연습’, 주어진 리듬으로 반주를 만들어 보는 ‘오늘의 적용’으로 구성되어 있다. 저자의 안내를 따라 하루하루 연습하다 보면, 30일 후에는 어떤 스타일의 음악이라도 코드만 보고 멋진 반주를 할 수 있게 될 것이다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//16
      
      name="내일은 미스터트롯 컬러링북";      //제목
      date="2020-05-25";      //출판일
      company="우리사이플래닛";      //출판사
      author="우리사이플래닛";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/558/x9791197018558.jpg";         //이미지링크
      content="온 국민을 울고 웃게 한 트롯맨들의 무대가 담긴 「내일은 미스터트롯 컬러링북」\r\n" + 
            "\r\n" + 
            "최고 시청률 37.5%, 전국에 트로트 열풍을 불러일으킨 화제의 프로그램 “내일은 미스터트롯”\r\n" + 
            "\r\n" + 
            "고이 간직하고 싶었던 감동의 순간을 한 자리에,\r\n" + 
            "\r\n" + 
            "디테일한 음영 표현으로 트롯맨들의 일러스트를 더욱 생생하게!\r\n" + 
            "\r\n" + 
            "화려하고 다채로운 트롯맨들의 무대를 나만의 색깔로 다시 채운다!\r\n" + 
            "\r\n" + 
            "펼치기 좋아 도화지에 그리듯 색칠할 수 있는 편리함\r\n" + 
            "\r\n" + 
            "어디에나 붙일 수 있는 스티커 2세트까지!";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//17
      
      name="석가의 해부학 노트";      //제목
      date="2017-02-06";      //출판일
      company="성안당";      //출판사
      author="석정현";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/833/x9788931579833.jpg";         //이미지링크
      content="왜 만화 주인공들의 눈은 크고, 서양인의 코는 높고, 슈퍼히어로들은 항상 쫄쫄이를 입을까? 알고 그리는 순간, 그림이 달라진다고 말하는 그림꾼 석정현은 인체의 미스터리를 한 권의 책에 모두 담았다. 『석가의 해부학 노트』는 ‘좋은 해부학 책’보다는 ‘쉬운 해부학 책’으로, 서구인에 초점을 맞춘 기존의 해부학 책들과 다르게 순수하게 한국인의 관점, 그리고 그림쟁이의 관점으로 해부학을 재해석했다. 인간 움직임의 다양성과 한계, 포즈의 의미를 성찰하게 만드는 이 책을 통해 근육에 대한 정확한 이해는 물론 평면적인 인물에게도 복잡한 심리를 부여하는 작가의 비밀을 들여다보자!";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//18
      
      name="보타니컬 아트 컬러링북: 플라워 편";      //제목
      date="2015-01-26";      //출판일
      company="아이콘북스";      //출판사
      author="권영애";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/148/x9788997107148.jpg";         //이미지링크
      content="『보타니컬 아트 컬러링북』은 그림에 소질이 없고 서툴다는 이유로 시작하지 못하는 사람들도 쉽게 따라할 수 있도록 구성됐다. 보타니컬 아트(Botanical Art)는 꽃을 비롯해 모든 식물을 소재로 아름답게 그리는 것이다. 보타니컬 아트를 처음 시작하는 사람들이 쉽고 재미있게 밑그림을 따라 그리기만 해도 완성할 수 있도록 미니 레슨, 원본 그림과 밑그림으로 구성해 놓았다.\r\n" + 
            "\r\n" + 
            "우리나라에서는 1980년대부터 시작하여 여러 문화센터나 아카데미 등에서 강좌를 통해 꾸준히 성장해 왔으며, 저자는 한국식물화가협회를 설립하여 적극적으로 전파하고 활동하고 있다. 이 책의 장점은 꽃을 비롯한 식물을 예쁘게 표현하기 때문에 그리는 동안 마음이 평온해지고 즐거워진다는 것이다. 또한 손을 움직여 색칠함으로써 두뇌가 활성화되고 치매 예방에도 도움이 되므로 사랑하는 엄마와 함께 아빠, 친정과 시댁의 부모님, 할머니, 할아버지께 좋은 선물이 된다.";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//19
      
      name="펭수 펭아트 #컬러링북";      //제목
      date="2020-04-06";      //출판일
      company="한국교육방송공사";      //출판사
      author="한결";      //저자
      img="http://image.kyobobook.co.kr/images/book/xlarge/695/x9788954752695.jpg";         //이미지링크
      content="‘펭클럽을 위한, 펭클럽에 의한’ EBS 두 번째 공식(Official) 펭아트(Peng Art) 시리즈 「펭아트#컬러링북」!\r\n" + 
            "나만의 펭수를 직접 색칠하여 표현할 수 있는 체험형 아트북!\r\n" + 
            "펭TV 스튜디오 디자이너 한결 감독이 직접 그린 펭수 데뷔 1주년 작품!\r\n" + 
            "자이언트 펭TV의 기존 에피소드를 담은 43종의 컬러링 일러스트와 6종의 색채 완성형 일러스트, 2종의 스티커를 단 한 권의 책으로!\r\n" + 
            "색연필, 수채화, 실사, 일러스트 등 다양한 표현이 가능한 감성 도안과 두꺼운 종이 재질!\r\n" + 
            "언제 어디서나 색칠 할 수 있는 콤팩트한 사이즈와 다양한 난이도!\r\n" + 
            "펼침성이 좋고, 오래오래 내 곁에 간직할 수 있는 누드 사철 제본!\r\n" + 
            "직접 색칠하여 어디든 활용할 수 있는 컬러링 스티커 포함!";      //내용 
      
      
      content2=content.replace("\r\n", "*");
      dto.add(new bookDto(name,content2,date,company,author,num,img));//20
      System.out.println(dto.size());
      
      
      for(bookDto tmp: dto) {
         System.out.println("insert into book values(book_seq.NEXTVAL,'"+tmp.getName()+"','"+tmp.getContent()+"','"+tmp.getDate()+"','"+tmp.getCompany()+"','"+tmp.getAuthor()+"','"+tmp.getSort()+"','"+tmp.getImg()+"')");
         System.out.println("/");
      }
   
   
   }
   
}