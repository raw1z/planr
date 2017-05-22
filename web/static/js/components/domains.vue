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
        let query = `
        {
          domains {
            id
            name
          }
        }
        `
        axios.post('/api', {query}).then(({data}) => {
          this.domains = data.data.domains
        })
      }
    }
  }
</script>
