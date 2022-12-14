package com.kruger.vaccination.DTO;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ExtendedUserDTO {
    private String address;

    @DateTimeFormat
    private Date birthDate;

    @NotBlank(message = "La cédula es requerida")
    private String dni;

    @Email
    @NotBlank(message = "El correo electrónico es requerido")
    private String email;

    @NotBlank(message = "El campo de id de usuario es requerido")
    private Long id;

    @NotBlank(message = "El campo de nombre o nombres es requerido")
    @Size(message = "El nombre debe tener al menos 3 caracteres", min = 3)
    private String name;

    private String phone;

    @NotBlank(message = "El campo de apellido o apellidos es requerido")
    @Size(message = "El apellido debe tener al menos 3 caracteres", min = 3)
    private String surname;

    private Set<UserVaccineDTO> userVaccines = new HashSet<>();

    private boolean vaccination;
}