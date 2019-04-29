<template>
    <div v-bind:id="cardConfig.id" class="divGrafico"></div>
</template>

<script>

export default {
  name: 'graficoLinha',
  props: {
    cardConfig: Object,
  },
  mounted: function () {
      Highcharts.chart(this.cardConfig.id, {
          title: {
              text: this.cardConfig.title
          },
        yAxis: {
          title: {
            text: ''
          }
        },
          plotOptions: {
              series: {
                  label: {
                      connectorAllowed: false
                  },
                  pointStart: 2010
              }
          },
          series: this.cardConfig.series
      });
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  .divGrafico {
    position: relative;
    width: 45%;
    max-height: 250px;
    border-radius: 10px;
    float: left;
    margin: 2%;
    box-shadow: 0 1px 10px 0 rgba(0,0,0,1);
  }

  @media (max-width: 1024px) {
    .divGrafico {
      width: 90%;
    }
  }

</style>
