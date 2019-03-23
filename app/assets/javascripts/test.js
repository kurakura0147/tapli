jQuery(document).on('turbolinks:load', function() {
  // buttonがanalysisの場合
  jQuery("#analysis-button").click(function(){
    if ($('#fadein-content').is(':hidden')) {
    //analysisの表示
      jQuery("[id = hidden-content]").hide("slow");
      jQuery("[id = opacity-content]").fadeTo("slow",0.2);
      jQuery("[id = fadein-content]").show("slow");
      jQuery(this).hide("slow");
      jQuery("#fade-inout").show("slow");
    }
  });
});

