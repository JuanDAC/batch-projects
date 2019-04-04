@echo off
title=Buscador por extencion mover o copiar
rem estilo del script
color a
mode 150
rem Volver a ejecutar en caso de seguir buscando
rem Declaración de las arrays

rem Archivos de Musica
set list-audio=669, AMF, ASF, AU, AUDIOCD, CDDA, FAR, IT, ITZ, LWV, MIZ, MP1, MP2, MTM, OGM, OKT, RA, RM, SND, STM, STZ, ULT, WM, WMV, XM, XMZ, AMR, FLAC, M3U, MP3, PTM, VOC, XSPF, DSS, AAX, ABC, CDA, M4A, OGG, WAV, ACD, FTM, AAC, AAF, AC3, ACT, AIF, AIFF, APE, AUD, AUP, DVF, FLP, GSM, IFF, KAR, M4P, MID, MOD, MPC, MSV, MUS, NRA, ODM, PCM, PK, PLS, RAM, RBS, SDS, SEQ, SES, SHN, SPX, VLC, WMA, WV, DCF, GP3, MTD, NWC, PC, QCP, SF2, SNG, VPL, WRF, ZPL, AA, ACM, AIFC, APL, CPR, DMF, IMF, IT, KMP, M4B, M4R, MBR, MXL, NST, OMA, PTX, RA, RMI, RNG, SMF, SMP, TAK, TTA, VOX, WAX, WPK, WRK, WVE, ALL, ALS, AMZ, BUN, EMP, EMX, FEV, GIG, GPK, IMP, LVP, MTP, OMF, OVE, PTS, RFL, SDAT, SFL, SM, SVD, SYN, VDJ, VRF, WOW

rem Archivos de Autocad entre otros (Diseño asistido por computadora [2D, 3D])
set list-computer-assisted-design-3d-2d-CAD=DWG, DXF, GCD, DST, SHX, NC, HUS, IDW, BLK, CAM, DGN, STL, CAD, GDS, IGS, JT, KIT, PLN, PRT, SAT, SKF, LIN, PCS, RS, 2D, AFS, BIT, CDL, CNC, CND, DFT, DRA, EZP, FCW, G, IDE, IPJ, LCF, MCX, MVS, PHO, SPT, TCW

rem Archivos de Animación
set list-animation=SWF, CAL, DXR, MAX, ANI, CUR, GIF, PDE, 3DS, BLEND, CHR, FLA, MHTML, PPTX, SCR, X, CPY, MB, SAT, CMF, CSM, FAR, FLC, FLI, MNG, PPZ, SSP, SVGZ, TRI, VUE, ACA, AD, AMX, C4D, CRF, DIR, PX, SMK, SPT, SWI, WBA

rem Archivos de Base De Datos
set list-data-base=DBF, PDB, WDB, DB, EDB, MDB, BQY, DB3, FP5, FDB, FOL, ABS, CDB, DBT, DDL, FRM, NSF, SQL, SQLITE, DBC, DSN, DTA, FPT, GDB, MTW, PDX, RSD, TPS, TRC, UDL, ADB, AZZ, DBS, DCX, ITDB, KDC, NDF, ODB, ORA, ADX, CPD, FR3, FTW, GWI, HIS, NDK

rem Archivos de Backups
set list-backups=MBF, NBF, $$$, $DB, FBK, OLD, RBF, SKB, TIB, ARC, BAK, BAK~, BUP, TMP, WIM, DBK, FBC, GHO, ABK, ADI, ASD, JBK, MEM, NBU, TRN, WIN, BKF, BKP, IPD, MBK, NRI, PBD, QIC, BK1, DBA, PBF, STG, WBK, WCF, XLK, ABA, BCK, DNA, GHS, MPB, NPF, PQI, QBB, RRR, SPG, SPI, TDB, TIS

