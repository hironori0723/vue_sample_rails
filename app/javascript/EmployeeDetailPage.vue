<template>
  <dl>
    <dt>ID</dt>
    <dd>{{ employee.id }}</dd>
    <dt>Name</dt>
    <dd>{{ employee.name }}</dd>
    <dt>Department</dt>
    <dd>{{ employee.department }}</dd>
    <dt>Gender</dt>
    <dd>{{ employee.gender }}</dd>
    <dt>Birth</dt>
    <dd>{{ employee.birth }}</dd>
    <dt>Joined Date</dt>
    <dd>{{ employee.joined_date }}</dd>
    <dt>Payment</dt>
    <dd>{{ employee.payment }}</dd>
    <dt>Note</dt>
    <dd>{{ employee.note }}</dd>
  </dl>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      employee: {},
    };
  },
  mounted() {
    axios
      .get(`/api/v1/employees/${this.$route.params.id}.json`)
      .then((response) => (this.employee = response.data));
  },
};
</script>

<style scoped></style>
