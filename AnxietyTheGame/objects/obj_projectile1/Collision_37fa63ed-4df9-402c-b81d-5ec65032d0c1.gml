with(other) {
	enemy_health -= 10;
	if(enemy_health <= 0) {
		instance_destroy();
	}
}

instance_destroy();
