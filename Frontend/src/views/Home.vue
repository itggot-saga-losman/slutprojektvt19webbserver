<template>
  <div class="home">
    <div class="new_arrivals">
        New arrivals
    </div>
    <div class="lookbooks">
        <h1>Lookbooks!</h1>
        <div class="container">
            <router-link to="/clothes" class="lookbook_1">
             <p>Cozy winter</p>
            </router-link> 
            <router-link to="/clothes" class="lookbook_2">
             <p>Crazy travels</p>
            </router-link> 
            
        </div>
        
    </div>
    <h1>Categories!</h1>
    <div class="categories">
        <router-link to="/clothes" class="category_1">
             <p>Shirts</p>
        </router-link> 
        <router-link to="/clothes" class="category_2">
             <p>Pants</p>
        </router-link> 
        <router-link to="/clothes" class="category_3">
             <p>Dresses</p>
        </router-link> 
        <router-link to="/clothes" class="category_4">
             <p>Shoes</p>
        </router-link> 
        <router-link to="/clothes" class="category_5">
             <p>Jackets</p>
        </router-link> 
        
    </div>
  </div>
</template>
