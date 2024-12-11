'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "b32696b254f5064c7677a792daf34526",
"version.json": "99178477b498def7f84ee8ee07ee5138",
"index.html": "9c2309c08b8fbc5279251217e2d9a267",
"/": "9c2309c08b8fbc5279251217e2d9a267",
"main.dart.js": "af231dfe2153660294d789351268e716",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "0636cae3b1c989d2b787d5bfe367fe32",
"assets/AssetManifest.json": "62f12db4210929830d8673e4a9a8dd6b",
"assets/NOTICES": "506d27c3ba390bcf1e969d5b592a77a1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "8f76c30adaabe3f9fe18d3f965e5dbd9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "de9362900b6cdd23cadc6d4af74eefc9",
"assets/fonts/MaterialIcons-Regular.otf": "78574c5ea27c1a688ac42335cea166ba",
"assets/assets/images/info.png": "98e9a682072471dd57c058db7e6fbe64",
"assets/assets/images/me.png": "fc9c40ee6e325390139a2e051146db4f",
"assets/assets/images/dicon.png": "4313d6c361c8c0f204c07fa851176642",
"assets/assets/images/multi.png": "d41426e896df3338d6fbbd6f6871e109",
"assets/assets/images/main2.jpg": "6f1de1af75928eb88178a99317cea040",
"assets/assets/images/mov3.png": "0745062fc4c81d9c16f12b2bfb662598",
"assets/assets/images/mov2.png": "10f1d8127fcaa952399ee8341620f34f",
"assets/assets/images/nakgeon.png": "eb76d9173087ba3edb2d5cb8e324a073",
"assets/assets/images/main3.jpg": "a759ccc89b6474dd98f2468e6dbad385",
"assets/assets/images/main1.jpg": "6d2296934a77369193c69c4663805c0e",
"assets/assets/images/digital.png": "c37d2ef4eaa223954199a157532a5633",
"assets/assets/images/mov1.png": "8ea8de3a3feff8f1a6c8660b94237348",
"assets/assets/images/insta.webp": "43b344d5467fec7bf8b08a0ee35b7df4",
"assets/assets/images/main4.jpg": "c72d1465c635d360afa5b4b5363c0cdf",
"assets/assets/images/mov4.png": "6bb7fbbbd9e1d78097fc756af566df88",
"assets/assets/images/2022.png": "b1e018ad0a15798c5d731a9ee6455664",
"assets/assets/images/ytube.png": "d337e86234003f84a90624e9a34727c9",
"assets/assets/images/2023.png": "a1ce2221db7edba9414b8e876007117f",
"assets/assets/images/pay4.png": "a15ce68c26c49ff87aa8a2ed30771a4f",
"assets/assets/images/2021.png": "a1365e01c69fe5fea955638585fd072e",
"assets/assets/images/enter.png": "9d427ff4412b17c1f41e42e0920a7f14",
"assets/assets/images/2020.png": "99f165034a7aeb172a194030301b0b04",
"assets/assets/images/eunseok.png": "9cf768f72581fe55fc176771d4f2f3d5",
"assets/assets/images/soft.png": "b61328f181c8483bf729791c7fb63f43",
"assets/assets/images/pay5.png": "36aeec8107f9101650886c74b3364fb2",
"assets/assets/images/pay1.png": "e155ed35ac9bfe5ff45eed08c63f1ee5",
"assets/assets/images/2024.png": "a1916e155d3ba7a003f8e58ab4800dd6",
"assets/assets/images/2019.png": "a2de41865165440398b232833b770cab",
"assets/assets/images/meca.png": "dbbed6541f5a82702316e0806ddeb4e5",
"assets/assets/images/pay2.png": "64b66bc6a92a21e3e7039927c2154f87",
"assets/assets/images/pay3.png": "2bd4c476631388d98a55769c36262b80",
"assets/assets/images/dicon2.png": "538b564d16863f41b09fbb9dbdd4c95d",
"assets/assets/images/4.png": "7957b544048f095dee84871b272bec22",
"assets/assets/images/hyuseong.png": "1a79d84a8edee34af9e63fab12786daa",
"assets/assets/images/job.png": "c736d98f9be10a0563b931072aa37a4b",
"assets/assets/images/kitaek.png": "b87e88ccd4b6ad7e5e35fa8c6ae1db79",
"assets/assets/images/2.png": "42c0292638bf479af3bba6b2d1da6e8f",
"assets/assets/images/3.png": "8a257602606793d001d961e74f2e4e70",
"assets/assets/images/1.png": "7d1d1a0950647f89e94bd163c06584c5",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "2dacf0cbe2b0301329051504e3025323",
"canvaskit/canvaskit.js.symbols": "090206e56fe56a2b301bbf6a4f099890",
"canvaskit/skwasm.wasm": "bdeebc65b0a3bcc2c325afad3583004d",
"canvaskit/chromium/canvaskit.js.symbols": "0468919817435b75fcbbecdbcf976cb3",
"canvaskit/chromium/canvaskit.js": "417c635e514296a337033bbd95ba8332",
"canvaskit/chromium/canvaskit.wasm": "51f6bbb593a6c1e563d456c1a7024a0c",
"canvaskit/skwasm_st.js.symbols": "15236f8ba381099e23f098c7811b41aa",
"canvaskit/canvaskit.js": "d9252a0c6a6498261f19267314e95a47",
"canvaskit/canvaskit.wasm": "61fc1cc3f22cbc678b80236135b0b945",
"canvaskit/skwasm_st.wasm": "c09fac11db4494c5bce980ec36ff1391"};
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