rem Archivos de Desarrollo
set list-developer=JAVA, ASPX, AXD, CS, CBL, DO, DSB, JSON, LUA, PL, POD, RES, S, SB, PRO, D, H, M, MD, MM, MRC, PDE, R, SLN, VDM, XSD, XUL, IPS, ISU, P, $01, ASC, AUT, BAS, BAT, C, CGI, CLASS, COD, CON, CPP, CXX, CSS, DART, SCSS, SASS, STYL, DEF, DTD, ERB, EX, FLA, FRM, FTL, GROOVY, HPP, HTML, HTM, XHTML, XHT, XML, IDL, IML, INC, JSP, JS, JSX, OCX, PY, RDF, SFX, SH, SQL, TCL, W, WSDL, WSP, XSL, YAML, YML, ALB, CML, CTL, EXP, JAD, JAR, POM, PYC, RB, SAS, SCC, SWC, TRX, A, ASCX, ASM, AU3, BCP, CC, CONFIG, DEC, F, FRX, GEM, I, KB, KIX, L, LISP, LSP, MCP, MF, MFL, MK, MPR, NCB, NSI, PB, PDM, PH, PHTML, JHTML, PRI, RC, RU, SBR, SRC, SSI, SWD, T, UI, VBP, VBW, VIM, WPW, XAML, XSLT, Y, ASI, BB, BTN, CBP, COB, DPR, DSP, FOR, FS, IDB, KPL, MER, MSS, MV, PAS, PDL, PLC, PYD, PYW, PHP, RBX, RUL, SC, SS, SYM, TK, TMPL, UML, VAR, VC, VBP, VM, WDL, WXS

rem Archivos de Design
set list-design=XPS, BCF, PFL, PUB, ZDL, INDD, MDI, PPP, QXD, RELS, BRO, RMR, ZDP, CDF, FP3, INX, PMD, SDT, SNP, SP, ISD, PA, PSR, XDW, BOOK, CST, DOT, FLB, FM, LAB, MML, PCL, PCT, PDP, QXP, XIF, BIZ, CPH, CSD, DTP, FR3, NPP, OPD, PDG, PFF, RSM, TP3

rem Archivos de Adobe
set list-adobe= PSD, AI, AIT, XD, PDD, FH10, AAM, DNG, PS, P65, ABR, LINE, SKET, DRAW, INDD, INDB, SWF, EPS, PRN, FLV, F4V, CDR

rem Archivos de Microsoft Office
set list-ofice= EPUB, MOBI, ACSM, MPP, PPSX, PST, XLSM, MDB, OPF, CRTX, DOCM, DOCX, ONE, OST, XLSX, DOC, DOCX, DOTM, IAF, LIT, MBP, OFT, PPS, PPT, PPTX, PRC, SNP, CEB, LRF, DOTX, MDW, MPT, POTX, AZW, DNL, TPZ, TR

rem Archivos de Imagenes
set list-images=PNG, PNS, TIF, BCF, CDG, CR2, DJVU, EMZ, JP2, J2K, J2C, NEF, STD, SVG, TIFF, VSD, XCF, ABM, MIX, ZDL, ANI, BMP, CUR, GIF, ICO, JPF, MDI, P65, PAT, QXD, THM, WB1, ALBM, HUS, JEF, PD, PTN, APM, CGM, CPT, DCM, DCR, DDS, DICOM, DIB, DRW, EMF, FAX, FIG, HDR, ICON, IFF, INT, JPEG, JPG, JPC, JPS, JPE, JPX, JWL, MAC, MSV, NCD, NRW, ODG, ORF, PCD, PCX, PGM, PLT, PPM, PSB, PSP, RAW, RLE, SDT, SFW, SID, SRF, TBN, TGA, WEB, WMF, ISF, MIF, PDN, RDL, SDR, SKF, SPP, ADC, ART, AWD, CIT, CNV, COR, CRW, CVS, DPX, ECW, FPX, HPG, HPI, ICL, ICN, ITC2, JBF, JIF, JTF, JXR, MEF, MNG, PBM, PCT, PEF, PIC, PICT, PNM, PWP, PZA, QXP, RAS, RGB, RIF, RIFF, SEP, SGI, SPR, SVGZ, VBR, VIC, VML, VSS, WAL, WBC, WBZ, WMP, WPG, XWD, 2D, APX, BMF, BRT, CDD, CPH, CPS, DIA, DPP, EP, IGX, PE4, PES, PGF, POV, PX, PZP, RPF, SPA, SUP, TLC, UFO

