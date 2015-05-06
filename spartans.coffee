$ ->

  # Contact Spartans API to request suggestion scores
  #
  getSpartansScores = (appId, itemSource, itemCandidates, callback) ->
    $.post(
      'http://api.spartans-dev.co:3000/v1/apps/' + appId + '/suggestions',
      {
        source: itemSource,
        candidates: itemCandidates.join()
      },
      (data) ->
        callback(data)
    )


  # Search for all .spartans blocks
  #
  if($('.spartans').length)
    $('.spartans').each ->

      # Get necessary variables
      $spartans = $(this)
      spartansAppId = $spartans.data('spartans-app-id')
      spartansSource = $spartans.data('spartans-source')

      # Get candidates
      spartansCandidates = []
      $spartans.find('.spartans-candidate').each (i, obj) ->
        spartansCandidates.push($(this).data('spartans-id'))

      # Call Spartans API and perform on candidates based on scores (in callback)
      getSpartansScores(spartansAppId, spartansSource, spartansCandidates, (data) ->

        $spartans.find('.spartans-candidate').each ->
          $this = $(this)

          # Add score data attribute for all candidates
          $this.attr('data-spartans-score', data.suggestion.scores[$this.data('spartans-id')])

        # Reorder items
        $spartans.find('.spartans-candidate').sort((a, b) ->
          +b.getAttribute('data-spartans-score') - +a.getAttribute('data-spartans-score')
        ).appendTo $spartans
      )
