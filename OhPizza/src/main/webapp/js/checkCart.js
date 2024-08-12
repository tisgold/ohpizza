/**
 * 
 */
// 증거버튼에 이벤트 등록.
document.querySelectorAll('.plus_btn').forEach(btn => {
	// 이벤트 등록.
	btn.addEventListener('click', function(e) {
		// ajax. 호출.
		let listNo = this.parentElement.children[1].value;
		let count = this.parentElement.children[2].value;
		console.log(listNo, count);
		fetch('UpPcnt.do?listNo=' + listNo + '&count=' + count)
			.then(result => result.json())
			.then(result => {
				console.log(result);
				this.parentElement.children[2].value = parseInt(count) + 1;
				this.parentElement.parentElement.children[4].innerHTML = this.parentElement.parentElement.children[2].children[0].innerHTML*(parseInt(count) + 1);
			})
			.catch(err => console.log(err))
	})
});

document.querySelectorAll('.minus_btn').forEach(btn => {
	btn.addEventListener('click', function(e) {
		
		let listNo = this.parentElement.children[1].value;
		let count = this.parentElement.children[2].value;
		console.log(listNo, count);
		
		fetch('downPcnt.do?listNo=' + listNo + '&count=' + count)
			.then(result => result.json())
			.then(result => {
				console.log(result);
				this.parentElement.children[2].value = parseInt(count) - 1;
				this.parentElement.parentElement.children[4].innerHTML = this.parentElement.parentElement.children[2].children[0].innerHTML*(parseInt(count) - 1);
			})
			.catch(err => console.log(err))
	})
});







function checkCart() {

	let result = [];

	const query = 'input[name="clist"]:checked';
	const selectedCart = document.querySelectorAll(query);


	selectedCart.forEach((sCart) => {
		result.push(sCart.value);
		console.log(sCart);
		console.log(sCart.value);

	})

	console.log(result);
	console.log(result[0]);

	let json = JSON.stringify(result);
	console.log(json);

}

