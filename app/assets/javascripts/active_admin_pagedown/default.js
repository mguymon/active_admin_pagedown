$(document).ready(function() {
    $wmd_input = $('.wmd-input');
    if ( $wmd_input.length > 0 ) {

        $wmd_input.each(function( index ) {
            $this = $(this);
            $this.attr('id', 'wmd-input-' + index);
            $this.closest('.pagedown_text').find('.wmd-preview').attr('id', 'wmd-preview-' + index);
            $this.closest('.wmd-panel').find('.wmd-button-bar').attr('id', 'wmd-button-bar-' + index);
            converter = Markdown.getSanitizingConverter();
            options = {};
            editor = new Markdown.Editor(converter, "-" + index, options );
            editor.run();
        });
    }
});