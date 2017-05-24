<template>
  <div class="list-group">
    <li class="list-group-item creating" v-if="creating">
      <input class="form-control" type="text" v-model="domainName">
      <button class="btn btn-primary ok" v-on:click="submit">
        <i class="fa fa-check"></i>
      </button>
      <button class="btn btn-danger cancel" v-on:click="cancel">
        <i class="fa fa-remove"></i>
      </button>
    </li>
    <domain-list-item v-for="domain in domains" :domain="domain" :key="domain.id"></domain-list-item>
  </div>
</template>

<script>
  export default {
    props: ['domains', 'creating'],
    data() {
      return {
        domainName: "New domain"
      }
    },
    methods: {
      cancel() {
        this.$emit('cancel')
      },

      submit() {
        this.$emit('new', this.domainName)
      }
    }
  }
</script>
