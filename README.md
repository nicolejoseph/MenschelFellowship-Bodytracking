# Reflections on Dance, Mobility, and Bodytracking
![Menschel_Exhibition073 (1)](https://user-images.githubusercontent.com/71452451/231338377-55c37385-0db7-4615-b4f7-b393ede7495b.jpg)

This project came out of a desire to explore the posibilities of interactivity between dancers and bodytracking technology in performance and reflect on the intersection of dance, body tracking technology, and mobility. We investigate current use of technology for dance performances resulting in an interactive installation which connected the Kinect body tracking and generative visual graphics using Processing, a graphical library and programming language. The project exposed some limitations in access to hardware components of body tracking such as the Kinect camera. This work was supported by the Cooper Union's Benjamin Menschel Fellowship Program.

On this repo, you will find documentation of this projects exhibition at the Lubalin Gallery as part of the Menschel Fellowship exhibit and in the Civic Projects Lab as part of miliLab's Digital Movement exhibit. You will also find set up instructions and resources such that you can build similar projects which utilize Kinect's body-tracking with Processing graphics.

Table of Contents
- [Menschel Fellowship Exhibition](https://github.com/lhrhode/menschel-bodytracking/blob/main/README.md#menschel-fellowship-exhibition)
- [Digital Movement Exhibition](https://github.com/lhrhode/menschel-bodytracking/blob/main/README.md#digital-movement-exhibition)
- [Processing and Kinect V2 Set Up](https://github.com/lhrhode/menschel-bodytracking/blob/main/README.md#processing-and-kinect-v2-set-up) 

[![github_minah](https://user-images.githubusercontent.com/71452451/232954180-97ce6a55-4aaa-4298-8c01-09a1279b4769.png)](https://www.youtube.com/watch?v=XrtT-O2CED0)

# Menschel Fellowship Exhibition
[The Benjamin Menshel Fellowship Program](https://cooper.edu/academics/research-fellowships/benjamin-menschel-fellowship-program) supports interdisciplinary work in the fields of art, architecture, design, and engineering and funds students who propose scholarly, independent projects to expore creative inquiry in their education endeavors at The Cooper Union.

The program culminates in an annual exhibition and gala opening. Each project contributes to a [catalog](https://cooper.edu/academics/research-fellowships/menschel-catalogs). Our project is recorded in the [2023 Menschel Fellowship Exhibition Catalog](https://cooper.edu/sites/default/files/uploads/assets/development/menschel%20catalogue_ML.pdf).
![Copy of Menschel_Exhibition076](https://user-images.githubusercontent.com/71452451/231519182-ca767fbe-f395-4e59-a82e-5c7bd3d6bc57.jpg)


# Digital Movement Exhibition
![civics-doc-46](https://user-images.githubusercontent.com/71452451/232956643-9c1e74df-d4fe-4a30-b9cb-085809c439dd.jpg)
Much of this work was supported by Cooper Union's [miliLab](http://faculty.cooper.edu/mili/miliLab/index.html) and Prof. Mili Shah. This project was presented again at miliLab's Digital Movement Exhibition, an exhibition funded by the Cooper Union Presidential Grant to present the work and research conducted by the students of miliLab and present bodytracking technologies to the wider public.

<img src="https://user-images.githubusercontent.com/71452451/232956577-294b0f61-b825-4526-833b-7777d2e8071e.jpg" width="400"> <img src="https://user-images.githubusercontent.com/71452451/232956604-9d790fa0-b742-4fe5-b8a2-04866bbbe649.jpg" width="400">
<img src="https://user-images.githubusercontent.com/71452451/232956675-1d6aaa78-2791-44e4-83c2-869b474b91f1.jpg" width="400"> <img src="https://user-images.githubusercontent.com/71452451/232956680-ae278078-8efe-40d2-bfd3-c592b8966c46.jpg" width="400">


# Processing and Kinect V2 Set Up
[Processing](https://processing.org/) is a software sketchbook and language based on Java commonly used by visual artists and also in the generative art world. The language has a library for using Microsoft's Kinect V2. The best tutorial to follow to set up Processing with Kinect is on [Mike Bridge's blog](https://mikebridge.github.io/post/kinect-and-processing/). This tutorial uses [Thomas Sanches Lengeling's Processing Library for using the Kinect V2](https://github.com/ThomasLengeling/KinectPV2).

Here we will go over the tldr of how to set up Processing and start using Kinect V2 though it is worth checking out the embedded links.

It is important to note that the Kinect V2 is out of production and the only way to get it is second hand on Ebay or on Amazon

**Requirements:**
- Window 10
- Kinect V2 (Kinect for Xbox One and the Kinect 2.0 Adapter for Windows PC)
- Kinect SDK 2.0
- Processing 3.0

First step is to download and install [Processing 3.0](https://processing.org/releases).
Then, once you have access to the necessary hardware (the Kinect for XBox One V2 and its adapter), download the [Kinect for Windows SDK 2.0](https://www.microsoft.com/en-us/download/details.aspx?id=44561). Once the Kinect for Windows SDK has completed installing, connect the Kinect sensor to a power outlet and then plug the USB cable to your computer. The necessary drivers should begin installation automatically. Then use the Kinect for Windows SDK to ensure, your Kinect is detected and works properly.

Once your Kinect is set up, launch Processing from processing.exe. From the _Sketch_, navigate from _Import Library_ to _Add Library_ and search for _Kinect v2 for Processing_.

[Thomas Lengeling](https://github.com/ThomasLengeling/KinectPV2) who wrote the KinectPV2 library gives some usefull examples [here](https://codigogenerativo.com/code/kinectpv2-k4w2-processing-library/).

