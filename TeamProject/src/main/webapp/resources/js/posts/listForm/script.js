(function () {

	[].slice.call(document.querySelectorAll('.tabs')).forEach(function (el) {
		new CBPFWTabs(el);
	});

})();


var acc = document.getElementsByClassName("accordion");
for (let i = 0; i < acc.length; i++) {
	acc[i].addEventListener("click", function () {
		this.classList.toggle("active");
		var panel = this.nextElementSibling;
		panel.classList.toggle("activePanel")
		if (panel.style.maxHeight) {
			panel.style.maxHeight = null;
		} else {
			panel.style.maxHeight = panel.scrollHeight + "px";
		}
	});
}

(function () {
	// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
	if (!String.prototype.trim) {
		(function () {
			// Make sure we trim BOM and NBSP
			var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
			String.prototype.trim = function () {
				return this.replace(rtrim, '');
			};
		})();
	}

	[].slice.call(document.querySelectorAll('input.input__field, textarea.input__field')).forEach(function (inputEl) {
		// in case the input is already filled..
		if (inputEl.value.trim() !== '') {
			classie.add(inputEl.parentNode, 'input--filled');
		}

		// events:
		inputEl.addEventListener('focus', onInputFocus);
		inputEl.addEventListener('blur', onInputBlur);
	});

	function onInputFocus(ev) {
		classie.add(ev.target.parentNode, 'input--filled');
	}

	function onInputBlur(ev) {
		if (ev.target.value.trim() === '') {
			classie.remove(ev.target.parentNode, 'input--filled');
		}
	}
})();
let btns = document.querySelectorAll('#writeBtn').forEach(btn => {
	btn.addEventListener('click', function () {
		let tbody = this.parentElement.parentElement.parentElement.children[0].children[2]
		let title = this.parentElement.querySelector('#postTitle').value;
		let content = this.parentElement.querySelector('#postContent').value;
		let type = this.parentElement.querySelector('#postType').value;
		let email = this.parentElement.querySelector('#email').value;
		let temp = this.parentElement.parentElement.parentElement.querySelector('a.active');
		let curPage;
		if (!temp) {
			curPage = 1;
		} else {
			curPage = temp.innerText;
		}
		if (!title || !content) {
			alert("값을 입력하세요");
			return;
		}
		fetch('postWrite.do', {
			method: 'post',
			headers: { 'Content-type': 'application/x-www-form-urlencoded' },
			body: 'title=' + title + '&content=' + content + '&type=' + type + '&email=' + email
		})
			.then(resolve => resolve.json())
			.then(result => {
				console.log(result);
				if (result.retCode == 'Success') {
					console.log(curPage);
					getPageList(curPage, type);
					this.parentElement.querySelector('#postTitle').value = '';
					this.parentElement.querySelector('#postContent').value = '';
				}
			})
			.catch(reject => console.error(reject))
	})
})


//글쓴후 필드를 비워줌
function initField(form) {
	form.getElementById('postTitle').value = '';
	form.getElementById('postContent').value = '';
}


//현재 시간 구하는 method
function getTime() {
	var today = new Date();
	let year = today.getFullYear();
	let month = today.getMonth() + 1
	month = month < 10 ? '0' + month : month;
	let date = today.getDate();
	date = date < 10 ? '0' + date : date;
	let hours = today.getHours();
	hours = hours < 10 ? '0' + hours : hours;
	let minutes = today.getMinutes();
	minutes = minutes < 10 ? '0' + minutes : minutes;
	let seconds = today.getSeconds();
	seconds = seconds < 10 ? '0' + seconds : seconds;
	return year + '-' + month + '-' + date + ' ' + hours + ':' + minutes + ':' + seconds
}


//페이징 버튼 눌렀을시 동작
function getPageList(page, QFN) { // ajax로 리스트 불러오기
	fetch('postListAjax.do', {
		method: 'post',
		headers: { 'Content-type': 'application/x-www-form-urlencoded' },
		body: 'page=' + page + '&QFN=' + QFN
	})
		.then(resolve => resolve.json())
		.then(result => {
			let tbody = document.querySelector('.list' + QFN);
			tbody.textContent = "";
			for (let i = 0; i < result.list.length; i++) {	//리스트 삭제하고 전부 새로불러오기
				let tr = document.createElement('tr');
				let td = document.createElement('td');
				if (QFN == 'F') {
					td.colspan = "2";
					let button = document.createElement('button');
					button.type = "button";
					button.className = "collapsible";
					button.innerText = result.list[i].postTitle;
					button.addEventListener("click", function () {
						let temp = document.querySelector('.listF .active')
						if (temp&& temp!=this) {
							document.querySelector('.listF .active').classList.remove('active');
							temp.nextElementSibling.style.maxHeight = null;
						}
						this.classList.toggle("active");
						let content = this.nextElementSibling;
						if (content.style.maxHeight) {
							content.style.maxHeight = null;
						} else {
							content.style.maxHeight = content.scrollHeight + "px";
						}
					})
					td.append(button);
					let div = document.createElement('div');
					div.className = "contentFAQ"
					let p = document.createElement('p');
					p.innerText = result.list[i].postContent;
					div.append(p);
					td.append(div);
				} else {
					let a = document.createElement('a');
					a.innerText = result.list[i].postTitle;
					if (result.list[i].postResponse == 'Y') {
						let span = document.createElement('span');
						span.className = "responseY";
						span.innerText = "답변완료";
						a.append(span);
					}
					a.href = 'viewPost.do?pid=' + result.list[i].postId;
					td.append(a);
					tr.append(td);
					td = document.createElement('td');
					td.className = 'center';
					let time = result.list[i].postWriteDate;
					let resultTime = moment(time, "MMM DD, YYYY, h:mm:ss a").format("YYYY-MM-DD HH:mm:ss");
					td.innerText = resultTime;
				}
				tr.append(td);
				tbody.append(tr);
			}
			let num = 0;
			if (QFN == "Q") {
				num = 2;
			} else if (QFN == "F") {
				num = 1;
			}
			let ul = document.querySelectorAll('.pagination')[num];	//페이지 버튼 active 여부 변경
			for (let i = 0; i < ul.childElementCount; i++) {
				ul.children[i].firstChild.classList.remove('active');
			}
			let pagee = page;
			if (page > 10) {
				pagee = page % 10 + 1;
				if (pagee == 0) {
					pagee = 11;
				}
			}
			ul.children[pagee - 1].firstChild.classList.add('active');
		})
		.catch(reject => console.error(reject))
}

let coll = document.getElementsByClassName("collapsible");
for (let i = 0; i < coll.length; i++) {
	coll[i].addEventListener("click", function () {
		let temp = document.querySelector('.listF .active')
		if (temp&&temp!=this) {
			document.querySelector('.listF .active').classList.remove('active');
			temp.nextElementSibling.style.maxHeight = null;
		}
		this.classList.toggle("active");
		var content = this.nextElementSibling;
		if (content.style.maxHeight) {
			content.style.maxHeight = null;
		} else {
			content.style.maxHeight = content.scrollHeight + "px";
		}
	});
}