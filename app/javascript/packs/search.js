$(document).on("turbolinks:load", function() {
  var concepts;
  concepts = $('#search_concepto_id').html();
  partis = $('#search_partida_id').html();
  return $('#search_capitulo_id').change(function() {
    var capit, conceptsFilts;
    capit = $('#search_capitulo_id :selected').text();
    // options = $(conceptos).filter("optgroup[label=" + capitulos + "]").html();
    var head = "<option value='' label=''></option>";
    conceptsFilts = head + $(concepts).filter("optgroup[label=\"" + capit + "\"]").html();
    console.log(conceptsFilts);
    if (conceptsFilts) {
      $('#search_concepto_id').html(conceptsFilts);
      return $('#search_concepto_id').change(function() {
        var concept = $('#search_concepto_id :selected').text();
        partisFilts = head + $(partis).filter("optgroup[label=\"" + concept + "\"]").html();
        if (partisFilts) {
          return $('#search_partida_id').html(partisFilts);
        } else {
          return $('#search_partida_id').empty();
        }
      });

    } else {
      return $('#search_concepto_id').empty();
    }
  });
});