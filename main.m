clear all;
close all;
clc;

% vertices
vertices = [
     0.6053 7.9971 0
     1.0439 6.8567 1.0000
     2.9737 8.2602 1.0000
     3.9386 6.3304 1.0000
     1.9795 5.3655 1.0000
     6.4532 8.3187 2.0000
     5.1959 6.6228 2.0000
     6.3070 4.6637 2.0000
     8.7339 6.2719 2.0000
     8.4708 7.8801 2.0000
     3.2368 4.8684 3.0000
     0.8684 3.9620 3.0000
     1.2485 2.5585 3.0000
     3.3538 2.4123 3.0000
     4.8450 4.0497 3.0000
     6.5994 3.9327 4.0000
     6.5409 2.0906 4.0000
     8.5877 2.2076 4.0000
     8.6170 4.6053 4.0000
     9.4357 7.2368 5.0000
     11.1608 4.0789 5.0000
     10.3129 7.9094 5.0000
     10.3713 1.5351 6.0000];
 
 %{
 vertices = [
     0.7807 9.0497 0
     3.0322 8.9912 1.0000
     1.3655 6.7105 1.0000
     4.1140 4.0497 1.0000
     6.2778 8.2310 1.0000
     8.2953 5.8333 2.0000
     5.6345 2.6170 2.0000
     9.1433 1.9152 2.0000
     11.4825 6.9444 2.0000
     10.2544 0.5702 3.0000];
 %}
     
edges = RPS( vertices );