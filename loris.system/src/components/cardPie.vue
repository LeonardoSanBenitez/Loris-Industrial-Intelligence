<template>
  <div>
     <div v-bind:id="cardConfig.id"></div>
  </div>

</template>

<script>
export default {
  name: 'graficoLinha',
  props: {
    cardConfig: Object,
  },
  mounted: function () {
    Highcharts.chart(this.cardConfig.id, {
      chart: {
          type: 'variablepie'
      },
      title: {
          text: this.cardConfig.title
      },
      tooltip: {
          headerFormat: '',
          pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
              'Energy (kWh): <b>{point.y}</b><br/>' +
              'Power factor: <b>{point.z}</b><br/>'
      },
      plotOptions: {
          variablepie: {
              allowPointSelect: true,
              cursor: 'pointer',
              dataLabels: {
                  enabled: false
              },
              showInLegend: true
          }
      },
      series: this.cardConfig.series
    });
  }
}
</script>
