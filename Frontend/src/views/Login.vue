<template>
  <div id="login">
    <div class="name">Write name here</div>
    <form action="">
    <input type="Username" name="Username" v-model="username" placeholder="Username">
    <input type="Password" name="Password" v-model="password" placeholder="Password">
    <input type="submit" value="Submit" @click.prevent="login">
    </form>
    <router-link to="/signup">Sign up</router-link> 

    <!-- <div class="product" v-for="user in users" v-bind:key="user.UserID">
      <div>
        <h1>{{user.UserID}}</h1>
      </div>
      
    </div> -->
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'login',
  data(){
    return {
      username: "Sagoos",
      password: "ery"
    }
  },
  methods: {
    async login(){
    }
}}

</script>

<style>

</style>
