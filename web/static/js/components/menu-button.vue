<template>
  <div class="menu-button">
    <router-link :to="url">
      {{title}}
    </router-link>
  </div>
</template>

<script>
  export default {
    props: ['url', 'title'],
  }
</script>
