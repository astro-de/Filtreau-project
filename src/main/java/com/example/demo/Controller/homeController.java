package com.example.demo.Controller;


import com.example.demo.Card.Product;
import com.example.demo.repos.UserRepo;
import com.example.demo.services.EmailServiceImpl;
import com.example.demo.userInfo.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@Scope("session")
@SessionAttributes({"SimpleCard"})
public class homeController {
    @Autowired
    EmailServiceImpl emailService;
    @Autowired
    public UserRepo userrepo;

    @GetMapping(path = "/")
    public String home() {
        //return "landing_page";
        return  "commingsoon";
    }
    @PostMapping(path = "/sendmail")
    public String sendmail(@RequestParam String email) {
        //return "landing_page";
        try{
            emailService.sendSimpleMessage("anassrami16@gmail.com","new user",email);
        }
        catch (Exception e){
            return  "redirect:/";
        }
        return  "redirect:/";
    }

    @GetMapping(path = "/product")
    public String product() {
        //return "product";
        return  "commingsoon";
    }

    @GetMapping(path = "/sandd")
    public String sandd(){
        return "sandd";
    }
    @GetMapping(path = "/contactus")
    public String contactus(){
        return "contactus";
    }

    @GetMapping(path = "/checkout")
    public String checkout(@RequestParam(defaultValue = "-1") int quantity, Model model, @RequestParam(required = false) String err) {
        if (quantity == -1) {
            return "redirect:/";
        }
        if (err != null) {
            model.addAttribute("error", "المرجو ادخال جميع المعطيات بشكل صحيح");
            return "checkout";
        } else if (quantity != 0) {

            Product p1 = new Product("Filtreau - Systeme d'osmose inverse 7 étapes", quantity, 1999);
            model.addAttribute("SimpleCard", p1);
            return "checkout";
        } else {
            return "redirect:product";
        }

    }

    @PostMapping(path = "/checkout")
    public String checkoutPost(Model model, @RequestParam String full_name, @RequestParam String phone, @RequestParam String city, @RequestParam String address) {
        if (full_name != "" && phone != "" && city != "") {
            try {
                userrepo.save(new user("N'" +full_name+"'", phone, "N'" +city+"'","N'" +address+"'", ((Product) model.getAttribute("SimpleCard")).getQuantity()));
                try {
                    emailService.sendSimpleMessage("anassrami16@gmail.com","New Order","name: "+full_name+" phone: "+phone+" city: "+city + " adresse: " +address);
                }catch (Exception e){
                    return "valide";
                }
                return "valide";
            } catch (Exception e) {
                Product p1 = (Product) model.getAttribute("SimpleCard");
                assert p1 != null;
                return "redirect:/checkout?err=1&quantity=" + p1.getQuantity();
            }

        } else {
            Product p1 = (Product) model.getAttribute("SimpleCard");
            assert p1 != null;
            return "redirect:/checkout?err=1&quantity=" + p1.getQuantity();
        }

    }
}
