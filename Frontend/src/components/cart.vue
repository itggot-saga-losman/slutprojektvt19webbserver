<template>
    <section id="cart">
      <main class="items">
        <h2>Din kundvagn</h2>
        <h3 @click="close">Tillbaka</h3>
        <article class="cart-item" v-for="item in cart" :key="item.ItemID">
            <section class="image">
                <img src="../assets/austin-wade-1520502-unsplash.jpg" alt="">
            </section>
            <section class="info">
                <h1>Namn: {{ item.ItemName }}</h1>
                <h2>Pris: {{ item.Price }}</h2>
            </section>
            <section class="price">
            {{ item.price }}
            </section>
        </article>
        <a href="#" v-on:click="buy()">Till kassan</a>
      </main>
    </section>
</template>

<script>
export default {
    name: 'cart',
    props: ['cart'],
    methods: {
      close(){

        this.$parent.views.cart = false;

      }
      
    },
    computed: {
    products(){
      return this.$parent.cart;
    }
  }
}
</script>

