document.getElementById('openPanelBtn').addEventListener('click', function() {
    document.getElementById('panel').classList.add('open');
});

document.getElementById('closePanelBtn').addEventListener('click', function() {
    document.getElementById('panel').classList.remove('open');
});