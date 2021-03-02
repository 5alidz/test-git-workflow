function sleep(time) {
  return new Promise((res) => setTimeout(res, time));
}

function log(msg, time) {
  if (time) {
    sleep(time).then(() => console.log(msg));
  } else {
    console.log(msg);
  }
}

module.exports = {
  log,
};
