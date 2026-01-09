'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "356088da83dca79e72395b7f406402dd",
"version.json": "5a893c22a858aea4f2960fb2d3d5da86",
"index.html": "e59e5fd481efc1eb10ef68015474d2f3",
"/": "e59e5fd481efc1eb10ef68015474d2f3",
"main.dart.js": "5daa1890c026b545b9728784500a248e",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"favicon.png": "0ba6bdbef0b06573500e517b56f9e29c",
"icons/Icon-192.png": "3b190e0b680cdfcf9547da2d7497e57f",
"icons/Icon-maskable-192.png": "3b190e0b680cdfcf9547da2d7497e57f",
"icons/Icon-maskable-512.png": "0f65a14f4b26de85d32e3900d203b121",
"icons/Icon-512.png": "0f65a14f4b26de85d32e3900d203b121",
"manifest.json": "067d76b5a1e7757d31584ea3fc194354",
"assets/NOTICES": "493f2949b0d5e75fb19c4739ddb09d07",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "a5203aa6f9df0779a1bda990dc2e7d5a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "e7eca543fa3a7c57293a47b6e9291b13",
"assets/fonts/MaterialIcons-Regular.otf": "a29674667bca791d4b3162a6131da9d5",
"assets/assets/images/photo_about.png": "3e8dc3085c1b6c3991b8888896ae0cd5",
"assets/assets/images/photo.png": "958352cd5d234b4b8adb418056c76b1f",
"assets/assets/images/icons/icon_linkedin_dark.svg": "5b238434e2862c877f08572b96c0ef7b",
"assets/assets/images/icons/icon_github_dark.svg": "1bb027109345a90a9eab1e929d8669c2",
"assets/assets/images/portfolio/copal_logo.png": "7a8a5273710cb7c99f94f0c88d7ac923",
"assets/assets/images/portfolio/copal/2_Menu.png": "149ef72bfdb5985bee02a9eb09c00eb8",
"assets/assets/images/portfolio/copal/4_Box.png": "011a5c761251a37c33fc1c7a0c8ee3b3",
"assets/assets/images/portfolio/copal/8_Settings.png": "20dcd5fc4356c8d97b2423b4140ca776",
"assets/assets/images/portfolio/copal/1_Home.png": "2f0dd7140ac9bfd8e96b964bc85c8a8b",
"assets/assets/images/portfolio/copal/5_Pallet.png": "08d076858b2b7c3a590476660c7f628d",
"assets/assets/images/portfolio/copal/6_Robot.png": "7d9be2ef8d965ee0f2503e05a28d5f77",
"assets/assets/images/portfolio/copal/3_Pallet.png": "39f11f48fa24656195058713328a425b",
"assets/assets/images/portfolio/copal/7_Conversion.png": "ce24df3d3ad2efe8b9f191d5943c5c47",
"assets/assets/images/portfolio/petplace_logo.png": "a239b121f33206d5d476e84b28755e9f",
"assets/assets/images/portfolio/myorbit_logo.png": "54d2578e2578c7bfffcfeedc5d0115e1",
"assets/assets/images/google_play.png": "57cc7edc4a4aa9b674c9d530e524833c",
"assets/assets/images/app_store.png": "e45d7b387c8c68bc868da007d6b16c09",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
