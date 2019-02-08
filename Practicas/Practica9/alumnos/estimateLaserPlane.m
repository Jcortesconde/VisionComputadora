function [laserPlane,LPts] = estimateLaserPlane(pointcloud)
  
   cloudSize = length(pointcloud);
   %length = size(pointcloud);
   A = []  
   for i = 1:cloudSize
       pointSize = size(pointcloud{i});
       r = randi(pointSize(2), 1, floor(pointSize(2)/4));
       %r = pointSize(2)
       A = [ A; [pointcloud{i}(:,r); ones(1,length(r))]' ];
   end
   
   [U,S,V] = svd(A);
   laserPlane = V(:,4);
   LPts = A';
   
end

