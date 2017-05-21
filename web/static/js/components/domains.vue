<template>
  <div class="domains">
    <div class="menu">
      <div class="domain-name">Domains</div>
    </div>
    <domain-list :domains="domains"></domain-list>
  </div>
</template>

<script>
  import DomainList from './domain-list'

  export default {
    components: { DomainList },
    data() {
      return {
        domains: []
      }
    },
    created() {
      this.fetchData()
    },
    methods: {
      fetchData() {
        this.domains = [
          {id: 1, name: 'Hobby'},
          {id: 2, name: 'Unowhy'}
        ]
      }
    }
  }
</script>
