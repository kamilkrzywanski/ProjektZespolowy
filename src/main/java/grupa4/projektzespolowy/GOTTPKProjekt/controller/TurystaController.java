package grupa4.projektzespolowy.GOTTPKProjekt.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import grupa4.projektzespolowy.GOTTPKProjekt.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import grupa4.projektzespolowy.GOTTPKProjekt.model.Rola;
import grupa4.projektzespolowy.GOTTPKProjekt.model.Turysta;
import grupa4.projektzespolowy.GOTTPKProjekt.model.Uzytkownik;
import grupa4.projektzespolowy.GOTTPKProjekt.service.RolaService;
import grupa4.projektzespolowy.GOTTPKProjekt.service.UzytkownikServiceImpl;
import grupa4.projektzespolowy.GOTTPKProjekt.service.TurystaServiceImpl;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Laptop
 */
@Controller
public class TurystaController {
    @Autowired
    private TurystaServiceImpl turystaServiceImpl;

    @Autowired
    private UzytkownikServiceImpl uzytkownikServiceImpl;

    @Autowired
    private RolaService rolaService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Autowired
    EmailService emailService;

    @GetMapping("/turysci")
    public ModelAndView getAllProduct(Authentication authentication) {

        ModelAndView modelAndView = new ModelAndView("turysta/turysta");
        modelAndView.addObject("turysci", turystaServiceImpl.getAllTurysta());
        modelAndView.addObject("LoggedUser", authentication);

        //turystaServiceImpl.getAllTurysta().get(0).getN

        return modelAndView;
    }


    @GetMapping({"/turysci/addForm", "/rejestracja/turysta"})
    public ModelAndView addformTurysta(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView("turysta/addForm");
        modelAndView.addObject("LoggedUser", authentication);
        return modelAndView;
    }


    @GetMapping("/turysci/updateForm")
    public String updateformTurysta(@RequestParam(value = "id") Integer idTurysta,
                                    Model model,
                                    Authentication authentication) {

        model.addAttribute("LoggedUser", authentication);

        Turysta turysta = turystaServiceImpl.getOneById(idTurysta);
        Uzytkownik uzytkownik = turysta.getUzytkownik();
        model.addAttribute("turysta", turysta);
        model.addAttribute("uzytkownik", uzytkownik);

        return "turysta/updateForm";
    }

    @GetMapping("/turysta/mojeKonto")
    public String accountSettings(Model model, Authentication authentication) {

        if (authentication != null) {
            Uzytkownik uzytkownik = uzytkownikServiceImpl.getLoggedUserDetails(authentication);
            Turysta turysta = uzytkownik.getTurysta();
            model.addAttribute("turysta", turysta);
            model.addAttribute("uzytkownik", uzytkownik);
            model.addAttribute("LoggedUser", authentication);
            //System.out.print(numer);
        } else {
            System.out.print("Nie znaleziono takiego uzytkownika");
        }

        return "turysta/kontoTurysty";
    }


    @PostMapping("/turysci/dodaj")
    public String createTurysta(@RequestParam(value = "imie") String imie,
                                @RequestParam(value = "nazwisko") String nazwisko,
                                @RequestParam(value = "opis") String opis,
                                @RequestParam(value = "punkty") int punkty,
                                @RequestParam(value = "telefon") String telefon,
                                @RequestParam(value = "login") String login,
                                @RequestParam(value = "haslo") String haslo,
                                @RequestParam(value = "email") String email,
                                @RequestParam(value = "niepelnosprawnosc") boolean niepelnosprawnosc,
                                @RequestParam(value = "dataUrodzenia") Date dataUrodzenia,
                                RedirectAttributes redirectAttributes,
                                Authentication authentication) {

        Rola rola = rolaService.getOneByName("ROLE_turysta");
        Uzytkownik uzytkownik = new Uzytkownik(login, passwordEncoder.encode(haslo), email, rola); // tworze u??ytkownika z referencj?? do pobranej roli
        rola.getUzytkownicy().add(uzytkownik); // dodaj u??ytkownika do roli (relacja jeden do wielu)
        Turysta turysta = new Turysta(imie, nazwisko, telefon, uzytkownik, opis, punkty, niepelnosprawnosc, dataUrodzenia); // stw??rz turyste z utworzonym u??ytkownikiem

        UUID uuid = UUID.randomUUID();
        turysta.getUzytkownik().setUUID(uuid.toString());
        turystaServiceImpl.createTurysta(turysta); // pu???? inserta do bazy
        // UWAGA! kolejno???? operacji jest wa??na.
        emailService.sendActivationLinkToNewUser(turysta.getUzytkownik());

        if (authentication != null) {
            redirectAttributes.addFlashAttribute("success_msg", "Dodane turyste pomy??lnie");
            return "redirect:/turysci";
        }
        else {
            redirectAttributes.addFlashAttribute("success_msg", "Aby m??c si?? zalogowa?? kliknij w link wys??any na podany adres e-mail");
            return "redirect:/";
        }
    }

    @PostMapping("/turysci/update/{idTurysta}")
    public String updateTurysta(@RequestParam(value = "imie") String imie,
                                @RequestParam(value = "nazwisko") String nazwisko,
                                @RequestParam(value = "telefon") String telefon,
                                @RequestParam(value = "login") String login,
                                @RequestParam(value = "opis") String opis,
                                @RequestParam(value = "punkty") int punkty,
                                @RequestParam(value = "haslo", required = false) String haslo,
                                @RequestParam(value = "email") String email,
                                @PathVariable Integer idTurysta,
                                RedirectAttributes redirectAttributes) throws IOException {

        Turysta turysta = turystaServiceImpl.getOneById(idTurysta);

        turysta.setImie(imie);
        turysta.setNazwisko(nazwisko);
        turysta.setTelefon(telefon);
        turysta.setOpis(opis);
        turysta.setPunkty(punkty);
        turysta.getUzytkownik().setLogin(login);
        if (haslo != "")
            turysta.getUzytkownik().setHaslo(passwordEncoder.encode(haslo));
        turysta.getUzytkownik().setEmail(email);

        turystaServiceImpl.createTurysta(turysta);
        redirectAttributes.addFlashAttribute("success_msg", "Zmiany zosta??y przyj??te pomy??lnie");
        return "redirect:/turysci";
    }

    @GetMapping("/turysci/usun/{idTurysta}") // usu?? turyste wraz z jego kontem u??ytkownika
    public String removeTurysta(@PathVariable Integer idTurysta,
                                RedirectAttributes redirectAttributes) throws IOException {

        Turysta turysta = turystaServiceImpl.getOneById(idTurysta); // pobieram turyste po odebranym id
        Uzytkownik uzytkownik = turysta.getUzytkownik(); // pobieram uzytkownika przypisanego do turysty
        turysta.setUzytkownik(null); // usuwam referencje do rodzica

        uzytkownikServiceImpl.removeUzytkownik(uzytkownik.getIdUzytkownik()); // usuwam u??ytkownika i od razu kaskadowo usuwa si?? turysta.
        //turystaServiceImpl.removeTurysta(idTurysta);

        redirectAttributes.addFlashAttribute("success_msg", "Usuni??to turyste pomy??lnie");
        return "redirect:/turysci";
    }

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, null,  new CustomDateEditor(dateFormat, true));
	}

}
