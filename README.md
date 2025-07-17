# 🧠 nimsec-roadmap

> 🛠️ Aprendiendo Nim desde lo básico hasta el desarrollo low-level y MalDev, con proyectos reales y enfocados en hacking ofensivo.

Este repositorio contiene una colección de proyectos progresivos escritos en **[Nim](https://nim-lang.org/)**, diseñados para fortalecer habilidades de programación, ciberseguridad ofensiva y desarrollo de herramientas personalizadas.

---

## 📁 Estructura del repositorio

| Etapa                   | Carpeta                                    | Descripción                                                                                             |
| ----------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------------- |
| 1 - Fundamentos         | [`calculator_cli`](calculator_cli)         | Calculadora de consola con operaciones básicas. Aprende `proc`, `let/var`, tipos, `stdin`, condiciones. |
| 1                       | [`txt_reader`](txt_reader)                 | Lector de archivos `.txt` línea por línea. Incluye mini búsqueda tipo `grep`.                           |
| 1                       | [`password_generator`](password_generator) | Generador de contraseñas personalizadas usando arrays, random y CLI args.                               |
| 2 - Sistemas            | [`port_scanner`](port_scanner)             | Escáner simple de puertos TCP. Aprende `sockets`, concurrencia y manejo de errores.                     |
| 2                       | [`console_keylogger`](console_keylogger)   | Keylogger por consola usando WinAPI. Intro a `GetAsyncKeyState` y `winim`.                              |
| 3 - Low-level & Hacking | [`reverse_shell`](reverse_shell)           | Reverse shell modular. Uso de `execShellCmd`, sockets, evasión básica.                                  |
| 3                       | [`shellcode_loader`](shellcode_loader)     | Carga y ejecución de shellcode desde archivos `.bin` en RAM (`alloc`, `cast`, FFI).                     |
| 3                       | [`pe_parser`](pe_parser)                   | Analizador básico de ejecutables `.exe`. Aprende sobre headers, offsets y estructuras PE.               |

---

## 🎯 Objetivo

**Desarrollar una base sólida en Nim** enfocada en:

- Automatización y scripting ofensivo.
- Malware Development (MalDev).
- Programación de bajo nivel.
- Ingeniería inversa y análisis de binarios.

---

## ⚠️ Disclaimer

> Este repositorio tiene fines estrictamente **educativos y de investigación**.  
> No me hago responsable por el uso indebido de este contenido.

---

## 🧬 Requisitos

- Nim >= 2.0
- Compilador C (GCC o Clang)
- Windows (para proyectos como keylogger o shellcode loader)

---

## 🚀 Compilación rápida

```bash
nim c -d:release -d:danger proyecto.nim
```

## ✅ Ejecución de prueba rápida

El siguiente comando ejecutará nuestro proyecto sin necesidad de compilarlo, solo para ver su resultado en consola, lo cual es util para ir testeando.

```bash
nim r proyecto.nim
```

> ⚠️ Algunos proyectos requieren instalar dependencias o estar en Windows para funcionar correctamente, esto será especificado en el README de cada proyecto.

---

## 🧪 Próximamente...

- Inyección DLL en Nim.
- Loaders polimórficos.
- Agentes C2 personalizados.
- Evasión AV con técnicas específicas.

---

## 🧠 Autor

@Znorlux -
Cybersecurity Researcher & Developer

```

```
