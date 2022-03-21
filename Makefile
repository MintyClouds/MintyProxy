
create-openvpn:
	mkdir -p openvpn_profiles
	docker-compose run --rm openvpn easyrsa build-client-full $(name) nopass
	docker-compose run --rm openvpn ovpn_getclient $(name) > openvpn_profiles/$(name).ovpn
