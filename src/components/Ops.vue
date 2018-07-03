<template>
  <div> 
    <div><h1>{{ opA }} <span v-on:click="switchOp">{{ this.op }}</span> {{ opB }} = <input minlength="0" maxlength="2" size="2" type="tel" v-model="res" v-on:change="handleResult" pattern="[0-9]*"></h1></div>
    <div><h1>{{ text }}</h1></div>
    <br>
    <div id="foot">
      <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
        <input type="hidden" name="cmd" value="_s-xclick">
        <input type="hidden" name="hosted_button_id" value="9MLGVEMZHPUHQ">
        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
      </form>
      <br>
      Made with ❤️ by Xavier&Elvira 2018<br> v1.0.6
    </div>
  </div>
</template>
<script>


export default {
  name: 'Ops',
  data () {
    return {
      opA: this.getRandomInt(9),
      opB: this.getRandomInt(9),
      res: "",
      text: "😺",
      op: "*"
      };
  },
    methods: {
      switchOp () {
        this.op = this.op === "*" ? "+" : "*"
      },
      handleResult () {
          var operation
          if (this.op === "*") {
            operation = 'this.opA*this.opB'
          } else {
            operation = 'this.opA+this.opB'
          }
          if (this.res == eval(operation)) {
            this.text = "😎"
          } else {
            this.text = `😰 ${this.opA} ${this.op} ${this.opB} = ${eval(operation)}`
          }
          this.initOp()
          this.res = ""
      },
      getRandomInt(max) {
        return Math.random() * max + 1 | 0
      },
      initOp() {
        this.opA = this.getRandomInt(9)
        this.opB = this.getRandomInt(9)
      }
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
input[type=tel] {
  color: red;
  vertical-align: 0%;
  font-size: 30px;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
#foot {
  text-align: center;
  color: grey;
  font-size: 10px;
}
</style>
