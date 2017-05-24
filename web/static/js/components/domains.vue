<template>
  <div class="domains">
    <div class="menu">
      <div class="domain-name">Domains</div>
      <div class="menu-button">
        <a v-on:click="newDomain">new</a>
      </div>
    </div>
    <domain-list :domains="domains" :creating="showNewDomain" v-on:new="createNewDomain" v-on:cancel="cancelNewDomain"></domain-list>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        domains: [],
        showNewDomain: false
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
      },

      newDomain() {
        this.showNewDomain = true
      },

      createDomain() {
        console.log("hum")
      },

      createNewDomain(name) {
        this.showNewDomain = false
        console.log(name)
      },

      cancelNewDomain() {
        this.showNewDomain = false
      }
    }
  }
</script>
