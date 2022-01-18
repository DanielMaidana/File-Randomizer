// Title: FILE RANDOMIZER 
// Revision version: 2.0 - 07/27/2018
// First version: 1.0 - 02/15/2015 

// Description: This macro randomizes image files from a single folder
//------------------------------------
// Authors: Daniel E. Maidana, M.D., Ph.D.
// GitHub: https://github.com/DanielMaidana/File-Randomizer
//------------------------------------
// Note: Please review istructions before use!

// Copyright (C) <2022>  <Daniel E. Maidana, MD, PhD

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
    
//------------------------------------------------------------------------------------------------------------------------------------------------------
//VARIABLES
//------------------------------------
// Note: Please review instructions before use!
// 1. Copy the code below
// 2. Go to Process > Batch > Macro
// 3. Select Input Folder to randomize
// 4. Select Output Folder to save randomized images
// 5. Select the Output Format (this will copy files, so JPEG is ok)
// 6. Past code in text box
// 7. Process
//---------------------------------------------------------------------------------
dir = getDirectory("image");
name = getTitle; 
path = dir+name;
random_variable = (floor(random()*100000000));
name_new = dir+random_variable;
//saveAs("tiff", path+" - "+random_variable);
saveAs("tiff", name_new);
print(name + "  |  " + random_variable);
saveAs("Text", dir+"Randomize Key.txt");