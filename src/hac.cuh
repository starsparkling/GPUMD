/*
    Copyright 2017 Zheyong Fan, Ville Vierimaa, Mikko Ervasti, and Ari Harju
    This file is part of GPUMD.
    GPUMD is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    GPUMD is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with GPUMD.  If not, see <http://www.gnu.org/licenses/>.
*/


#ifndef HAC_H
#define HAC_H

class Integrate;


class HAC
{
public:
    int compute = 0;
    int sample_interval; // sample interval for heat current
    int Nc;              // number of correlation points
    int output_interval; // only output Nc/output_interval data

    real *heat_all;

    void preprocess_hac(Parameters*, CPU_Data *, Atom*);
    void sample_hac(int, char*, Parameters*, CPU_Data*, Atom*);
    void postprocess_hac(char*, Parameters*, CPU_Data*, Atom*, Integrate*);
    void find_hac_kappa(char*, Parameters*, CPU_Data*, Atom*, Integrate*);
};



#endif
