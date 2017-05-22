<template>
  <div class="domain">
    <div class="menu">
      <menu-button url="/domains" title="Domains"></menu-button>
      <div class="domain-name">{{domain.name}}</div>
      <menu-button url="#" title="New"></menu-button>
    </div>
    <timer></timer>
    <div class="tasks">
      <task v-for="task in domain.tasks" :key="task.id" :task="task"></task>
    </div>
  </div>
</template>

<script>
  import Task from './task'
  import Timer from './timer'
  import MenuButton from './menu-button'

  export default {
    components: { Task, Timer, MenuButton },
    props: ['id'],
    data() {
      return {
        domain: {}
      }
    },
    created() {
      this.fetchData()
    },
    methods: {
      fetchData() {
        let query = `
        {
          domain(id: ${this.id}) {
            id
            name
            tasks {
              id
              comment
              archived
            }
          }
        }
        `
        axios.post('/api', {query}).then(({data}) => {
          this.domain = data.data.domain
        })
      }
    }
  }
</script>

