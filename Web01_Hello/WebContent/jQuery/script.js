
select("#changBtn").addEventListener('click',()=>{
    // document.querySelector('#one').innerText="김구라"+"\n";
    // document.querySelector('#two').innerText="해골"+"\n";
    select('#one').innerText="김구라"+"\n";
    select('#two').innerText="해골"+"\n";
})
function select(sel){
    return document.querySelector(sel);
} 
// 이런 구조를 유틸리티라 한다 자주 쓰는함수에 매개변수를 부여하여 여러군데에서
//  사용함 jquery는 이런 것들을 모아 놓은 프로그램
