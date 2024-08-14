<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="createCoupon.do" method="post">
   <div class="row gy-3 overflow-hidden">
     <div class="col-12">
       <div class="form-floating mb-3">
         <input type="text" class="form-control" name="name" id="name" placeholder="쿠폰이름 입력" required>
         <label for="쿠폰이름" class="form-label">쿠폰이름</label>
       </div>
     </div>
     <div class="col-12">
       <div class="form-floating mb-3">
         <input type="text" class="form-control" name="discount" id="discount" value="" placeholder="할인율 입력" required>
         <label for="할인율" class="form-label">할인율</label>
       </div>
     </div>
     <div class="col-12">
       <!-- <div class="d-grid"> -->
         <button class="btn bsb-btn-2xl btn-primary" type="submit">쿠폰등록</button>
         <button class="btn bsb-btn-2xl btn-secondary" type="submit">등록취소</button>
       <!-- </div> -->
     </div>
   </div>
</form>