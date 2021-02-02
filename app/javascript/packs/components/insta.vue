<template>
     <v-container>
        <v-row no-gutters class="flex-row flex-nowrap overflow-auto">
          <v-col cols="4" v-for="list in lists" :key="list.id">
            <v-card>{{list.value}}</v-card>
          </v-col>
        </v-row>
      </v-container>
</template>

<script>
export default {
 data: function () {
    return {
      lists: [
          {id: 1, value: "aa"},
          {id: 2, value: "aa"},
          {id: 3, value: "aa"},
          {id: 4, value: "aa"},
          {id: 5, value: "aa"},
          {id: 6, value: "aa"},
          {id: 7, value: "aa"},
          {id: 8, value: "aa"},
          ]
    }
  }
}
</script>

<style scorped>
  .v-application--wrap {
    min-height: 200px !important;
  }
</style>