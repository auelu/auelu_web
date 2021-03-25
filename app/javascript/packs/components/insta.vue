<template>
     <v-container>
        <v-row no-gutters class="flex-nowrap scroll">
          <v-col cols="5" md="3"v-for="list in lists" :key="list.id">
            <v-card :href="`${list.permalink}`" width="90%">
              <v-img :src="`${list.media_url}`" height="230px"></v-img>
              <v-card-text class="card-text">
                {{ list.caption }}
              </v-card-text>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
</template>

<script>
import axios from 'axios';

export default {
 data: function () {
    return {
      lists: []
    }
  },
    mounted () {
    axios
      .get('/api/v1/instagrams.json')
      .then(response => (this.lists = response.data))
  }
}
</script>

<style scorped>
  .v-application--wrap {
    min-height: 200px !important;
  }
  
  .card-text {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
  .scroll {
    overflow-x: scroll;
  }
</style>