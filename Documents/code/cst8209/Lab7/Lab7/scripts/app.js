(function() {
  var totalCost = 0
  var totalItems = 0
  var brands = [{
      "brand": "extra",
      "price": 1.50
    },
    {
      "brand": "wrigley",
      "price": 2.00
    },
    {
      "brand": "trident",
      "price": 1.25
    },
    {
      "brand": "bubble-gum",
      "price": 0.99
    },
  ]

  function update() {
    document.getElementById("totalItems").innerHTML = totalItems
    document.getElementById("totalCost").innerHTML = "$" + (totalCost.toFixed(2))
  }

  function addPrice(str) {
    brands.forEach(element => {
      if (element.brand == str) {
        totalItems++;
        totalCost += element.price
      }
      update()
    });
  }

  function clear() {
    totalItems = 0
    totalCost = 0
    update()
  }
  document.getElementById("extra").addEventListener("click", function () {
    addPrice("extra");
  });
  document.getElementById("wrigley").addEventListener("click", function () {
    addPrice("wrigley");
  });
  document.getElementById("trident").addEventListener("click", function () {
    addPrice("trident");
  });
  document.getElementById("bubble-gum").addEventListener("click", function () {
    addPrice("bubble-gum");
  });
  document.getElementById("clearBtn").addEventListener("click", function () {
    clear();
  });
  return {
  addPrice,
  clear
  }
}());
