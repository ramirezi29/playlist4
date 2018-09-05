//
//  PlaylistController.swift
//  Playlist
//
//  Created by James Pacheco on 5/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class PlaylistController {
    fileprivate static let PlaylistsKey = "playlists"
    
    static let shared = PlaylistController()
    
    init() {
        loadFromPersistentStore()
    }
    
	func add(playlistWithName name: String) {
		let playlist = Playlist(name: name)
		playlists.append(playlist)
		saveToPersistentStore()
	}
	
	func delete(playlist: Playlist) {
		guard let index = playlists.index(of: playlist) else { return }
		playlists.remove(at: index)
		saveToPersistentStore()
	}
	
	func add(song: Song, toPlaylist playlist: Playlist) {
		playlist.songs.append(song)
		saveToPersistentStore()
	}
	
	func remove(song: Song, fromPlaylist playlist: Playlist) {
		guard let index = playlist.songs.index(of: song) else { return }
		playlist.songs.remove(at: index)
		saveToPersistentStore()
	}
	
	// MARK: Persistence
	
    func saveToPersistentStore() {

    }
    
    func loadFromPersistentStore() {
		
    }
	
	// MARK: Properties 
	
	var playlists = [Playlist]()
}
