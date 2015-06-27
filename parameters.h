#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "graph.h"


class Parameters
{
	public:
		double decay; //pheromone decay factor
		int maxIterations;
		int maxSteps;
		int maxTries; //max number of times ant tries to move
		int updatePeriod; //number of cycles after which to update pheromone
		double threshold; //sets how well connected a cluster is
		int max_decrease; // maximum number of times the modularity drops
        double alpha, beta;

		Parameters(Graph& g)
		{
			if(g.num_vertices > 113)
			{
				maxSteps = 75;
				updatePeriod = maxSteps / 3;
			}
			else
			{
				maxSteps = (int) ((2.0/3.0) * g.num_vertices);
				updatePeriod = maxSteps / 3;
			}

			decay = 0.95;
			maxIterations = 25;
			maxTries = 3;
            alpha = 1;
            beta = 2;
            
            // Better to use a static_cast<>() instead of C style casts 
            unsigned long long a = (unsigned long long) g.num_vertices * (g.num_vertices-1);
            unsigned long long max_edges = (unsigned long long) a/2;
			double p =  ((double) g.num_edges / max_edges) * 100;
//            double p =  ((double) g.num_edges / max_edges);
//            std::cout << p << "\n\n";
			//cout << "Percentage of links = " << p << "\n\n";
			if (p < 0.100)
			{
				threshold = 0.80;
			}
			else if(p >= 1)
			{
				threshold = 0.25;
			}
			else if(p >= 0.100 && p < 1)
			{
				threshold = 0.35;
			}

			// if graph is really small
			if(g.num_vertices <= 128)
			{
				threshold = 0.5;
			}
			max_decrease = 3;
		}
};

#endif /* PARAMETERS_H_ */
