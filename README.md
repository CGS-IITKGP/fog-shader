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
     <img width="140" alt="image" src="">
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
<img width="80%" alt="image" src="https://user-images.githubusercontent.com/86282911/206632547-a3b34b47-e7ae-4186-a1e6-ecda7ddb38e6.png">
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
Use this space to show useful examples of how this project can be used. Additional screenshots, code examples and demos work well in this space.

<div align="center">
  <a href="https://github.com/cgs-iitkgp/fog-shader">
    <img width="80%" alt="image" src="">
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

  - [License](/LICENSE)
  - [Code of Conduct](/.github/CODE_OF_CONDUCT.md)
  - [Security Policy](/.github/SECURITY.md)
  - [Contribution Guidelines](/.github/CONTRIBUTING.md)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/cgs-iitkgp/PROJECT_NAME.svg?style=for-the-badge
[contributors-url]: https://github.com/cgs-iitkgp/PROJECT_NAME/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/cgs-iitkgp/PROJECT_NAME.svg?style=for-the-badge
[forks-url]: https://github.com/cgs-iitkgp/PROJECT_NAME/network/members
[stars-shield]: https://img.shields.io/github/stars/cgs-iitkgp/PROJECT_NAME.svg?style=for-the-badge
[stars-url]: https://github.com/cgs-iitkgp/PROJECT_NAME/stargazers
[issues-shield]: https://img.shields.io/github/issues/cgs-iitkgp/PROJECT_NAME.svg?style=for-the-badge
[issues-url]: https://github.com/cgs-iitkgp/PROJECT_NAME/issues
[license-shield]: https://img.shields.io/github/license/cgs-iitkgp/PROJECT_NAME.svg?style=for-the-badge
[license-url]: https://github.com/cgs-iitkgp/PROJECT_NAME/blob/master/LICENSE
