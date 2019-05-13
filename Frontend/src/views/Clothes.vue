<template>
  <section id="product-view">
    <section class="overlay" v-if="showProduct" v-on:click="close"></section>
    <div class="view" v-if="showProduct">
      <h1>{{activeProduct.ItemName}}</h1>
          <h1>{{activeProduct.Category}}</h1>
          <h1>{{activeProduct.Price}} kr</h1>
          <h1 v-on:click="addToCart(activeProduct)">add to cart!</h1>
    </div>
    <section class="products">
      <img src="../assets/toa-heftiba-1527727-unsplash.jpg" alt="">
      <div class="product" v-for="item in products" v-bind:key="item.ItemID">
        <div >
          <img v-on:click="showItem(item)" src="../assets/marek-mucha-1517263-unsplash.jpg" alt="">
          <h1>{{item.ItemName}}</h1>
          <h1>{{item.Category}}</h1>
          <h1>{{item.Price}} kr</h1>
          <h1 class="add" v-on:click="addToCart(item)">add to cart!</h1>
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
      console.log(item)
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
  },
  mounted: function() {
   // this.getClothing();
  }
};
</script>

