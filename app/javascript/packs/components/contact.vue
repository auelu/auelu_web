<template>
    <v-app>
        <v-container>
            <v-card>
                <v-card-title>募集内容</v-card-title>
                <v-card-text>
                    <v-list-item>
                        <v-list-item-content>〇競技フットサルに興味がある</v-list-item-content>
                    </v-list-item>
                    <v-list-item>
                        <v-list-item-content>〇加入後、チーム活動に積極的に参加できる</v-list-item-content>
                    </v-list-item>
                    <v-list-item>
                        <v-list-item-content>＊加入によるセレクション等は行っていません</v-list-item-content>
                    </v-list-item>
                </v-card-text>
            </v-card>
            <v-list>
                <v-subheader>練習参加希望あるいは練習試合の相談は下記からお願い致します</v-subheader>
                <v-list-item>
                    <v-list-item-icon>
                        <v-icon v-text="items[0].icon"></v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                        <v-list-item-content v-text="items[0].content"></v-list-item-content>
                    </v-list-item-content>
                </v-list-item>
                <v-list-item :href="`${items[1].url}`">
                    <v-list-item-icon>
                        <v-icon v-text="items[1].icon"></v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                        <v-list-item-content v-text="items[1].content"></v-list-item-content>
                    </v-list-item-content>
                </v-list-item>
                <v-list-item :href="`${items[2].url}`">
                    <v-list-item-icon>
                        <v-icon v-text="items[2].icon"></v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                        <v-list-item-content v-text="items[2].content"></v-list-item-content>
                    </v-list-item-content>
                </v-list-item>
               
            </v-list>
        </v-container>
    </v-app>
</template>

<script>
export default {
 data: function () {
    return {
      items: [
          {content: "nashiizumi@gmail.com", icon: "far fa-envelope"},
          {content: "@AUELU18FUTSAL", icon: "fab fa-twitter-square", url: "https://twitter.com/AUELU18FUTSAL"},
          {content: "@auelu_official", icon: "fab fa-instagram", url: "https://www.instagram.com/auelu_official"},
          ]
    }
 }
}
</script>

