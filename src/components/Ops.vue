<template>
  <div> 
    <div><h1>{{ opA }} <span v-on:click="switchOp">{{ this.op }}</span> {{ opB }} = <input maxlength="2" size="2" type="text" v-model="res" v-on:change="handleResult"></h1></div>
    <div><h1>{{ text }}</h1></div>
    <br>
  <div id="foot">Made with ❤️ by Xavier&Elvira 2018<br>v1.0.3</div>
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
            //this.text = "😰 " + this.opA + " " + this.Op + " " " + this.opB + " = " + eval(operation)
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
input[type=text] {
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
