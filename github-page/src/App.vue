<template>
  <div id="app">
    <Editor />

    <footer class="footer">
      <p class="float-right">
        <i class="fa fa-github"></i>
        <a href="https://github.com/fangpenlin/avataaars-geneator" target="_blank">GitHub repo</a>
      </p>
      <p>
        Designed by
        <strong>
          <a href="https://twitter.com/pablostanley" target="_blank">Pablo Stanley</a>
        </strong> 🎨
        <br />Developed by
        <strong>
          <a href="https://twitter.com/_LeDocteur_" target="_blank">Lenoir Christopher</a>
        </strong> 💻
        <br />Free for personal and commercial use. 😇
        <br />Original Sketch library can be found at
        <strong>
          <a href="http://avataaars.com/" target="_blank">avataaars.com</a>
        </strong>
        <br />
      </p>
    </footer>
  </div>
</template>

<script>
import Editor from "../../editor/Editor";

export default {
  name: "app",
  components: {
    Editor
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  margin-top: 60px;
}
</style>
