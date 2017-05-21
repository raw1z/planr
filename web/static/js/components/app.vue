<template>
  <div id="app">
    <domain :domain="domain"></domain>
  </div>
</template>

<script>
  import Domain from './domain'

  export default {
    components: { Domain },
    data: function() {
      return {
        domain: {
          name: "hobby",
          tasks: [
            {id: 1, comment: "release planr", archived: false},
            {id: 2, comment: "celebrate!", archived: false}
          ]
        }
      }
    }
  }
</script>
