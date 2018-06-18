<template>
  <div id="app">
    <img height=200 width=400 src="./assets/rainbow.jpg">
    <Ops/>
  </div>
</template>

<script>
import Ops from './components/Ops'

export default {
  name: 'App',
  components: {
    Ops
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
