document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d');
    
    ctx.fillStyle = "yellow";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(350, 350, 100, 0, 2 * Math.PI);
    ctx.strokeStyle = "black";
    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = "blue";
    ctx.fill();

    ctx.beginPath();
    ctx.moveTo(0, 100);
    ctx.lineWidth = 10;
    ctx.lineTo(100, 100); 
    ctx.lineTo(200, 200); 
    ctx.lineTo(0, 100); 
    ctx.fillStyle = "red";
    ctx.fill();
});
