#ifndef HELPER_H_
#define HELPER_H_

#include <random>
#include <cmath>
//#include <chrono>

class Helper
{
	public:
		std::random_device rd;
		std::mt19937 gen;
		int num_vertices;
		unsigned long seed;
        uint32_t max_phm = 100;
        int num_communities = 0;

		Helper(Graph& graph, unsigned long in_seed)
		{
            if (in_seed == 0)
            {
                //seed = rd();
                seedRandomEngine();
            }
            else
            {
                seed = in_seed;
                // seed = 425624331;
                gen.seed(seed);
            }
			num_vertices = graph.num_vertices;
		}
    
        // Copied from: https://codereview.stackexchange.com/questions/109260/seed-stdmt19937-from-stdrandom-device
        template<class T = std::mt19937, std::size_t N = T::state_size>
        void seedRandomEngine()
        {
            typename T::result_type random_data[N];
            std::generate(std::begin(random_data), std::end(random_data), std::ref(rd));
            std::seed_seq seeds(std::begin(random_data), std::end(random_data));
            gen.seed(seeds);
        }

        double randomNumber()
		{
			std::uniform_real_distribution<> random(0, 1);
			double decision = random(gen);
			return decision;
		}
    
        double randomPhm()
        {
            std::uniform_real_distribution<> random(1, max_phm);
            double phm = random(gen);
            return phm;
        }
    
        double probability()
		{
			std::uniform_real_distribution<> reset(0,1);
			double val = reset(gen);
			return val;
		}

        int newVertex()
		{
			std::uniform_int_distribution<> vertex(0, num_vertices - 1);
			int vert = vertex(gen);
			return vert;
		}
    
        int newCommunity()
        {
            std::uniform_int_distribution<> vertex(0, num_communities - 1);
            int comm = vertex(gen);
            return comm;
		}

        double randomNumber(double max)
        {
            std::uniform_real_distribution<> random(0, max);
            double decision = random(gen);
            return decision;
        }
};

#endif /* HELPER_H_ */
