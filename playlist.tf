resource "spotify_playlist" "Hiphop" {
  name        = "Hiphop"
  tracks = ["6OmQ0LT5nx5qrxoPljf8lv"]

}
 

data "spotify_search_track" "krsna" {
  artist = "krsna"
  limit = 10
}

resource "spotify_playlist" "krsna"{
    name = "KRSNA OG"
     tracks = [data.spotify_search_track.krsna.tracks[0].id, 
     data.spotify_search_track.krsna.tracks[1].id,
     data.spotify_search_track.krsna.tracks[2].id,
     data.spotify_search_track.krsna.tracks[3].id,
     data.spotify_search_track.krsna.tracks[4].id ]
}

