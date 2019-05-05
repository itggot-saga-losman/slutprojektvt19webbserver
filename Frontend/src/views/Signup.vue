<template>
    <div id="signup">
        <div class="name">Write name here</div>
        <form action="/signup" method="POST">
            <input type="Username" name="Username" placeholder="Username">
            <input type="Password" name="Password" placeholder="Password">
            <input type="Password" name="Password2" placeholder="Confirm Password">
            <input type="submit" value="Submit">
        </form>
        <router-link to="/login">Login</router-link> |
    </div>
</template>
