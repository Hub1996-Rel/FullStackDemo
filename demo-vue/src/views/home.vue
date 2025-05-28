<template>
  <el-container class="home-container">
    <!--顶部-->
    <el-header style="margin-right: 15px; width: 100%">
      <span class="nav-logo">😀</span>
      <span class="head-title">Just A Demo</span>
      <el-avatar
        icon="el-icon-user-solid"
        style="color: #222; float: right; padding: 20px"
        >{{ this.$store.state.user.userName }}</el-avatar
      >
    </el-header>
    <!-- 主体 -->
    <el-container>
      <!-- 侧边栏 -->
      <el-aside width="13%">
        <el-menu
          :default-active="$route.path"
          router
          text-color="black"
          active-text-color="red"
        >
          <el-menu-item
            v-for="(item, i) in navList"
            :key="i"
            :index="item.name"
          >
            <i :class="item.icon"></i>
            {{ item.title }}
          </el-menu-item>
        </el-menu>
      </el-aside>
      <el-main>
        <!--路由占位符-->
        <router-view></router-view>
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
export default {
  name: "Home",
  data() {
    return {
      navList: [
        { name: "/index", title: "首页", icon: "el-icon-s-home" },
        { name: "/user", title: "用户管理",icon:"el-icon-s-custom" },
      ],
    };
  },
};
</script>

<style >
.nav-logo {
  position: absolute;
  padding-top: -1%;
  left: 5%;
  font-size: 40px;
}

.head-title {
  position: absolute;
  padding-top: 20px;
  left: 15%;
  font-size: 20px;
  font-weight: bold;
}


</style>
