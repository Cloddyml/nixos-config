{ config, lib, pkgs, ... }:

{
  age.secrets.postgresPassword = {
    file = ../../secrets/postgres-pass.age;
    owner = "postgres";
    group = "postgres";
    mode = "0600";
  };
  
	services.postgresql = {
		enable = true;
		package = pkgs.postgresql_17;
		initdbArgs = [
			"--encoding=UTF8"
			"--no-locale"
		];
	};

	systemd.services.postgresql = {
		postStart = lib.mkAfter ''
			PASSWORD="$(cat ${config.age.secrets.postgresPassword.path} | tr -d '\\n')"
      
      ${pkgs.postgresql_17}/bin/psql -tA \
        -c "ALTER ROLE postgres WITH PASSWORD '$PASSWORD';"
		'';
		serviceConfig = {
			TimeoutStartSec = "30min";
		};
	};
}