rem Archivos de Documentos
set list-documents=QPW, WKS, XLSM, CSV, ODS, WB3, XLR, XLS, XLSX, SDC, AWS, DIS, NB, OTS, SXC, TSV, WB2, WQ1, FCS, MTP, PXL, TMV, EML, SRT, WPS, XML, DIZ, MAN, ODT, RTF, SXW, TEXT, LWP, BIB, DOCM, DOCX, ERR, LIS, ME, NFO, SMS, VMG, WPD, HBK, $01, ASCII, DOC, DOTM, HWP, LOG, LST, LTR, MBOX, MSG, RST, SAM, SDW, SUB, TEX, TXT, VNT, WRI, YML, DWL, PWD, RIS, SGM, SIG, STY, TMD, WPT, WRL, 1ST, ANS, DOTX, DVI, ETF, FDF, FDR, GSD, HHT, LRC, MNT, PSW, PWI, RTX, RU, SHA1, SSA, STW, TNEF, UPD, VER, WP, WP5, ABW, BRF, DWD, DX, GPD, LYX, MWP, PFS, SDM, SFB, SLA, TDF, TMX, WSD

REM Archivos de Fuentes Tipograficas
set list-font=EOT, PFB, FNT, FOT, TTF, AFM, ETX, MGF, PFA, PFM, SFD, SFP

rem Archivos en 3D
set list-3d=U3D, CAL, DS, OBJ, MAX, FX, STP, 3DS, BLEND, CHR, DAE, DES, DWF, FLT, SHP, SMD, X, 3DM, CPY, IGES, MB, MU, NIF, PL1, SKP, WRL, CMF, CSM, DFF, DSF, PPZ, RFT, TRI, VUE, XPR, BIP, C4D, CRF, DRF, FSH, GEO, M3D, MGF, MXM, RCS, STO, VS

rem Archivos en Roms VideoJuegos
set list-roms=BNK, SMC, NES, REP, B, CT, BK, ESP, GB, GBC, IPS, MPQ, PUZ, AUD, BAR, CHT, DEM, FF, GCM, LANG, MAP, NDS, PK3, PSV, WAD, BSA, BSB, BSP, DL, INV, PBO, PCF, ROM, SAV, SCN, TXD, V64, VPK, ACF, BGL, BIF, CTX, DOL, FAR, FRC, GCF, GEN, IPG, IWD, PER, PLR, PP, REZ, SWD, VIV, VMF, VOL, WAL, ZST, ZTD, AIN, ARP, BIC, CDP, CFR, CM, CRS, ENG, ESS, FPK, FST, GAM, GBA, GBX, GXT, IPL, ISR, ITR, LOVE, LVL, NAV, OVL, PCC, PS2, PSX, SFB, SFC, SM, SVS, TAF, VTF, WTD, WX

rem Archivos en Libros Digitales
set list-books-digital=CBR, EPUB, MOBI, WPS, CHM, INK, ODT, PDF, RTF, SXW, CWK, LWP, OPF, PFL, INDD, PPP, RELS, SIM, XLR, EFX, GNO, RMR, VCE, ZDP, AUP, CDF, FTL, INX, MPLS, NCD, ODP, SAM, VBD, WRI, CEB, GRF, MMAP, MSWMM, SLF, TMB, TMD, XDW, DVI, FDR, FLB, FM, HHT, MPX, MVB, NB, OBD, OXT, PDP, PRE, SHW, VBP, WP, WP5, WPF, ABW, AZW, CL4, CNT, DNL, DTP, JNT, LIC, LYX, MCD, NPP, OPD, OR3, PDG, SDM, SLA, TP3, TR, WSD

rem Archivos en Mapas GPS
set list-maps-gps=GPX, KML, KMZ, TAB, EST, FIT, SSF, RRD, ADF, MIF, MSD, OV2, POI, TFW, 3DD, APR, MXD, PIX, SLD, AXE, GML, GRB, GST, IMD, LPK, PMF, POS, RDC, SAF, SBN, TRK, UNL, WOR

rem Archivos Comprimidos
set list-comprimidos=7Z, CBR, GZ, JAR, PIT, RAR, TAR, TGZ, DL_, BZ2, CBZ, WAR, Z01, ZIP, MPQ, CAB, DEB, ISZ, LZH, PAK, R00, RPM, SFX, SIS, SIT, SITX, VEM, Z02, ZI, ZIPX, PAR, PF, PKG, PUP, UHA, ALZ, CBT, GZIP, IMZ, IPG, MAR, MSU, PAX, R30, SEA, SHR, UPX, XZ, Z, ZOO, ABA, ARJ, ATR, C00, KGB, PAE, SFS, ZL, ACE

