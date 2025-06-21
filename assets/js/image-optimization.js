// ===== LAZY LOADING AND WEBP IMAGE OPTIMIZATION =====

document.addEventListener("DOMContentLoaded", function() {
    if (window.SMPN19_SETTINGS && window.SMPN19_SETTINGS.imageSettings.enableLazyLoading) {
        const lazyLoadImages = document.querySelectorAll("img[data-src]");
        const lazyLoadThrottleTimeout = 300;
        let lazyLoadTimer;

        function lazyload () {
            if (lazyLoadTimer) {
                clearTimeout(lazyLoadTimer);
            }

            lazyLoadTimer = setTimeout(function() {
                const scrollTop = window.pageYOffset;
                lazyLoadImages.forEach(function (img) {
                    if (img.offsetTop < (window.innerHeight + scrollTop + window.SMPN19_SETTINGS.imageSettings.lazyLoadThreshold)) {
                        img.src = img.dataset.src;
                        img.removeAttribute("data-src");
                    }
                });
                if (lazyLoadImages.length == 0) {
                    document.removeEventListener("scroll", lazyload);
                    window.removeEventListener("resize", lazyload);
                    window.removeEventListener("orientationChange", lazyload);
                }
            }, lazyLoadThrottleTimeout);
        }

        document.addEventListener("scroll", lazyload);
        window.addEventListener("resize", lazyload);
        window.addEventListener("orientationChange", lazyload);
    }

    // Convert image sources to WebP if supported and enabled
    if (window.SMPN19_SETTINGS && window.SMPN19_SETTINGS.imageSettings.useWebP) {
        function supportsWebP() {
            const elem = document.createElement("canvas");
            if (!!(elem.getContext && elem.getContext("2d"))) {
                // was true for webp support
                return elem.toDataURL("image/webp").indexOf("data:image/webp") === 0;
            }
            return false;
        }

        if (supportsWebP()) {
            document.querySelectorAll("img").forEach(function(img) {
                const src = img.getAttribute("src");
                const dataSrc = img.getAttribute("data-src");

                if (src && (src.endsWith(".jpg") || src.endsWith(".png"))) {
                    img.src = src.replace(/\.(jpg|png)$/, ".webp");
                }
                if (dataSrc && (dataSrc.endsWith(".jpg") || dataSrc.endsWith(".png"))) {
                    img.dataset.src = dataSrc.replace(/\.(jpg|png)$/, ".webp");
                }
            });
        }
    }
});

