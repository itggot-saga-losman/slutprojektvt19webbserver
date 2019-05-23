<template>
  <section id="product-view">
    <section class="overlay" v-if="showProduct" v-on:click="close"></section>
    <div class="view" v-if="showProduct">
      <div class="activeImg"></div>
      <h1>{{activeProduct.ItemName}}</h1>
      <h1>{{activeProduct.Price}} kr</h1>
      <img src="../assets/cart.svg" alt="" class="add" v-on:click="addToCart(activeProduct)"/>
    </div>
    <section class="products">
      <div class="new_arrivals">
        New Arrivals
      </div>
      <h1 class="category">{{Name}}</h1>
      <div class="product" v-for="item in products" v-bind:key="item.ItemID">
        <div class="itemImg" v-on:click="showItem(item)"></div>
        <div class="text">
          <h1>{{item.ItemName}}</h1>
          <h1>{{item.Price}} kr</h1>
          <img src="../assets/cart.svg" alt="" class="add" v-on:click="addToCart(item)"/>
          
        </div>
        
      </div>
    </section>
  </section>
</template>

<script>
export default {
  props: ['active'],
  data() {
    return {
      activeProduct: null,
      showProduct: false,
      Name: "All clothes"
    };
  },
  computed: {
    products(){
      return this.$parent.products;
    },
    users(){
      return this.$parent.users;
    }
  },
  methods: {
    async getClothing() {
      let res = await this.$http.get("http://localhost:4567");
      this.products = res.data;
    },
    close(){
      this.showProduct = false;
    },
    showItem(item){
      this.showProduct = true;
      this.activeProduct = item;
    },
    addToCart(item){
      let order = {
        ItemName: item.ItemName,
        Category: item.Category,
        Price: item.Price,
        ItemID: item.ItemID
      }
      // save in cart-array
      this.$parent.cart.push(order);

      //close view
      this.$parent.views.singleProduct = false;
    }
  }
};
</script>

