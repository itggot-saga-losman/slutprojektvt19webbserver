<template>
  <main>
    <section class="products">
        <div v-for="item in products" v-bind:key="item.ItemID" ><h1>{{item.ItemName}}</h1></div>
    </section>
  </main>
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
      console.log("hej")
    }
  },
  mounted: function() {
    this.getClothing()
  }
};
</script>

