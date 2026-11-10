#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=====================================${NC}"
echo -e "${GREEN}   AUDITORÍA RÁPIDA DE SISTEMA KALI   ${NC}"
echo -e "${BLUE}=====================================${NC}"
echo ""

echo -e "${GREEN}[+] Información del Kernel y Hostname:${NC}"
uname -a
echo ""

echo -e "${GREEN}[+] Direcciones IP (Interfaces de Red):${NC}"
ip -brief addr show
echo ""

echo -e "${GREEN}[+] Uso de Memoria RAM:${NC}"
free -h
echo ""

echo -e "${GREEN}[+] Espacio en Disco:${NC}"
df -h /
echo ""

echo -e "${GREEN}[+] Puertos Abiertos Escuchando (TCP/UDP):${NC}"
ss -tulpn | grep LISTEN
echo ""

echo -e "${BLUE}=====================================${NC}"
echo -e "${GREEN}   Auditoría finalizada con éxito.   ${NC}"
echo -e "${BLUE}=====================================${NC}"
