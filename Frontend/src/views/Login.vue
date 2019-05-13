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
    //   try {
    //   let result = await axios.post('http://localhost:4567/api/login', {username: this.username, password: this.password})
    //   console.log(result)
    //   if(result.data.success){
    //     console.log("YOU ARE LOGGED IN")
    //   }else{
    //     console.log("NOOB")
    //   }
      
    //   this.$router.push('/');
    
    // } catch(err) {
    //   console.error(err);
    // }
    
    }
  },
  // name: "user",
  // data() {
  //   return {
  //     users: null
  //   };
  // },
  // methods: {
  //   async getUser() {
  //     let res = await this.$http.get("http://localhost:4567");
  //     this.users = res.data;
  //   }
  // },
  // mounted: function() {
  //   this.getUser();
  // }
};
</script>

<style>

</style>
