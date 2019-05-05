<template>
    <section class="products">
    <img src="../assets/toa-heftiba-1527727-unsplash.jpg" alt="">
    <div class="product" v-for="item in products" v-bind:key="item.ItemID">
      <div>
        <h1>{{item.ItemName}}</h1>
        <h1>{{item.ItemID}}</h1>
        <h1>{{item.Category}}</h1>
        <h1>{{item.Price}} kr</h1>
      </div>
      
    </div>
  </section>
</template>

<script>
export default {
  name: "all",
  data() {
    return {
      products: null
    };
  },
  methods: {
    async getClothing() {
      let res = await this.$http.get("http://localhost:4567");
      this.products = res.data;
    }
  },
  mounted: function() {
    this.getClothing();
  }
};
</script>

