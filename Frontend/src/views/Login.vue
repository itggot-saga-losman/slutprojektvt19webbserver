<template>
  <div id="login">
    <div class="name">Write name here</div>
    <form action="/login">
    <input type="Username" name="Username" placeholder="Username">
    <input type="Password" name="Password" placeholder="Password">
    <input type="submit" value="Submit">
    </form>
    <router-link to="/signup">Sign up</router-link> |
  </div>
</template>