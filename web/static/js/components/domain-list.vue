<template>
  <div class="list-group">
    <domain-list-item v-for="domain in domains" :domain="domain" :key="domain.id"></domain-list-item>
  </div>
</template>

<script>
  import DomainListItem from './domain-list-item'

  export default {
    components: { DomainListItem },
    props: ['domains']
  }
</script>
