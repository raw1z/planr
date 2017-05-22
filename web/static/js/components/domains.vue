<template>
  <div class="domains">
    <div class="menu">
      <div class="domain-name">Domains</div>
      <menu-button url="#" title="New"></menu-button>
    </div>
    <domain-list :domains="domains"></domain-list>
  </div>
</template>

<script>
  export default {
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