rem Archivos Apps Mobil
set list-app-mobil=APK, IPA, IPSW, NBU, IPD, REM, M4R

rem Archivos financieros
set list-financieros=IIF, QBW, T12, OFC, TXF, QEL, T11, MNY, TAX, QFX, QSD, T09, T10, 1PE, QIF, QTX, OFX, QBO, QBR, T05, T07, T08

rem Archivos Movie Video
set list-movie-video=FLV, MKV, MTS, SRT, SWF, VOB, 3GP, AVI, MOV, MPL, OGV, WP3, DXR, AEP, BIK, CPI, IFO, M4V, MP4, MXF, QTL, REC, TS, WMV, WPL, ARF, 3GPP, AAF, ASF, ASX, AVCHD, BDMV, DIVX, DV, DVR, FLA, M2P, M2TS, MPEG, MPG, MPLS, OGM, PDS, QT, RM, RMVB, SMI, SMIL, TP, VSP, WEBM, 264, MOI, MSWMM, NVC, PGI, STX, VIDEO, 3G2, BDM, BMK, CLPI, DDAT, F4V, FLC, FLI, GTS, H264, IVR, MPEG4, MTV, MVB, RMS, SCM, TOD, TRP, VID, VP6, VRO, XVID, AMV, AMX, AVB, AVD, DIR, EZP, FCP, PSH, SMK, SWI, WCP

rem Archivos Multimedia
set list-multimedia=FLV, MKV, MTS, SRT, SWF, VOB, 3GP, AMR, AVI, FLAC, M3U, MOV, MP3, MPL, OGV, PTM, VOC, WP3, XSPF, DSS, DXR, AAX, ABC, AEP, BIK, CDA, CPI, IFO, M4A, M4V, MP4, MXF, OGG, QTL, REC, TS, WAV, WMV, WPL, ACD, ARF, FTM, 3GPP, AAC, AAF, AC3, ACT, AIF, AIFF, APE, ASF, ASX, AUD, AUP, AVCHD, BDMV, DIVX, DV, DVF, DVR, FLA, FLP, GSM, IFF, KAR, M2P, M2TS, M4P, MID, MOD, MPC, MPEG, MPG, MPLS, MSV, MUS, NRA, ODM, OGM, PCM, PDS, PK, PLS, QT, RAM, RBS, RM, RMVB, SDS, SEQ, SES, SHN, SMI, SMIL, SPX, TP, VLC, VSP, WEBM, WMA, WV, 264, DCF, GP3, MOI, MSWMM, MTD, NVC, NWC, PC, PGI, QCP, SF2, SNG, STX, VIDEO, VPL, WRF, ZPL, 3G2, AA, ACM, AIFC, APL, BDM, BMK, CLPI, CPR, DDAT, DMF, F4V, FLC, FLI, GTS, H264, IMF, IT, IVR, KMP, M4B, M4R, MBR, MPEG4, MTV, MVB, MXL, NST, OMA, PTX, RA, RMI, RMS, RNG, SCM, SMF, SMP, TAK, TOD, TRP, TTA, VID, VOX, VP6, VRO, WAX, WPK, WRK, WVE, XVID, ALL, ALS, AMV, AMX, AMZ, AVB, AVD, BUN, DIR, EMP, EMX, EZP, FCP, FEV, GIG, GPK, IMP, LVP, MTP, OMF, OVE, PSH, PTS, RFL, SDAT, SFL, SM, SMK, SVD, SWI, SYN, VDJ, VRF, WCP, WOW

SET list-final=TORRENT

