var ctx = document.getElementById("barChart").getContext('2d');
var barChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["CO1", "CO2", "CO3", "CO4", "CO5", "CO6", "CO7"],
    datasets: [{
      label: 'Achieved CO',
      data: [72, 90, 80, 47, 88, 54, 62],
      backgroundColor: "rgba(255,0,0,1)"
    }, {
      label: 'Expected CO',
      data: [100, 100, 100, 100, 100, 100, 100],
      backgroundColor: "rgba(0,0,255,1)"
    }]
  }
});