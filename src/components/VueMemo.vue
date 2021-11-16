<template>
  <div class="vue-memo">
    <ul>
      <li>Windows 環境下建立專案。</li>
      <li>測試用 PowerShell 的 Script "deploy.ps1" deploy 成功。</li>
      <li>
        測試用 cmd 的 batch "deploy.bat" deploy 。測試失敗（ 2021-11-17 00:50
        ），待確認原因。
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "VueMemo",
};
</script>

<style>
.vue-memo {
  margin-top: 2rem;
  text-align: left;
}
</style>
