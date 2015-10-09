
#include <math.h>

void sumouter(int r,int n,int m,double out[n][m],double u[r][n],double v[r][m]) {
    for(int i=0;i<n;i++) {
        for(int j=0;j<m;j++) {
            double total = 0.0;
            for(int k=0;k<r;k++) total += u[k][i]*v[k][j];
            out[i][j] = total;
        }
    }
}

void sumprod(int r,int n,double out[n],double u[r][n],double v[r][n]) {
    for(int i=0;i<n;i++) {
        double total = 0.0;
        for(int k=0;k<r;k++) total += u[k][i]*v[k][i];
        out[i] = total;
    }
}
