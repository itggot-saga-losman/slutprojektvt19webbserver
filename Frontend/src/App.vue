<template>
  <div id="app">
    <div id="nav">
      <h1>Nav</h1>
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
      <aside class="cart">
        Cart
      </aside>
    </div>
    <section id="main">
        <router-view/>
    </section>
    
    <footer>
      <h1>Footer</h1>
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/clothes">Clothes</router-link> |
      <router-link to="/contact">Contact</router-link>
    </footer>
  </div>
</template>
<style lang="scss">
  @import 'scss/main.css'; 
</style>
