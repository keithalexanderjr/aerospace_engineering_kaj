% Optical_sensor_image_source_code 
% Generate Target and Define Motion

target = [zeros(3,11)
          zeros(1,5) 6 zeros(1,5)
          zeros(1,5) 6 zeros(1,5)
          zeros(1,3) 6 6 6 6 6 zeros(1,3) % Target is a plus sign 5 by 5 pixels across
          zeros(1,5) 6 zeros(1,5)         %  with an intensity of 6 (S/N ratio is ~4).
          zeros(1,5) 6 zeros(1,5)         % The total target image is made on an 11x11 grid to
          zeros(3,11)];                   %  allow the image to be interpolated without error.

target_velx = 1;                 % target velocity in x direction in pixels per second
target_vely = 1;                 % target velocity in y direction in pixels per second
target_x_initially = framesize/2; % the target is initially in the center of the frame in x
target_y_initially = framesize/2; % and in y

figure(1);
colormap('gray');
image(target*32);
title('Target Image')
