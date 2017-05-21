<template>
  <a class="menu-button" :href="url">
    {{title}}
  </a>
</template>

<script>
  export default {
    props: ['url', 'title'],
    data: function() {
      return {}
    }
  }
</script>
