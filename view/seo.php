<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "BlogPosting",
        "headline": "<?=$dataSi['slug']?>",
        "description": "<?=$dataSi['slug']?>",
        "image": "<?=$dataSi['domaine']?>/asset/icon/logo.ico",
        "author": {
            "@type": "Person",
            "name": "<?=$dataSi['auteur']?>"
        },
        "publisher": {
            "@type": "Organization",
            "name": "<?=$dataSi['auteur']?>",
            "logo": {
                "@type": "ImageObject",
                "url": "<?=$dataSi['domaine']?>/asset/icon/logo.ico"
            }
        },
        "datePublished": "<?=$dataBs['date']?>",
        "mainEntityOfPage": {
            "@type": "WebPage",
            "@id": "<?=$dataSi['domaine']?>/pages/blog.php?ipop=<?=$dataBs['id']?>"
        }
    }
</script>

