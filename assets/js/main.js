
function showToast(title, message, type) {
    document.getElementById('toastTitle').textContent = title;
    document.getElementById('toastBody').textContent = message;
    var liveToast = document.getElementById('liveToast');
    liveToast.classList.add('show');
    var toastBody = document.getElementById('toastBody');
    if (type === 'danger') {
        toastBody.style.color = '#dc3545';
    } else if (type === 'success') {
        toastBody.style.color = '#198754';
    }
}




