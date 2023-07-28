M = 5; %Number of row
N = 5; %Number of columns
T = zeros(N*M,N*M);

for i = 1:M %Loop over rows
    for j=1:N %Loop over columns
        Node = (i-1)*N+j;
        if ((i>1) && (j>1) &&(i<M) &&(j<N))
            T(Node,Node-1) = 1;
            T(Node,Node+1) = 1;
            T(Node,Node+N) = 1;
            T(Node,Node-N) = 1;
            T(Node,Node) = -1.0*sum(T(Node,:));
        end
        %Top Boundary
        if(i==1)
            if (j==1) %Upper left corner
                T(Node,Node+1) = 2;
                T(Node,Node+N) = 2;
                T(Node,Node) = -1.0*sum(T(Node,:));
            elseif(j==N) %Upper right corner
                T(Node,Node-1) = 2;
                T(Node,Node+N) = 2;
                T(Node,Node) = -1.0*sum(T(Node,:));
            else %Top edge
                T(Node,Node+1) = 2;
                T(Node,Node-1) = 1;
                T(Node,Node+N) = 1;
                T(Node,Node) = -1.0*sum(T(Node,:));
            end
        end
        %Bottom Boundary
        if (i==M)
            if(j==1) %Lower left corner
                T(Node,Node+1) = 2;
                T(Node,Node-N) = 2;
                T(Node,Node) = -1.0*sum(T(Node,:));
            elseif(j==N) %Lower right corner
                T(Node,Node-1) = 2;
                T(Node,Node-N) = 2;
                T(Node,Node) = -1.0*sum(T(Node,:));
            else %bottom edge
                T(Node,Node-1) = 1;
                T(Node,Node+1) = 1;
                T(Node,Node-N) = 2;
                T(Node,Node) = -1.0*sum(T(Node,:));
            end
        end
        %Left Boundary
        if((j==1)&&(i~=1)&&(i~=M))
                T(Node,Node+1) = 2;
                T(Node,Node-N) = 1;
                T(Node,Node+N) = 1;
                T(Node,Node) = -1.0*sum(T(Node,:));
        end
        %RightBoundary
        if((j==N)&&(i~=1)&&(i~=M))
                T(Node,Node-1) = 2;
                T(Node,Node+N) = 1;
                T(Node,Node-N) = 1;
                T(Node,Node) = -1.0*sum(T(Node,:));
        end
    end
end