:MENU-EXTENCIONES
cls
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "1 ----- Archivos De Musica"
echo "2 ----- Archivos De AutoCAD (2D, 3D) Entre Otros"
echo "3 ----- Archivos De Animación"
echo "4 ----- Archivos De Base De Datos"
echo "5 ----- Archivos De Backups"
echo "6 ----- Archivos De Desarrollo"
echo "7 ----- Archivos De Design (Diseno)"
echo "8 ----- Archivos De Adobe"
echo "9 ----- Archivos De Microsoft Office"
echo "10 ---- Archivos De Imagenes"
echo "11 ---- Archivos De Documentos"
echo "12 ---- Archivos De Fuentes Tipograficas"
echo "13 ---- Archivos En 3D"
echo "14 ---- Archivos En Roms VideoJuegos"
echo "15 ---- Archivos En Libros Digitales"
echo "16 ---- Archivos En Mapas GPS"
echo "17 ---- Archivos Comprimidos"
echo "18 ---- Archivos Apps Mobil"
echo "19 ---- Archivos Financieros"
echo "20 ---- Archivos Movie Video"
echo "21 ---- Archivos Multimedia"
echo "22 ---- Continuar"
echo.
echo %list-final%
echo.
echo Ingresa el numero de los archivos que deceas buscar
set /p "opcion=>"
IF %opcion%==1 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-audio%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==2 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-computer-assisted-design-3d-2d-CAD%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==3 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-animation%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==4 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-data-base%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==5 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-backups%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==6 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-developer%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==7 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-design%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==8 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-adobe%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==9 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-ofice%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==10 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-images%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==11 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-documents%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==12 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-font%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==13 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-3d%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==14 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-roms%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==15 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-books-digital%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==16 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-maps-gps%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==17 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-comprimidos%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==18 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-app-mobil%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==19 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-financieros%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==20 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-movie-video%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==21 (
  REM Sumar a la lista
  SET list-final=%list-final%, %list-multimedia%
  GOTO MENU-EXTENCIONES
)
IF %opcion%==22 (
  GOTO DEFINED-SEARCH-PAHT
)
GOTO MENU-EXTENCIONES


:DEFINED-SEARCH-PAHT
cls
rem Declaración de las variables a usar
set ruta=undefined
set destino=archivos
set action=undefined;
set ruta-destino=undefined
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
ECHO Unidad de disco o Ruta de *busqueda* (C, D, etc.) Enter para la direcion actual.
ECHO.
set /p "ruta=>"
rem Si no introduce ningún valor se ubicara en el directorio actual con el comando CHDIR
if %ruta%==undefined (
  for /f "tokens=*" %%%% in ('CHDIR') do (set ruta=%%~%%)
)
:DEFINED-DESTINATION-PAHT
cls
rem imprime la ruta y extencion
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "Ruta de busqueda -> %ruta%"
echo.
ECHO Unidad de disco o Ruta de *destino* (C, D, etc.) Enter para ruta de busqueda.
ECHO.
set /p "ruta-destino=>"
if %ruta-destino%==undefined (
  set ruta-destino=%ruta%
)
:DEFINED-NAME-DESTINATION
cls
rem imprime la ruta y extencion
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "Ruta de busqueda -> %ruta%"
echo.
echo "Ruta de destino -> %ruta-destino%\busquedas"
echo.
ECHO Introduce el nombre de la carpeta de destino, Enter para definirla como "archivos-de-[extencion]".
echo.
set /p "destino=>"
echo.
:DEFINED-ACTION
cls
rem imprime la ruta, extencion y nombre de carpeta
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "Ruta de busqueda -> %ruta%"
echo.
echo "Ruta de destino -> %ruta-destino%\busquedas"
echo.
echo "Nombre de carpeta -> %destino%-de-(extencion)"
echo.
ECHO ¿Deceas Copiar o Mover los archivos? (c/m).
echo.
set /p "action=>"
rem Si quiere el usuario quiere Copiar o Mover ha de escribir una 'm' o una 'M' tambien con una 'c' o una 'C'
if %action%==c (GOTO CONTINUE-FOR-COPY)
if %action%==C (GOTO CONTINUE-FOR-COPY)
if %action%==m (GOTO CONTINUE-FOR-MOVE)
if %action%==M (GOTO CONTINUE-FOR-MOVE)
GOTO DEFINED-ACTION



:CONTINUE-FOR-COPY
FOR %%A IN (%list-final%) DO (
  cls
  echo " _________________________________________________________________________________________"
  echo "|                                                                                         |"
  echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
  echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
  echo "|                                                                         |               |"
  echo "|                                        JuanDAC                                          |"
  echo "|_________________________________________________________________________________________|"
  echo.
  echo "Ruta de busqueda -> %ruta%"
  echo.
  echo "Extencion -> %%A"
  echo.
  echo "Ruta de destino -> %ruta-destino%\busquedas"
  echo.
  echo "Nombre de carpeta -> %destino%-de-%%A"
  echo.
  rem Si todas las condiciones se cumplen se copiaran los Archivos encontrados
  for /f "tokens=*" %%%% in ('where /r %ruta%\ *.%%A') do (
    xcopy /c /q /y "%%~%%" "%ruta-destino%\busquedas\%destino%-de-%%A\"
  )
)

