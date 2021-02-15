<template>
    <v-app>
        <v-container class="my-3">
            <v-row>
                <v-col v-for="player in players" :key="player.id" cols="6" md="3">
                    <v-card>
                        <v-card-title >
                            <img :src="`${player.photo.url}`" alt="選手写真" width="160px" height="120px">
                                <div class="mx-auto font-weight-black">{{ player.number }}</div> 
                            </v-card-title>
                     
                       <v-divider class="mx-4 my-2"></v-divider>
                        <v-card-text class="text-center">
                          <div>{{ player.name }}</div>
                    
                          <div>{{player.birthday}}</div>
                          
                          <div>{{player.belong}}</div>
                        </v-card-text>
                    </v-card>
                </v-col>
            </v-row>
        </v-container>
    </v-app>
</template>

<script>
import axios from 'axios';

export default {
 data: function () {
    return {
      players: []
    }
  },
    mounted () {
    axios
      .get('/api/v2/players.json')
      .then(response => (this.players = response.data))
  }
}
</script>