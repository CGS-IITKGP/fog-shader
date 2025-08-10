<div id="top"></div>

<!-- PROJECT SHIELDS -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links-->
<div align="center">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

</div>

<!-- PROJECT LOGO -->
<br />
<!-- UPDATE -->
<div align="center">
  <a href="https://github.com/cgs-iitkgp/Fog Shader">
     <img width="650" alt="image" src="https://github.com/user-attachments/assets/adc1c34b-894a-44de-8ddd-7e5583227831">
  </a>

  <h3 align="center">Fog Shader</h3>

  <p align="center">
  <!-- UPDATE -->
    <i>Volumetric fog shader using GLSL</i>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
<summary>Table of Contents</summary>

- [About The Project](#about-the-project)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Contact](#contact)
  - [Maintainer(s)](#maintainers)
  - [creators(s)](#creators)
- [Additional documentation](#additional-documentation)

</details>


<!-- ABOUT THE PROJECT -->
## About The Project

<div align="center">
<a href="https://github.com/shourya-kr/fog-shader">
</a>
</div>

This project is a C++ and OpenGL implementation of a volumetric fog shader. It demonstrates a common computer graphics technique used to add depth, atmosphere, and mood to a 3D scene.

<p align="right">(<a href="#top">back to top</a>)</p>

## Project Overview

->**Procedural Noise and Fog** - Dynamic, atmospheric fog is created using multiple layers of procedural noise, making it appear turbulent and natural. The fog's density realistically increases with distance and decreases with altitude, adding depth to the scene.
 
->**RayMarching** - This technique renders the procedural landscape by casting a ray for each pixel and "marching" it through the scene. The final color is determined by where this ray intersects with the terrain surface.

->**Terrain Formation** - The terrain's shape is procedurally generated using layered sine waves to create rolling hills and valleys. The surface is then shaded by calculating its normals for realistic lighting and applying a base texture color.

->**Main Execution** - This function serves as the entry point, setting up the animated camera's position and view for the scene. It then coordinates the raymarching and shading processes for every pixel to produce the final image.

## Getting Started

To set up a local instance of the application, follow the steps below.

### Prerequisites and Installations

The environment needed is just the shadertoy (Available online, so no further installations required)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Usage
<!-- UPDATE -->
This shader is designed to run directly in a web browser on the Shadertoy platform. No local installation or setup is required.

1.  **View the shader live:**
    *   You can see the volumetric fog shader in action by visiting the project page on Shadertoy:
    *   **[Click here to view the Fog Shader](https://www.shadertoy.com/view/tfGSzz)**

2.  **Experiment with the code:**
    *   The shader is interactive in the sense that you can edit the code directly on the Shadertoy website to see real-time changes.
    *   Try modifying these constants at the top of the code to see how they affect the visuals:
        *   `density_fog`: Increase this value for thicker, more opaque fog, or decrease it for a lighter haze.
        *   `height_fog`: Adjust this to control how the fog settles in the valleys versus on the hilltops.
        *   `lightdirn`: Change the `vec3` values to alter the direction of the light source and see how shadows and highlights are affected.

<div align="center">
  <a href="https://github.com/cgs-iitkgp/fog-shader">
  </a>
</div>

<p align="right">(<a href="#top">back to top</a>)</p>

## Contact

### Maintainer(s)

The currently active maintainer(s) of this project.

<!-- UPDATE -->
- [SHOURYA KUMAR](https://github.com/shourya-kr)

### Creator(s)

Honoring the original creator(s) and ideator(s) of this project.

<!-- UPDATE -->
- [SHOURYA KUMAR](https://github.com/shourya-kr)

<p align="right">(<a href="#top">back to top</a>)</p>

## Additional documentation

  - [License](/LICENSE.md)
  - [Contribution Guidelines](/CONTRIBUTING.md)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/shourya-kr/fog-shader.svg?style=for-the-badge
[contributors-url]: https://github.com/shourya-kr/fog-shader/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/shourya-kr/fog-shader.svg?style=for-the-badge
[forks-url]: https://github.com/shourya-kr/fog-shader/network/members
[stars-shield]: https://img.shields.io/github/stars/shourya-kr/fog-shader.svg?style=for-the-badge
[stars-url]: https://github.com/shourya-kr/fog-shader/stargazers
[issues-shield]: https://img.shields.io/github/issues/shourya-kr/fog-shader.svg?style=for-the-badge
[issues-url]: https://github.com/shourya-kr/fog-shader/issues
[license-shield]: https://img.shields.io/github/license/shourya-kr/fog-shader.svg?style=for-the-badge
[license-url]: https://github.com/shourya-kr/fog-shader/blob/master/LICENSE.md
