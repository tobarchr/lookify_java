package com.codingdojo.ct.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.ct.models.Song;

@Repository
public interface SongRepository extends CrudRepository <Song, Long>{
	//This Method retrieves all the Songs from the Database
    List<Song> findAll();
    //This Method searches the database for Artist
    List<Song> findByArtistContaining(String search);

}
