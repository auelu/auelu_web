<template>
    <div>
        <transition name="left" appear>
           <h1>大阪府社会人フットサルチーム</h1>
        </transition>
        <transition name="left-sec" appear>
           <h2>TEAM*AUELU</h2>
        </transition>
        <transition name="bottom" appear>
           <p>大阪府でフットサルをするならアウエルへ！</p>
        </transition>
    </div>
</template>

<style scoped>
.left-enter-active {
  transform: translate(0px, 0px);
  transition: transform 225ms cubic-bezier(0, 0, 0.2, 1) 700ms;
}

.left-enter {

  transform: translateX(-100vw) translateX(0px);
  
}


.left-sec-enter-active {
  transform: translate(0px, 0px);
  transition: transform 225ms cubic-bezier(0, 0, 0.2, 1) 900ms;
}

.left-sec-enter {

  transform: translateX(-100vw) translateX(0px);
  
}

.bottom-enter-active {
   transition: opacity 11s;
}

.bottom-enter {
  opacity: 0;
}

</style>




