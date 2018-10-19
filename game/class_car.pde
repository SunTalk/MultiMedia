class Car
{
	int[] _x = new int[7];
	int[] _y = new int[7];
	boolean on = true;

	void init(int x, int y)
	{
		_x[0] = x;
		_y[0] = y - 60;

		_x[1] = x - 60;
		_y[1] = y;

		_x[2] = x;
		_y[2] = y;

		_x[3] = x + 60;
		_y[3] = y;

		_x[4] = x;
		_y[4] = y + 60;

		_x[5] = x - 60;
		_y[5] = y + 120;

		_x[6] = x + 60;
		_y[6] = y + 120;
	}

	void display()
	{
		for(int i=0; i<7; i++)
			rect(_x[i], _y[i], 60, 60);
	}

	void move(char direc)
	{
		if(end != true)
		{
			if(direc == 'a')
			{
				for(int i=0; i<7; i++)
					_x[i] -= 60;
			}
			else if(direc == 'd')
			{
				for(int i=0; i<7; i++)
					_x[i] += 60;
			}
		}
	}

	void enemy_mov()
	{
		if(end != true)
			for(int i=0; i<7; i++)
				_y[i] += 60;
	}
}

class Road
{
	int[] _y = new int[3];

	void init(int y)
	{
		_y[0] = y;
		_y[1] = y + 60;
		_y[2] = y + 120;
	}

	void display()
	{
		for(int i=0; i<3; i++)
		{
			if(i == 0)
			{
				fill(0);
				rect(0, _y[i], 60, 60);
				rect(840, _y[i], 60, 60);
			}
			else
			{
				fill(255);
				rect(0, _y[i], 60, 60);
				rect(840, _y[i], 60, 60);
			}

			if(gamemode == true && _time == 0 && end != true)
				_y[i] += 60;
		}
	}
}