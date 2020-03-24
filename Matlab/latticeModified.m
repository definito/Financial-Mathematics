function hFigure =latticeModified(A,B)

  %# Compute all the coordinates needed for the lines and points:
  
  %For 1st matrix Data
  N = size(A,2);
  [xPoints,yPoints] = meshgrid(0:N-1);
  yPoints = bsxfun(@plus,-yPoints,0:0.5:(N-0.5)/2);
  xLines = [xPoints([1:N+1:N^2-N-1 1:N:N^2-2*N+1]); ...
            xPoints([1:N-1 N:-1:2],N).'];  %'
  yLines = [yPoints([1:N+1:N^2-N-1 1:N:N^2-2*N+1]); ...
            yPoints([1:N-1 N:-1:2],N).'];  %'
  index = find(triu(reshape(1:N^2,N,N)));
  xPoints = xPoints(index);
  yPoints = yPoints(index);
  values = strtrim(cellstr(num2str(A(index))));

  
  %For 2nd matrix Data
  
    M = size(B,2);
  [xPoint,yPoint] = meshgrid(0:M-1);
  yPoint = bsxfun(@plus,-yPoint,0:0.5:(M-0.5)/2);
  index = find(triu(reshape(1:M^2,M,M)));
  xPoint = xPoint(index);
  yPoint = yPoint(index);
  value  = strtrim(cellstr(num2str(B(index))));
  
  %# Create the figure:

  hFigure = figure('Color','w');
  hAxes = axes('Parent',hFigure,'XLim',[-.5 N-0.5],...
               'YLim',[min(yPoints)-0.5 max(yPoints)+0.5],...
               'YColor','w','XTick',0:N-1,'LineWidth',2);
  hold on;
  plot(hAxes,xLines,yLines,'Color',[0, 0.5, 0],'LineWidth',2);
  plot(hAxes,xPoints,yPoints,'s','MarkerFaceColor',[0.85 0.85 0.85],...
       'MarkerSize',60,'MarkerEdgeColor',[0, 0.5, 0],'LineWidth',2.1);
   
  %# Plot the Value of First Matrix 
  text(xPoints,yPoints,values,'Parent',hAxes,...
       'HorizontalAlignment','center','VerticalAlignment','Bottom');
   
  %# Plot the Value of Second Matrix
     text(xPoint,yPoint,value,'Parent',hAxes,...
       'HorizontalAlignment','center','VerticalAlignment','Top');
hold off
end