GOTO FIN
:CONTINUE-FOR-MOVE
FOR %%A IN (%list-final%) DO (
  cls
  echo " _________________________________________________________________________________________"
  echo "|                                                                                         |"
  echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
  echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
  echo "|                                                                         |               |"
  echo "|                                        JuanDAC                                          |"
  echo "|_________________________________________________________________________________________|"
  echo.
  echo "Ruta de busqueda -> %ruta%"
  echo.
  echo "Extencion -> %%A"
  echo.
  echo "Ruta de destino -> %ruta-destino%\busquedas"
  echo.
  echo "Nombre de carpeta -> %destino%-de-%%A"
  echo.
  rem Si todas las condiciones se cumplen se Movera los Archivos encontrados
  for /f "tokens=*" %%%% in ('where /r %ruta%\ *.%%A') do (
    xcopy /c /q /y "%%~%%" "%ruta-destino%\busquedas\%destino%-de-%%A\"
    del /q "%%~%%"
  )
)
GOTO FIN
:FIN
cls
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "Ruta de busqueda -> %ruta%"
echo.
echo "Extenciones -> %list-final%"
echo.
echo "Ruta de destino -> %ruta-destino%"
echo.
echo "Nombre de carpeta -> %destino%-de-(extencion)"
echo.
echo.
echo.
echo "          _____            _____                    _____                _____                   _______         "
echo "         /\    \          /\    \                  /\    \              /\    \                 /::\    \        "
echo "        /::\____\        /::\    \                /::\    \            /::\    \               /::::\    \       "
echo "       /:::/    /        \:::\    \              /::::\    \           \:::\    \             /::::::\    \      "
echo "      /:::/    /          \:::\    \            /::::::\    \           \:::\    \           /::::::::\    \     "
echo "     /:::/    /            \:::\    \          /:::/\:::\    \           \:::\    \         /:::/~~\:::\    \    "
echo "    /:::/    /              \:::\    \        /:::/__\:::\    \           \:::\    \       /:::/    \:::\    \   "
echo "   /:::/    /               /::::\    \       \:::\   \:::\    \          /::::\    \     /:::/    / \:::\    \  "
echo "  /:::/    /       ____    /::::::\    \    ___\:::\   \:::\    \        /::::::\    \   /:::/____/   \:::\____\ "
echo " /:::/    /       /\   \  /:::/\:::\    \  /\   \:::\   \:::\    \      /:::/\:::\    \ |:::|    |     |:::|    |"
echo "/:::/____/       /::\   \/:::/  \:::\____\/::\   \:::\   \:::\____\    /:::/  \:::\____\|:::|____|     |:::|    |"
echo "\:::\    \       \:::\  /:::/    \::/    /\:::\   \:::\   \::/    /   /:::/    \::/    / \:::\    \   /:::/    / "
echo " \:::\    \       \:::\/:::/    / \/____/  \:::\   \:::\   \/____/   /:::/    / \/____/   \:::\    \ /:::/    /  "
echo "  \:::\    \       \::::::/    /            \:::\   \:::\    \      /:::/    /             \:::\    /:::/    /   "
echo "   \:::\    \       \::::/____/              \:::\   \:::\____\    /:::/    /               \:::\__/:::/    /    "
echo "    \:::\    \       \:::\    \               \:::\  /:::/    /    \::/    /                 \::::::::/    /     "
echo "     \:::\    \       \:::\    \               \:::\/:::/    /      \/____/                   \::::::/    /      "
echo "      \:::\    \       \:::\    \               \::::::/    /                                  \::::/    /       "
echo "       \:::\____\       \:::\____\               \::::/    /                                    \::/____/        "
echo "        \::/    /        \::/    /                \::/    /                                      ~~              "
echo "         \/____/          \/____/                  \/____/                                                       "
echo "                                                                                                                 "
PAUSE
