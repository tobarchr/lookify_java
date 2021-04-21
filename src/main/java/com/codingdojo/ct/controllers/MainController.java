package com.codingdojo.ct.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.ct.models.Song;
import com.codingdojo.ct.services.SongService;

@Controller
public class MainController {
	SongService songService;
	
	MainController(SongService songService){
		this.songService = songService;
	}
	
    @RequestMapping("/")
    public String index(){
        return "index.jsp";
    }
    
    @RequestMapping("/dashboard")
    public String dashboard(Model model) {
    	List<Song> songs = songService.allSongs();
    	model.addAttribute("songs",songs);
		return "dashboard.jsp";
    }
    
    @RequestMapping("/songs/new")
    public String newSong(@ModelAttribute("song") Song song) {
        return "new.jsp";
    }
    
    @RequestMapping(value="/songs", method=RequestMethod.POST)
    public String createSong(@Valid @ModelAttribute("song") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
        	songService.createSong(song);
            return "redirect:/dashboard";
        }
    }
    
    @RequestMapping(value="/search")
    public String searchSong(@RequestParam(value="q", required=false) String searchQuery, Model model) {
    	List<Song> songs = songService.findArtist(searchQuery);
    	model.addAttribute("songs",songs);
        return "search.jsp";
    	
    }
    @RequestMapping(value="/songs/{id}", method = RequestMethod.DELETE)
    public String deleteSong(@PathVariable("id") Long id) {
    	songService.deleteSong(id);
		return "redirect:/dashboard";
    }
    
    @RequestMapping(value="/songs/{id}", method = RequestMethod.GET)
    public String viewSong(@PathVariable("id") Long id, Model model) {
    	Song songInfo = songService.findSong(id);
    	model.addAttribute("songInfo",songInfo);
		return "view.jsp";
    }

}
