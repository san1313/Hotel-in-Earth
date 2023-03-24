var acc = document.getElementsByClassName("accordion");
for (let i = 0; i < acc.length; i++) {
	acc[i].addEventListener("click", function() {
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

document.querySelector('#modifyBtn').addEventListener('click', function() {
	this.style.display = "none";
	document.querySelector('#modifyBtn2').style.display = "inline-block";
	let title = document.querySelector('#postTitleBox');
	let titleInput = document.createElement('input');
	titleInput.type = "text";
	titleInput.name = "modTitle";
	titleInput.className = "modInput";
	titleInput.value = title.innerText;
	title.innerText = '';
	title.append(titleInput);
	let content = document.querySelector('#postContentBox');
	let contentInput = document.createElement('textarea');
	contentInput.name = "modContent";
	contentInput.className = "modInput";
	contentInput.innerText = content.innerText;
	content.innerText = '';
	content.append(contentInput);
})

document.querySelector('#modifyBtn2').addEventListener('click', function() {
	let form = document.querySelector('#modFrm');
	let title = document.querySelector('input[name="modTitle"]');
	let content = document.querySelector('textarea[name="modContent"]');
	let pid = document.createElement('input');
	pid.type = "hidden";
	pid.name = "pid";
	pid.value = pidValue;
	form.append(pid);
	form.append(title);
	form.append(content);
	form.submit();
})

document.querySelector('#respMod').addEventListener('click', function() {
	this.style.display = "none";
	document.querySelector('#respMod2').style.display = "inline-block";
	let content = document.querySelector('#postResponseContent');
	let contentInput = document.createElement('textarea');
	contentInput.name = "respContent";
	contentInput.className = "modInput";
	contentInput.innerText = content.innerText;
	content.innerText = '';
	content.append(contentInput);
})

document.querySelector('#respMod2').addEventListener('click', function() {
	let form = document.querySelector('#modFrm');
	let content = document.querySelector('textarea[name="respContent"]');
	form.action = "responseModify.do";
	form.append(content);
	let rid = document.createElement('input');
	rid.type = "hidden";
	rid.name = "rid";
	rid.value = ridValue;
	form.append(rid);
	let pid = document.createElement('input');
	pid.type = "hidden";
	pid.name = "pid";
	pid.value = pidValue
	form.append(pid);
	form.submit();
})