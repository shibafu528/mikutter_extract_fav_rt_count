Plugin.create(:extract_fav_rt_count) do
  defextractcondition(:favorite_count,
                      name: _('ふぁぼられた数'),
                      operator: true,
                      args: 1,
                      sexp: MIKU.parse("`(,compare (favorite_count message) ,(to_i (car args)))"))

  defextractcondition(:retweet_count,
                      name: _('リツイートされた数'),
                      operator: true,
                      args: 1,
                      sexp: MIKU.parse("`(,compare (retweet_count message) ,(to_i (car args)))"))
end
