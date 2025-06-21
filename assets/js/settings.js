// ===== SMPN 19 MATARAM - CENTRALIZED SETTINGS =====

window.SMPN19_SETTINGS = {
    // Site Information
    siteTitle: "SMPN 19 Mataram - Sekolah Unggul Berkarakter",
    siteDescription: "Membangun generasi unggul dengan pendidikan berkualitas, karakter yang kuat, dan prestasi yang membanggakan di Nusa Tenggara Barat.",
    siteKeywords: "SMPN 19 Mataram, sekolah menengah pertama, pendidikan, NTB, Mataram",
    siteAuthor: "SMPN 19 Mataram",
    siteURL: "https://smpn19mtr.sch.id",
    ogImage: "assets/images/webp/banner-smpn19.webp", // Open Graph image

    // Contact Information
    contactAddress: "Jl. Dr. Soedjono, Dasan Cermen, Sandubaya, Mataram, Nusa Tenggara Barat",
    contactPhone: "(0370) 123-4567",
    contactEmail: "info@smpn19mataram.sch.id",
    operationalHours: "07:00 - 15:00 WIB",

    // School Statistics (for Hero Section)
    totalStudents: 499,
    totalTeachers: 25,
    classrooms: 12,
    landArea: 4646,

    // Feature Toggles
    enableServiceWorker: true, // For PWA and caching
    enableAnimations: true,    // AOS animations
    enableLazyLoading: true,   // Image lazy loading
    enableThemeToggle: true,   // Dark/Light theme toggle

    // Internal Paths (for clean URLs)
    paths: {
        home: "/",
        profile: "/profil",
        news: "/berita",
        gallery: "/galeri",
        contact: "/kontak"
    },

    // External Links
    externalLinks: {
        facebook: "#",
        twitter: "#",
        instagram: "#"
    },

    // Image Optimization Settings
    imageSettings: {
        useWebP: true, // Use WebP format for images
        lazyLoadThreshold: 200 // Pixels before image enters viewport to start loading
    },

    // Function to get a setting (example usage)
    getSetting: function(key) {
        const keys = key.split(".");
        let value = this;
        for (let i = 0; i < keys.length; i++) {
            if (value.hasOwnProperty(keys[i])) {
                value = value[keys[i]];
            } else {
                return undefined; // Setting not found
            }
        }
        return value;
    }
};

// Example of how to use settings (can be removed after integration)
// console.log(window.SMPN19_SETTINGS.siteTitle);
// console.log(window.SMPN19_SETTINGS.paths.profile);

