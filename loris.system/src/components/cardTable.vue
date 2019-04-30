<template>
  <div id="data-hub" class="row table-responsive">
    <table class="table table-hover">
      <thead class="thead-light" >
      <tr>
        <th v-for="(col, key) in cardConfig.series[0]" scope="col"> {{key}}</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="row in cardConfig.series">
          <td v-for="cell in row">
              {{ cell }}
          </td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  name: "",
  props: {
    cardConfig: Object,
  }
  /*  data: {
        cardConfig: null,
        n: 10
    },
    created: function () {
      this.requestData();
      window.setInterval(this.requestData, 1000);
    },
    methods: {
      requestData(){
        var _this = this;
        $.getJSON('api/cardData3.json', function (cardConfig) {
          _this.cardConfig = cardConfig;
        });
        console.log("Geral: Data requested");
      }
    }*/
};
</script>



<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
  #data-hub{
  	text-align: center;
  	margin: auto;

  }
  @media (max-width: 992px){
  	#data-hub{width: 80%;}
  }
  @media (max-width: 480px){
  	#data-hub{width: 100%;}
  }
  #data-hub  thead th{
  	text-align: center;
  	background-color: #051A2D;
  	color: #EF921A;
  	font-size: 1.1em;
  }
  #data-hub tbody{
    background-image: linear-gradient(to right, #02284A, #03447c);
  	color: white;
  	font-size: 1.05em;
      text-align: center;
  }
  #data-hub tbody tr:hover{
  	background-color: #051A2D;
  }
</style>

</script>
