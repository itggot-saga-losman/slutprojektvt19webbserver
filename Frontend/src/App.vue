<template>
  <div id="app">
    <product v-if="views.singleProduct" :active="activeProduct"></product>
    <cart :cart="cart" v-if="views.cart" />
    <div id="nav">
      <h1>Nav</h1>
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/clothes">Clothes</router-link> |
      <router-link to="/login">Login</router-link>
      <aside class="cart">
        <img src="../src/assets/cart.svg" alt="" @click="toggleCart" />
        <div class="badge">{{ cart.length }}</div>
        
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

<script>
import cart from '@/components/cart';

export default {
  name: 'app',
  components: {
      cart
    },
  data(){
    return {
      products: [{"ItemID":1,"ItemName":"Dress","Category":"Dresses","Collection":"Summer","Price":150},{"ItemID":2,"ItemName":"Shirt","Category":"Shirts","Collection":"Summer","Price":200,"0":2,"1":"Shirt","2":"Shirts","3":"Summer","4":200},{"ItemID":3,"ItemName":"Pants","Category":"Pants","Collection":"Autumn","Price":3000,"0":3,"1":"Pants","2":"Pants","3":"Autumn","4":3000},{"ItemID":4,"ItemName":"Skirt","Category":"Skirts","Collection":"Spring","Price":300,"0":4,"1":"Skirt","2":"Skirts","3":"Spring","4":300}],
      users: [{"UserID":1, "Username":"Sagoos", "Name":"Saga", "LastName":"Losman", "Email":"sagaloepic@gmail.com", "Password":"Bulle123"}],
      cart: [{"ItemID":1,"ItemName":"Dress","Category":"Dresses","Collection":"Summer","Price":150,"0":1,"1":"Dress","2":"Dresses","3":"Summer","4":150},{"ItemID":2,"ItemName":"Shirt","Category":"Shirts","Collection":"Summer","Price":200,"0":2,"1":"Shirt","2":"Shirts","3":"Summer","4":200},{"ItemID":3,"ItemName":"Pants","Category":"Pants","Collection":"Autumn","Price":3000,"0":3,"1":"Pants","2":"Pants","3":"Autumn","4":3000},{"ItemID":4,"ItemName":"Skirt","Category":"Skirts","Collection":"Spring","Price":300,"0":4,"1":"Skirt","2":"Skirts","3":"Spring","4":300}],
      
      views: {
        singleProduct: false,
        cart: false
      },
      cart: []
    }
  },
  methods: {
      toggleCart() {
        
        this.views.cart = !this.views.cart;
      }
    }
}
</script>

<style lang="scss">
  @import 'scss/main.css'; 
</style>
