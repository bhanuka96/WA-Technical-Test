
# Technical Test - Bhanuka Isuru

**I used,**
- state management - [riverpod](https://pub.dev/packages/riverpod)
- http handling - [dio](https://pub.dev/packages/dio)
- Defining model classed - [freezed](https://pub.dev/packages/freezed)
- Caching network images - [cached_network_image](https://pub.dev/packages/cached_network_image)

**DS**
Used `HashMap` to store user selected products. `key` is the product id and `value` is count and product.
Reason to use : The simple reason is performance.  
The advantage of a HashMap is that the time complexity to insert and retrieve a value is O(1) on average.