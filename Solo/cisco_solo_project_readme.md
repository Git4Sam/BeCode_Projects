# Network Setup Documentation

## What
A simple network with two routers, two switches, three PCs, and a server. PCs are on the `192.168.10.0/24` network and the server on the `189.120.20.0/24` network, connected via routers for successful communication.

## Why
This setup demonstrates basic LAN-to-LAN communication, routing, and network device configuration, useful for learning IP routing and connectivity in Cisco Packet Tracer.

## When
Use this setup for:
- Learning router/switch configuration
- Testing communication across subnets
- Studying routing and networking basics

## How

1. **PCs**:
   - IPs: `192.168.10.2`, `192.168.10.3`, `192.168.10.4`
   - Gateway: `192.168.10.1`

2. **Router 1**:
   - Interfaces: `192.168.10.1` (PC network), `190.160.10.1` (to Router 2)

3. **Router 2**:
   - Interfaces: `190.160.10.2` (from Router 1), `189.120.20.1` (to server)

4. **Server**:
   - IP: `189.120.20.2`, Gateway: `189.120.20.1`

PCs access the server via browser using its IP.

## Who
For networking students, IT professionals, and beginners learning basic networking and routing.

## Pending Tasks
1. Implement dynamic routing (RIP/OSPF).
2. Add security (firewall/ACLs).
3. Set up DHCP for IP automation.
4. Configure DNS for name-based communication.
5. Expand the network for advanced scenarios.

