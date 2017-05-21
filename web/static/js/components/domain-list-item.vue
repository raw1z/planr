<template>
  <router-link class="list-group-item" :to="route">
    {{domain.name}}
  </router-link>
</template>

<script>
  export default {
    props: ['domain'],
    computed: {
      route() {
        return {
          name: 'domain',
          params: {
            id: this.domain.id
          }
        }
      }
    }
  }
</script>
