/**
 *  모달1
 */

  // HTML 문서의 로딩이 완료되었을 때, 해당 함수를 실행
  document.addEventListener("DOMContentLoaded", function () {
    // elements
    var modalBtn = document.getElementById("modalBtn");
    var modal = document.getElementById("myModal");
    var closeBtn = document.getElementById("closeBtn");
    var modalBtn2 = document.getElementById("modalBtn2");
    var modal2 = document.getElementById("myModal2");
    var closeBtn2 = document.getElementById("closeBtn2");

    // functions
    function toggleModal() {
      modal.classList.toggle("show");
    }
    // functions
    function toggleModal2() {
      modal2.classList.toggle("show");
    }

    // events
    modalBtn.addEventListener("click", toggleModal);
    closeBtn.addEventListener("click", toggleModal);
    // events
    modalBtn2.addEventListener("click", toggleModal2);
    closeBtn2.addEventListener("click", toggleModal2);

    window.addEventListener("click", function (event) {
      // 모달의 검은색 배경 부분이 클릭된 경우 닫히도록 하는 코드
      if (event.target === modal) {
        toggleModal();
      }
      if (event.target === modal2) {
        toggleModal2();
      }
    });
  });