require(["gitbook", "jQuery"], function(gitbook, $) {
    gitbook.events.bind("page.change", function() {
        $('[data-gist-id]').gist();
    });
});