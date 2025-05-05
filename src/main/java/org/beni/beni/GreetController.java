package org.beni.beni;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetController {

    @GetMapping("/greet")
    public String greeting() {
        return "Hallo TechLab QA-ers!";
    }
}
