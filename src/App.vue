<template>
  <img alt="Vue logo" src="./assets/logo.png" />
  <HelloWorld msg="Welcome to Your Vue.js App" />
  <VueMemo />
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";
import VueMemo from "./components/VueMemo.vue";

export default {
  name: "App",
  components: {
    HelloWorld,
    VueMemo,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
