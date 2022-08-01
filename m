Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7EE586ED7
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 18:41:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA6B2381089
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 12:41:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659372113; bh=t9uuXqxfLRKmLMPUVdqzbX0lKaaiEMEpIKcExpP20SA=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=bxErE9XB/bi+1EZ3yl66kc13WYADOQvvNEgZam2muLps92NroWaIxNn/OVWyKOl3t
	 tjg/UwXLvF+VefQZ7IdfdUjSSC/tyvbge6F+bfn4NW3czhFlU6S+IuZrXiWgHgr+uS
	 mPm5AuIQR6iqR6Dq5opg4SJ4lKju+ANqnvR285fywAqgGpNAfYwqDTfvbjlu6rUrIP
	 mT4q8yNtN/4IARSv09NnBzlNNQZuSN8GxhjbUqVVD9WoXoG/AursUhfQw6I332kd8m
	 1Eg9mgvjmmtPxBBoSI56lC+3oWOxNvF8I5LA58ph3txIvaiiefzKeV9egmoy7H+L17
	 da+T8N+9WRxXw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6702380C55
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 12:40:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659372026; bh=NUbvpv1RzTneUOKXdqyTcfUkvNdjvUUNx/99dSgWDDc=;
	h=Date:To:From:Subject:From;
	b=m5WUK7jg1PME5q9TD4AG7ZeVTOX59H3yJw/WBD06GMPC2iUkAODTizZUc5Su6odLB
	 UAW5dTm+fyEkhBsOzQfhgvcLpwqX2EwM0Qmar1lbL/rVJKV4Jo2/qLNaStmsN+hBwe
	 brQvV7DKlIdAMpSd4trM82BNmzHQUK5ET1EDX1G/x0HJpjt76H94RlTSeXT7nVhgkb
	 lnslUtxCZxMqKJDvn29YB/wiGPDK/FWeqO1yXORnv3KLmaOnzy6/yvAw31xtWKvNv9
	 5VU/7VhhwqleNqQ7EXgPXMCcCxSm1qAc2syLt6c0ZM+Sx88tZ713tCVUjuz5kychO4
	 XgmJryOYQa+FQ==
Date: Mon, 1 Aug 2022 16:40:26 +0000
To: usrp-users@lists.ettus.com
Message-ID: <1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XYSWM5LZW3N24236GV2YY55VHTICO4NR
X-Message-ID-Hash: XYSWM5LZW3N24236GV2YY55VHTICO4NR
X-MailFrom: moklesur_bme@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] I am trying to deploy eNb using USRP B2100. But, when I am going to compile and run eNb  and I notice error( Error signal 11).  I would like to mention that I successfully installed UHD and GNU and dependency driver. I did the work following the manual step by step.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XYSWM5LZW3N24236GV2YY55VHTICO4NR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Md Moklesur Rahman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: moklesur_bme@yahoo.com
Content-Type: multipart/mixed; boundary="===============1938103666862574904=="

This is a multi-part message in MIME format.

--===============1938103666862574904==
Content-Type: multipart/alternative;
 boundary="b1_1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I
Content-Type: text/plain; charset=us-ascii

dipu@dipu-HP-EliteBook-840-G4:\~/openairinterface5g-develop/openairinterface5g/targets/bin$ sudo -E ./lte-softmodem.Rel14 -O ../../ci-scripts/conf_files/enb.band7.tm1.50PRB.usrpb210.conf -d

\[CONFIG\] get parameters from libconfig ../../ci-scripts/conf_files/enb.band7.tm1.50PRB.usrpb210.conf , debug flags: 0x00000000

\[CONFIG\] function config_libconfig_init returned 0

\[CONFIG\] config module libconfig loaded

\[LIBCONFIG\] config: 1/1 parameters successfully set, (1 to default value)

\# /dev/cpu_dma_latency set to 0us

\[LIBCONFIG\] log_config: 3/3 parameters successfully set, (1 to default value)

\[LIBCONFIG\] log_config: 46/46 parameters successfully set, (40 to default value)

\[LIBCONFIG\] log_config: 46/46 parameters successfully set, (46 to default value)

\[LIBCONFIG\] log_config: 15/15 parameters successfully set, (15 to default value)

\[LIBCONFIG\] log_config: 15/15 parameters successfully set, (15 to default value)

log init done

Reading in command-line options

\[LIBCONFIG\] (root): 21/21 parameters successfully set, (18 to default value)

\[LIBCONFIG\] (root): 5/5 parameters successfully set, (4 to default value)

Getting ENBSParams

\[LIBCONFIG\] (root): 3/3 parameters successfully set, (1 to default value)

\[LIBCONFIG\] THREAD_STRUCT.\[0\]: 2/2 parameters successfully set, (0 to default value)

\[LIBCONFIG\] THREAD_STRUCT.\[0\]: 2/2 parameters successfully set, (0 to default value)

Configuration: nb_rrc_inst 1, nb_L1_inst 1, nb_ru 1

\[LIBCONFIG\] loader: 2/2 parameters successfully set, (2 to default value)

\[LIBCONFIG\] loader.NB_IoT: 2/2 parameters successfully set, (1 to default value)

\[LOADER\] library libNB_IoT.so is not loaded: libNB_IoT.so: cannot open shared object file: No such file or directory

               nb_nbiot_rrc_inst 0, nb_nbiot_L1_inst 0, nb_nbiot_macrlc_inst 0

\[LIBCONFIG\] TTracer: 4/4 parameters successfully set, (4 to default value)

configuring for RAU/RRU

CPU Freq is 2.712165 

ITTI init, useMME: 1

\[TMR\]   Starting itti queue: TASK_UNKNOWN as task 0

\[TMR\]   Starting itti queue: TASK_TIMER as task 1

\[TMR\]   Starting itti queue: TASK_L2L1 as task 2

\[TMR\]   Starting itti queue: TASK_BM as task 3

\[TMR\]   Starting itti queue: TASK_PHY_ENB as task 4

\[TMR\]   Starting itti queue: TASK_MAC_ENB as task 5

\[TMR\]   Starting itti queue: TASK_RLC_ENB as task 6

\[TMR\]   Starting itti queue: TASK_RRC_ENB_NB_IoT as task 7

\[TMR\]   Starting itti queue: TASK_PDCP_ENB as task 8

\[TMR\]   Starting itti queue: TASK_DATA_FORWARDING as task 9

\[TMR\]   Starting itti queue: TASK_END_MARKER as task 10

\[TMR\]   Starting itti queue: TASK_RRC_ENB as task 11

\[TMR\]   Starting itti queue: TASK_RAL_ENB as task 12

\[TMR\]   Starting itti queue: TASK_S1AP as task 13

\[TMR\]   Starting itti queue: TASK_X2AP as task 14

\[TMR\]   Starting itti queue: TASK_M2AP_ENB as task 15

\[TMR\]   Starting itti queue: TASK_M2AP_MCE as task 16

\[TMR\]   Starting itti queue: TASK_M3AP as task 17

\[TMR\]   Starting itti queue: TASK_M3AP_MME as task 18

\[TMR\]   Starting itti queue: TASK_M3AP_MCE as task 19

\[TMR\]   Starting itti queue: TASK_SCTP as task 20

\[TMR\]   Starting itti queue: TASK_ENB_APP as task 21

\[TMR\]   Starting itti queue: TASK_MCE_APP as task 22

\[TMR\]   Starting itti queue: TASK_MME_APP as task 23

\[TMR\]   Starting itti queue: TASK_FLEXRAN_AGENT as task 24

\[TMR\]   Starting itti queue: TASK_PHY_UE as task 25

\[TMR\]   Starting itti queue: TASK_MAC_UE as task 26

\[TMR\]   Starting itti queue: TASK_RLC_UE as task 27

\[TMR\]   Starting itti queue: TASK_PDCP_UE as task 28

\[TMR\]   Starting itti queue: TASK_RRC_UE as task 29

\[TMR\]   Starting itti queue: TASK_NAS_UE as task 30

\[TMR\]   Starting itti queue: TASK_RAL_UE as task 31

\[TMR\]   Starting itti queue: TASK_MSC as task 32

\[TMR\]   Starting itti queue: TASK_GTPV1_U as task 33

\[TMR\]   Starting itti queue: TASK_UDP as task 34

\[TMR\]   Starting itti queue: TASK_CU_F1 as task 35

\[TMR\]   Starting itti queue: TASK_DU_F1 as task 36

\[LIBCONFIG\] opt: 3/3 parameters successfully set, (3 to default value)

\[OPT\]   OPT disabled

reported resolution = 1 ns

\[HW\]   Version: Branch: master Abrev. Hash: 9a06ceba46 Date: Wed Sep 9 16:15:50 2020 +0200

Runtime table

\[PHY\]   RC.eNB = 0x5617a4843460

\[LIBCONFIG\] L1s.\[0\]: 24/24 parameters successfully set, (22 to default value)

\[PHY\]   RC.eNB\[0\] = 0x5617a4843510

\[PHY\]   RC.eNB\[0\]\[0\] = 0x7fa783aed010

\[ENB_APP\]   Initializing northbound interface for L1

\[PHY\]   l1_north_init_eNB() RC.nb_L1_inst:1

\[PHY\]   l1_north_init_eNB() RC.nb_L1_CC\[0\]:1

\[PHY\]   l1_north_init_eNB() RC.eNB\[0\]\[0\] installing callbacks

\[PHY\]   read_config_and_init() RC.nb_L1_inst: 1

\[LIBCONFIG\] MACRLCs.\[0\]: 21/21 parameters successfully set, (15 to default value)

\[LIBCONFIG\] MACRLCs.\[0\]: 21/21 parameters successfully set, (15 to default value)

\[MAC\]   \[MAIN\] Init function start:nb_macrlc_inst=1

\[PDCP\]   PDCP layer has been initialized

Configuring local RRC for MACRLC

\[ENB_APP\]   sched mode = default 0 \[default\]

\[MAC\]   read_config_and_init() RC.nb_macrlc_inst: 1

\[PHY\]   l1_north_init_eNB() RC.nb_L1_inst:1

\[PHY\]   l1_north_init_eNB() RC.nb_L1_CC\[0\]:1

\[PHY\]   l1_north_init_eNB() RC.eNB\[0\]\[0\] installing callbacks

\[LIBCONFIG\] (root): 3/3 parameters successfully set, (1 to default value)

\[LIBCONFIG\] eNBs.\[0\]: 20/20 parameters successfully set, (11 to default value)

\[RRC\]   Instance 0: Southbound Transport local_mac

\[RRC\]   Setting node_type to ngran_eNB

\[LIBCONFIG\] eNBs.\[0\].plmn_list.\[0\]: 3/3 parameters successfully set, (0 to default value)

\[RRC\]   num component carriers 1 

\[RRC\]   enb_config::RCconfig_RRC() parameter number: 0, total number of parameters: 78, ccspath: eNBs.\[0\].component_carriers.\[0\] 

 

\[LIBCONFIG\] eNBs.\[0\].component_carriers.\[0\]: 78/78 parameters successfully set, (17 to default value)

phich.resource 0 (ONESIXTH), phich.duration 0 (NORMAL)

No eMBMS configuration, skipping it

\[LIBCONFIG\] eNBs.\[0\].component_carriers.\[0\].emtc_parameters: 88/88 parameters successfully set, (88 to default value)

No eMTC configuration, skipping it

\[LIBCONFIG\] eNBs.\[0\].component_carriers.\[0\].SLparameters: 39/39 parameters successfully set, (39 to default value)

No SL configuration skipping it

\[LIBCONFIG\] eNBs.\[0\].srb1_parameters: 6/6 parameters successfully set, (0 to default value)

\[RRC\]   Node type 0 

 \[LIBCONFIG\] (root): 3/3 parameters successfully set, (1 to default value)

\[LIBCONFIG\] NETWORK_CONTROLLER: 6/6 parameters successfully set, (0 to default value)

\[FLEXRAN_AGENT\]   FlexRAN Agent for eNB 0 is DISABLED

\[PDCP\]   PDCP layer has been initialized

\[PDCP\]   pdcp init,usegtp 

\[PDCP\]   ENB pdcp will use tun interface for MBMS

\[NETLINK\]Opened socket oaitun_enm1 with fd 80

returnValue 0

returnValue 0

returnValue 0

\[OIP\]   Interface oaitun_enm1 successfuly configured, ip address 10.0.2.1, mask 255.255.255.0 broadcast address 10.0.2.255

\[ENB_APP\]   Creating ENB_APP eNB Task

\[TMR\]   Created Posix thread TASK_ENB_APP

\[RRC\]   Creating RRC eNB Task

\[TMR\]   Created Posix thread TASK_RRC_ENB

\[LIBCONFIG\] (root): 3/3 parameters successfully set, (1 to default value)

\[TMR\]   Created Posix thread TASK_SCTP

\[RRC\]   Entering main loop of RRC message task

\[LIBCONFIG\] eNBs.\[0\]: 20/20 parameters successfully set, (11 to default value)

\[SCTP\]   Starting SCTP layer

\[LIBCONFIG\] eNBs.\[0\].plmn_list.\[0\]: 3/3 parameters successfully set, (0 to default value)

\[TMR\]   Created Posix thread TASK_S1AP

\[S1AP\]   Starting S1AP layer

\[TMR\]   Created Posix thread TASK_UDP

\[UDP\]   Initializing UDP task interface

\[UDP\]   Initializing UDP task interface: DONE

\[TMR\]   Created Posix thread TASK_GTPV1_U

\[LIBCONFIG\] eNBs.\[0\]: 1/1 parameters successfully set, (0 to default value)

\[X2AP\]   X2AP is disabled.

\[MAC\]   Creating MAC eNB Task

\[GTPV1U\]   Initializing GTPU stack 0x5617a3b8ce58

\[TMR\]   Created Posix thread TASK_MAC_ENB

\[LIBCONFIG\] eNBs.\[0\].component_carriers.\[0\]: 78/78 parameters successfully set, (17 to default value)

\[MAC\]   Starting main loop of MAC message task

\[RRC\]   \[eNB 0\] Received RRC_CONFIGURATION_REQ : 0x5617a4876a4c

\[RRC\]   \[FRAME 00000\]\[eNB\]\[MOD 00\]\[RNTI 0\] Init...

\[RRC\]   \[FRAME 00000\]\[eNB\]\[MOD 00\]\[RNTI 0\] Checking release 

\[RRC\]   \[FRAME 00000\]\[eNB\]\[MOD 00\]\[RNTI 0\] Rel14 RRC detected, MBMS flag 0

\[RRC\]   \[eNB 0\] Node type 0 

 \[RRC\]   configuration->schedulingInfoSIB1_BR_r13\[CC_id\] 0

\[RRC\]   Configuring MIB (N_RB_DL 50,phich_Resource 0,phich_Duration 0)

\[LIBCONFIG\] eNBs.\[0\].mme_ip_address.\[0\]: 5/5 parameters successfully set, (0 to default value)

\[RRC\]   \[MIB\] systemBandwidth 3, phich_duration 0, phich_resource 0, sfn 0

\[RRC\]   \[MIB\] schedulingInfoSIB1 0

\[LIBCONFIG\] eNBs.\[0\].SCTP: 2/2 parameters successfully set, (0 to default value)

\[LIBCONFIG\] eNBs.\[0\].NETWORK_INTERFACES: 11/11 parameters successfully set, (2 to default value)

\[GTPV1U\]   Configuring GTPu

\[LIBCONFIG\] (root): 3/3 parameters successfully set, (1 to default value)

\[LIBCONFIG\] eNBs.\[0\].NETWORK_INTERFACES: 3/3 parameters successfully set, (0 to default value)

\[RRC\]   \[eNB 0\] Configuration SIB2/3, eMBMS = 0

\[GTPV1U\]   Configuring GTPu address : 10.50.150.226 -> e296320a

\[ENB_APP\]   default drx 2

\[GTPV1U\]   Tx UDP_INIT IP addr 10.50.150.226 (868)

\[RRC\]   do_SIB23, size 38 

 \[MAC\]   Configuring MIB for instance 0, CCid 0 : (band 7,N_RB_DL 50,Nid_cell 0,p 1,DL freq 2685000000,phich_config.resource 0, phich_config.duration 0)

\[MAC\]   config_mib() NFAPI_CONFIG_REQUEST(num_tlv:16) DL_BW:50 UL_BW:50 Ncp 0,p_eNB 1,earfcn 3400,band 7,phich_resource 0 phich_duration 0 phich_power_offset 6000 PSS 6000 SSS 6000 PCI 0 PBCH repetition 0

\[ENB_APP\]   \[eNB 0\] eNB_app_register via S1AP for instance 0

\[MAC\]   \[CONFIG\]SIB2/3 Contents (partial)

\[LIBCONFIG\] eNBs.\[0\]: 1/1 parameters successfully set, (1 to default value)

\[MAC\]   \[CONFIG\]pusch_config_common.n_SB = 1

\[MAC\]   \[CONFIG\]pusch_config_common.hoppingMode = 0

\[MAC\]   \[CONFIG\]pusch_config_common.pusch_HoppingOffset = 0

\[MAC\]   \[CONFIG\]pusch_config_common.enable64QAM = 0

\[MAC\]   \[CONFIG\]pusch_config_common.groupHoppingEnabled = 1

\[MAC\]   \[CONFIG\]pusch_config_common.groupAssignmentPUSCH = 0

\[MAC\]   \[CONFIG\]pusch_config_common.sequenceHoppingEnabled = 0

\[MAC\]   \[CONFIG\]pusch_config_common.cyclicShift  = 1

\[UDP\]   Initializing UDP for local address 10.50.150.226 with port 2152

\[PHY\]   Configuring MIB for instance 0, CCid 0 : (band 7,N_RB_DL 50, N_RB_UL 50, Nid_cell 0,eNB_tx_antenna_ports 1,Ncp 0,DL freq 3400,phich_config.resource 0, phich_config.duration 0)

\[PHY\]   Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1

\[PHY\]   lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024

\[LIBCONFIG\] loader.coding: 2/2 parameters successfully set, (1 to default value)

\[S1AP\]   Registered new eNB\[0\] and macro eNB id 3584

\[S1AP\]   \[eNB 0\] check the mme registration state

\[UDP\]   Inserting new descriptor for task 33, sd 81

\[UDP\]   Initializing UDP for local address 10.50.150.226 with port 2152: DONE

\[SCTP\]   sctp_bindx SCTP_BINDX_ADD_ADDR socket bound to : 10.50.150.226

\[SCTP\]   Converted ipv4 address 193.166.28.130 to network type

\[SCTP\]   connectx assoc_id  10 in progress..., used 1 addresses

\[SCTP\]   Inserted new descriptor for sd 83 in list, nb elements 1, assoc_id 10

\[SCTP\]   Found data for descriptor 83

\[SCTP\]   Received notification for sd 83, type 32769

\[SCTP\]   Client association changed: 0

\[SCTP\]   ----------------------

\[SCTP\]   Peer addresses:

\[SCTP\]       - \[193.166.28.130\]

\[SCTP\]   ----------------------

\[SCTP\]   ----------------------

\[SCTP\]   SCTP Status:

\[SCTP\]   assoc id .....: 10

\[SCTP\]   state ........: 4

\[SCTP\]   instrms ......: 2

\[SCTP\]   outstrms .....: 2

\[SCTP\]   fragmentation : 1452

\[SCTP\]   pending data .: 0

\[SCTP\]   unack data ...: 0

\[SCTP\]   rwnd .........: 106496

\[SCTP\]   peer info     :

\[SCTP\]       state ....: 2

\[SCTP\]       cwnd .....: 4380

\[SCTP\]       srtt .....: 0

\[SCTP\]       rto ......: 3000

\[SCTP\]       mtu ......: 1500

\[SCTP\]   ----------------------

\[SCTP\]   Comm up notified for sd 83, assigned assoc_id 10

\[SCTP\]   Found data for descriptor 83

\[SCTP\]   Received notification for sd 83, type 32776

\[S1AP\]   3584 -> 00e000

\[SCTP\]   Successfully sent 59 bytes on stream 0 for assoc_id 10

\[SCTP\]   Found data for descriptor 83

\[SCTP\]   Received notification for sd 83, type 32777

\[SCTP\]   Found data for descriptor 83

\[SCTP\]   \[10\]\[83\] Msg of length 45 received from port 36412, on stream 0, PPID 18

\[S1AP\]   servedGUMMEIs.list.count 1

\[S1AP\]   servedPLMNs.list.count 1

\[ENB_APP\]   \[eNB 0\] Received S1AP_REGISTER_ENB_CNF: associated MME 1

\[LOADER\] library libcoding.so successfully loaded

\[PHY\]   prach_config_common.rootSequenceIndex = 0

\[PHY\]   prach_config_common.prach_ConfigInfo.prach_ConfigIndex = 0

\[PHY\]   prach_config_common.prach_ConfigInfo.highSpeedFlag = 0

\[PHY\]   prach_config_common.prach_ConfigInfo.zeroCorrelationZoneConfig = 1

\[PHY\]   prach_config_common.prach_ConfigInfo.prach_FreqOffset = 2

\[PHY\]   pusch_config_common.n_SB = 1

\[PHY\]   pusch_config_common.hoppingMode = 0

\[PHY\]   pusch_config_common.pusch_HoppingOffset = 0

\[PHY\]   pusch_config_common.enable64QAM = 0

\[PHY\]   pusch_config_common.ul_ReferenceSignalsPUSCH.groupHoppingEnabled = 1

\[PHY\]   pusch_config_common.ul_ReferenceSignalsPUSCH.groupAssignmentPUSCH = 0

\[PHY\]   pusch_config_common.ul_ReferenceSignalsPUSCH.sequenceHoppingEnabled = 0

\[PHY\]   pusch_config_common.ul_ReferenceSignalsPUSCH.cyclicShift = 2

\[PHY\]   eNB 0/0 configured

\[RRC\]   \[eNB\] handover active state is 0 

\[RRC\]   \[eNB\] eMBMS active state is 0 

\[RRC\]   \[FRAME 00000\]\[eNB\]\[MOD 00\]\[RNTI 0\] ENB:OPENAIR RRC IN....

\[ENB_APP\]   START MAIN THREADS

RC.nb_L1_inst:1

Initializing eNB threads single_thread_flag:0 wait_for_sync:0

\[PHY\]   \[lte-softmodem.c\] eNB structure about to allocated RC.nb_L1_inst:1 RC.nb_L1_CC\[0\]:1

\[PHY\]   \[lte-softmodem.c\] eNB structure RC.eNB allocated

\[PHY\]   Initializing eNB 0 CC_id 0 single_thread_flag:0

\[PHY\]   Initializing eNB 0 CC_id 0

\[PHY\]   Registering with MAC interface module

\[PHY\]   Setting indication lists

\[PHY\]   \[lte-softmodem.c\] eNB structure allocated

wait_eNBs()

Waiting for eNB L1 instances to all get configured ... sleeping 50ms (nb_L1_inst 1)

RC.nb_L1_CC\[0\]:1

eNB L1 are configured

About to Init RU threads RC.nb_RU:1

Initializing RU threads

configuring RU from file

\[LIBCONFIG\] RUs.\[0\]: 24/24 parameters successfully set, (15 to default value)

Set RU mask to 1

Creating RC.ru\[0\]:0x5617a48779e0

Setting function for RU 0 to eNodeB_3GPP

\[PHY\]   number of L1 instances 1, number of RU 1, number of CPU cores 4

\[PHY\]   DJP - delete code above this /home/dipu/openairinterface5g-develop/openairinterface5g/targets/RT/USER/lte-ru.c:2650

\[PHY\]   Copying frame parms from eNB 0 to ru 0

\[PHY\]   Initializing RRU descriptor 0 : (local RF,synch_to_ext_device,0)

configuring ru_id 0 (start_rf 0x5617a2ba6080)

\[PHY\]   Starting ru_thread 0, is_slave 0, send_dmrs 0

\[PHY\]   Initializing RU proc 0 (eNodeB_3GPP,synch_to_ext_device),

\[PHY\]   init_RU_proc() DJP - added creation of pthread_prach

\[HW\]   \[SCHED\]\[eNB\] ru_thread started on CPU 0, sched_policy = SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3 

channel 0, Setting tx_gain offset 0.000000, rx_gain offset 125.000000, tx_freq 2685000000.000000, rx_freq 2565000000.000000

\[PHY\]   Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1

\[PHY\]   lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024

\[HW\]   \[SCHED\]\[eNB\] ru_thread_prach started on CPU 3, sched_policy = SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3 

\[PHY\]   Initializing RU signal buffers (if_south local RF) nb_tx 1

\[PHY\]   thread ru created id=28867

\[PHY\]   Starting RU 0 (eNodeB_3GPP,synch_to_ext_device),

waiting for sync (ru_thread,-1/0x5617a3576248,0x5617a3cd5c80,0x5617a3b8b880)

\[PHY\]   ru_thread_prach() RU configured - RACH processing thread running

\[PHY\]   \[INIT\] common.txdata\[0\] = 0x7fa786c30040 (614400 bytes)

\[PHY\]   nb_tx 1

\[PHY\]   rxdata_7_5kHz\[0\] 0x7fa786bf3040 for RU 0

\[PHY\]   \[INIT\] common.txdata_BF= 0x5617a48c9d00 (8 bytes)

\[PHY\]   txdataF_BF\[0\] 0x5617a48c9d80 for RU 0

\[PHY\]   rxdataF\[0\] 0x5617a48d7e80 for RU 0

\[LIBCONFIG\] loader.oai_device: 2/2 parameters successfully set, (1 to default value)

\[LOADER\] library liboai_device.so successfully loaded

\[PHY\]   Checking for USRPs : UHD 4.2.0.0-0ubuntu1\~bionic1 (4.2.0)

\[INFO\] \[UHD\] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.0-0ubuntu1\~bionic1

\[HW\]   Found USRP b200

Found USRP b200

\[INFO\] \[B200\] Detected Device: B210

\[INFO\] \[B200\] Operating over USB 3.

\[INFO\] \[B200\] Initialize CODEC control...

\[INFO\] \[B200\] Initialize Radio control...

\[INFO\] \[B200\] Performing register loopback test... 

\[INFO\] \[B200\] Register loopback test passed

\[INFO\] \[B200\] Performing register loopback test... 

\[INFO\] \[B200\] Register loopback test passed

\[INFO\] \[B200\] Asking for clock rate 30.720000 MHz... 

\[INFO\] \[B200\] Actually got clock rate 30.720000 MHz.

Error: signal 11:

./lte-softmodem.Rel14(signal_handler+0x7c)\[0x5617a2bc639c\]

/lib/x86_64-linux-gnu/libc.so.6(+0x3ef10)\[0x7fa7846ddf10\]

/usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0(+0x33dcf2)\[0x7fa7796f0cf2\]

/usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0(+0x3652ff)\[0x7fa7797182ff\]

/home/dipu/openairinterface5g-develop/openairinterface5g/cmake_targets/lte_build_oai/build/liboai_device.so(device_init+0x9d2)\[0x7fa77a29fae2\]

./lte-softmodem.Rel14(load_lib+0x6f)\[0x5617a2bcac6f\]

./lte-softmodem.Rel14(openair0_device_load+0x24)\[0x5617a2bcaeb4\]

./lte-softmodem.Rel14(init_RU_proc+0x543)\[0x5617a2bb88f3\]

./lte-softmodem.Rel14(init_RU+0x3ec)\[0x5617a2bbcd1c\]

./lte-softmodem.Rel14(main+0x5cb)\[0x5617a2b95e9b\]

--b1_1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>dipu@dipu-HP-EliteBook-840-G4:~/openairinterface5g-develop/openairinterf=
ace5g/targets/bin$ sudo -E ./lte-softmodem.Rel14 -O ../../ci-scripts/conf_f=
iles/enb.band7.tm1.50PRB.usrpb210.conf -d</p><p>[CONFIG] get parameters fro=
m libconfig ../../ci-scripts/conf_files/enb.band7.tm1.50PRB.usrpb210.conf ,=
 debug flags: 0x00000000</p><p>[CONFIG] function config_libconfig_init retu=
rned 0</p><p>[CONFIG] config module libconfig loaded</p><p>[LIBCONFIG] conf=
ig: 1/1 parameters successfully set, (1 to default value)</p><p># /dev/cpu_=
dma_latency set to 0us</p><p>[LIBCONFIG] log_config: 3/3 parameters success=
fully set, (1 to default value)</p><p>[LIBCONFIG] log_config: 46/46 paramet=
ers successfully set, (40 to default value)</p><p>[LIBCONFIG] log_config: 4=
6/46 parameters successfully set, (46 to default value)</p><p>[LIBCONFIG] l=
og_config: 15/15 parameters successfully set, (15 to default value)</p><p>[=
LIBCONFIG] log_config: 15/15 parameters successfully set, (15 to default va=
lue)</p><p>log init done</p><p>Reading in command-line options</p><p>[LIBCO=
NFIG] (root): 21/21 parameters successfully set, (18 to default value)</p><=
p>[LIBCONFIG] (root): 5/5 parameters successfully set, (4 to default value)=
</p><p>Getting ENBSParams</p><p>[LIBCONFIG] (root): 3/3 parameters successf=
ully set, (1 to default value)</p><p>[LIBCONFIG] THREAD_STRUCT.[0]: 2/2 par=
ameters successfully set, (0 to default value)</p><p>[LIBCONFIG] THREAD_STR=
UCT.[0]: 2/2 parameters successfully set, (0 to default value)</p><p>Config=
uration: nb_rrc_inst 1, nb_L1_inst 1, nb_ru 1</p><p>[LIBCONFIG] loader: 2/2=
 parameters successfully set, (2 to default value)</p><p>[LIBCONFIG] loader=
.NB_IoT: 2/2 parameters successfully set, (1 to default value)</p><p>[LOADE=
R] library libNB_IoT.so is not loaded: libNB_IoT.so: cannot open shared obj=
ect file: No such file or directory</p><p>               nb_nbiot_rrc_inst =
0, nb_nbiot_L1_inst 0, nb_nbiot_macrlc_inst 0</p><p>[LIBCONFIG] TTracer: 4/=
4 parameters successfully set, (4 to default value)</p><p>configuring for R=
AU/RRU</p><p>CPU Freq is 2.712165 </p><p>ITTI init, useMME: 1</p><p>[TMR]  =
 Starting itti queue: TASK_UNKNOWN as task 0</p><p>[TMR]   Starting itti qu=
eue: TASK_TIMER as task 1</p><p>[TMR]   Starting itti queue: TASK_L2L1 as t=
ask 2</p><p>[TMR]   Starting itti queue: TASK_BM as task 3</p><p>[TMR]   St=
arting itti queue: TASK_PHY_ENB as task 4</p><p>[TMR]   Starting itti queue=
: TASK_MAC_ENB as task 5</p><p>[TMR]   Starting itti queue: TASK_RLC_ENB as=
 task 6</p><p>[TMR]   Starting itti queue: TASK_RRC_ENB_NB_IoT as task 7</p=
><p>[TMR]   Starting itti queue: TASK_PDCP_ENB as task 8</p><p>[TMR]   Star=
ting itti queue: TASK_DATA_FORWARDING as task 9</p><p>[TMR]   Starting itti=
 queue: TASK_END_MARKER as task 10</p><p>[TMR]   Starting itti queue: TASK_=
RRC_ENB as task 11</p><p>[TMR]   Starting itti queue: TASK_RAL_ENB as task =
12</p><p>[TMR]   Starting itti queue: TASK_S1AP as task 13</p><p>[TMR]   St=
arting itti queue: TASK_X2AP as task 14</p><p>[TMR]   Starting itti queue: =
TASK_M2AP_ENB as task 15</p><p>[TMR]   Starting itti queue: TASK_M2AP_MCE a=
s task 16</p><p>[TMR]   Starting itti queue: TASK_M3AP as task 17</p><p>[TM=
R]   Starting itti queue: TASK_M3AP_MME as task 18</p><p>[TMR]   Starting i=
tti queue: TASK_M3AP_MCE as task 19</p><p>[TMR]   Starting itti queue: TASK=
_SCTP as task 20</p><p>[TMR]   Starting itti queue: TASK_ENB_APP as task 21=
</p><p>[TMR]   Starting itti queue: TASK_MCE_APP as task 22</p><p>[TMR]   S=
tarting itti queue: TASK_MME_APP as task 23</p><p>[TMR]   Starting itti que=
ue: TASK_FLEXRAN_AGENT as task 24</p><p>[TMR]   Starting itti queue: TASK_P=
HY_UE as task 25</p><p>[TMR]   Starting itti queue: TASK_MAC_UE as task 26<=
/p><p>[TMR]   Starting itti queue: TASK_RLC_UE as task 27</p><p>[TMR]   Sta=
rting itti queue: TASK_PDCP_UE as task 28</p><p>[TMR]   Starting itti queue=
: TASK_RRC_UE as task 29</p><p>[TMR]   Starting itti queue: TASK_NAS_UE as =
task 30</p><p>[TMR]   Starting itti queue: TASK_RAL_UE as task 31</p><p>[TM=
R]   Starting itti queue: TASK_MSC as task 32</p><p>[TMR]   Starting itti q=
ueue: TASK_GTPV1_U as task 33</p><p>[TMR]   Starting itti queue: TASK_UDP a=
s task 34</p><p>[TMR]   Starting itti queue: TASK_CU_F1 as task 35</p><p>[T=
MR]   Starting itti queue: TASK_DU_F1 as task 36</p><p>[LIBCONFIG] opt: 3/3=
 parameters successfully set, (3 to default value)</p><p>[OPT]   OPT disabl=
ed</p><p>reported resolution =3D 1 ns</p><p>[HW]   Version: Branch: master =
Abrev. Hash: 9a06ceba46 Date: Wed Sep 9 16:15:50 2020 +0200</p><p>Runtime t=
able</p><p>[PHY]   RC.eNB =3D 0x5617a4843460</p><p>[LIBCONFIG] L1s.[0]: 24/=
24 parameters successfully set, (22 to default value)</p><p>[PHY]   RC.eNB[=
0] =3D 0x5617a4843510</p><p>[PHY]   RC.eNB[0][0] =3D 0x7fa783aed010</p><p>[=
ENB_APP]   Initializing northbound interface for L1</p><p>[PHY]   l1_north_=
init_eNB() RC.nb_L1_inst:1</p><p>[PHY]   l1_north_init_eNB() RC.nb_L1_CC[0]=
:1</p><p>[PHY]   l1_north_init_eNB() RC.eNB[0][0] installing callbacks</p><=
p>[PHY]   read_config_and_init() RC.nb_L1_inst: 1</p><p>[LIBCONFIG] MACRLCs=
.[0]: 21/21 parameters successfully set, (15 to default value)</p><p>[LIBCO=
NFIG] MACRLCs.[0]: 21/21 parameters successfully set, (15 to default value)=
</p><p>[MAC]   [MAIN] Init function start:nb_macrlc_inst=3D1</p><p>[PDCP]  =
 PDCP layer has been initialized</p><p>Configuring local RRC for MACRLC</p>=
<p>[ENB_APP]   sched mode =3D default 0 [default]</p><p>[MAC]   read_config=
_and_init() RC.nb_macrlc_inst: 1</p><p>[PHY]   l1_north_init_eNB() RC.nb_L1=
_inst:1</p><p>[PHY]   l1_north_init_eNB() RC.nb_L1_CC[0]:1</p><p>[PHY]   l1=
_north_init_eNB() RC.eNB[0][0] installing callbacks</p><p>[LIBCONFIG] (root=
): 3/3 parameters successfully set, (1 to default value)</p><p>[LIBCONFIG] =
eNBs.[0]: 20/20 parameters successfully set, (11 to default value)</p><p>[R=
RC]   Instance 0: Southbound Transport local_mac</p><p>[RRC]   Setting node=
_type to ngran_eNB</p><p>[LIBCONFIG] eNBs.[0].plmn_list.[0]: 3/3 parameters=
 successfully set, (0 to default value)</p><p>[RRC]   num component carrier=
s 1 </p><p>[RRC]   enb_config::RCconfig_RRC() parameter number: 0, total nu=
mber of parameters: 78, ccspath: eNBs.[0].component_carriers.[0] </p><p> </=
p><p>[LIBCONFIG] eNBs.[0].component_carriers.[0]: 78/78 parameters successf=
ully set, (17 to default value)</p><p>phich.resource 0 (ONESIXTH), phich.du=
ration 0 (NORMAL)</p><p>No eMBMS configuration, skipping it</p><p>[LIBCONFI=
G] eNBs.[0].component_carriers.[0].emtc_parameters: 88/88 parameters succes=
sfully set, (88 to default value)</p><p>No eMTC configuration, skipping it<=
/p><p>[LIBCONFIG] eNBs.[0].component_carriers.[0].SLparameters: 39/39 param=
eters successfully set, (39 to default value)</p><p>No SL configuration ski=
pping it</p><p>[LIBCONFIG] eNBs.[0].srb1_parameters: 6/6 parameters success=
fully set, (0 to default value)</p><p>[RRC]   Node type 0 </p><p> [LIBCONFI=
G] (root): 3/3 parameters successfully set, (1 to default value)</p><p>[LIB=
CONFIG] NETWORK_CONTROLLER: 6/6 parameters successfully set, (0 to default =
value)</p><p>[FLEXRAN_AGENT]   FlexRAN Agent for eNB 0 is DISABLED</p><p>[P=
DCP]   PDCP layer has been initialized</p><p>[PDCP]   pdcp init,usegtp </p>=
<p>[PDCP]   ENB pdcp will use tun interface for MBMS</p><p>[NETLINK]Opened =
socket oaitun_enm1 with fd 80</p><p>returnValue 0</p><p>returnValue 0</p><p=
>returnValue 0</p><p>[OIP]   Interface oaitun_enm1 successfuly configured, =
ip address 10.0.2.1, mask 255.255.255.0 broadcast address 10.0.2.255</p><p>=
[ENB_APP]   Creating ENB_APP eNB Task</p><p>[TMR]   Created Posix thread TA=
SK_ENB_APP</p><p>[RRC]   Creating RRC eNB Task</p><p>[TMR]   Created Posix =
thread TASK_RRC_ENB</p><p>[LIBCONFIG] (root): 3/3 parameters successfully s=
et, (1 to default value)</p><p>[TMR]   Created Posix thread TASK_SCTP</p><p=
>[RRC]   Entering main loop of RRC message task</p><p>[LIBCONFIG] eNBs.[0]:=
 20/20 parameters successfully set, (11 to default value)</p><p>[SCTP]   St=
arting SCTP layer</p><p>[LIBCONFIG] eNBs.[0].plmn_list.[0]: 3/3 parameters =
successfully set, (0 to default value)</p><p>[TMR]   Created Posix thread T=
ASK_S1AP</p><p>[S1AP]   Starting S1AP layer</p><p>[TMR]   Created Posix thr=
ead TASK_UDP</p><p>[UDP]   Initializing UDP task interface</p><p>[UDP]   In=
itializing UDP task interface: DONE</p><p>[TMR]   Created Posix thread TASK=
_GTPV1_U</p><p>[LIBCONFIG] eNBs.[0]: 1/1 parameters successfully set, (0 to=
 default value)</p><p>[X2AP]   X2AP is disabled.</p><p>[MAC]   Creating MAC=
 eNB Task</p><p>[GTPV1U]   Initializing GTPU stack 0x5617a3b8ce58</p><p>[TM=
R]   Created Posix thread TASK_MAC_ENB</p><p>[LIBCONFIG] eNBs.[0].component=
_carriers.[0]: 78/78 parameters successfully set, (17 to default value)</p>=
<p>[MAC]   Starting main loop of MAC message task</p><p>[RRC]   [eNB 0] Rec=
eived RRC_CONFIGURATION_REQ : 0x5617a4876a4c</p><p>[RRC]   [FRAME 00000][eN=
B][MOD 00][RNTI 0] Init...</p><p>[RRC]   [FRAME 00000][eNB][MOD 00][RNTI 0]=
 Checking release </p><p>[RRC]   [FRAME 00000][eNB][MOD 00][RNTI 0] Rel14 R=
RC detected, MBMS flag 0</p><p>[RRC]   [eNB 0] Node type 0 </p><p> [RRC]   =
configuration-&gt;schedulingInfoSIB1_BR_r13[CC_id] 0</p><p>[RRC]   Configur=
ing MIB (N_RB_DL 50,phich_Resource 0,phich_Duration 0)</p><p>[LIBCONFIG] eN=
Bs.[0].mme_ip_address.[0]: 5/5 parameters successfully set, (0 to default v=
alue)</p><p>[RRC]   [MIB] systemBandwidth 3, phich_duration 0, phich_resour=
ce 0, sfn 0</p><p>[RRC]   [MIB] schedulingInfoSIB1 0</p><p>[LIBCONFIG] eNBs=
.[0].SCTP: 2/2 parameters successfully set, (0 to default value)</p><p>[LIB=
CONFIG] eNBs.[0].NETWORK_INTERFACES: 11/11 parameters successfully set, (2 =
to default value)</p><p>[GTPV1U]   Configuring GTPu</p><p>[LIBCONFIG] (root=
): 3/3 parameters successfully set, (1 to default value)</p><p>[LIBCONFIG] =
eNBs.[0].NETWORK_INTERFACES: 3/3 parameters successfully set, (0 to default=
 value)</p><p>[RRC]   [eNB 0] Configuration SIB2/3, eMBMS =3D 0</p><p>[GTPV=
1U]   Configuring GTPu address : 10.50.150.226 -&gt; e296320a</p><p>[ENB_AP=
P]   default drx 2</p><p>[GTPV1U]   Tx UDP_INIT IP addr 10.50.150.226 (868)=
</p><p>[RRC]   do_SIB23, size 38 </p><p> [MAC]   Configuring MIB for instan=
ce 0, CCid 0 : (band 7,N_RB_DL 50,Nid_cell 0,p 1,DL freq 2685000000,phich_c=
onfig.resource 0, phich_config.duration 0)</p><p>[MAC]   config_mib() NFAPI=
_CONFIG_REQUEST(num_tlv:16) DL_BW:50 UL_BW:50 Ncp 0,p_eNB 1,earfcn 3400,ban=
d 7,phich_resource 0 phich_duration 0 phich_power_offset 6000 PSS 6000 SSS =
6000 PCI 0 PBCH repetition 0</p><p>[ENB_APP]   [eNB 0] eNB_app_register via=
 S1AP for instance 0</p><p>[MAC]   [CONFIG]SIB2/3 Contents (partial)</p><p>=
[LIBCONFIG] eNBs.[0]: 1/1 parameters successfully set, (1 to default value)=
</p><p>[MAC]   [CONFIG]pusch_config_common.n_SB =3D 1</p><p>[MAC]   [CONFIG=
]pusch_config_common.hoppingMode =3D 0</p><p>[MAC]   [CONFIG]pusch_config_c=
ommon.pusch_HoppingOffset =3D 0</p><p>[MAC]   [CONFIG]pusch_config_common.e=
nable64QAM =3D 0</p><p>[MAC]   [CONFIG]pusch_config_common.groupHoppingEnab=
led =3D 1</p><p>[MAC]   [CONFIG]pusch_config_common.groupAssignmentPUSCH =
=3D 0</p><p>[MAC]   [CONFIG]pusch_config_common.sequenceHoppingEnabled =3D =
0</p><p>[MAC]   [CONFIG]pusch_config_common.cyclicShift  =3D 1</p><p>[UDP] =
  Initializing UDP for local address 10.50.150.226 with port 2152</p><p>[PH=
Y]   Configuring MIB for instance 0, CCid 0 : (band 7,N_RB_DL 50, N_RB_UL 5=
0, Nid_cell 0,eNB_tx_antenna_ports 1,Ncp 0,DL freq 3400,phich_config.resour=
ce 0, phich_config.duration 0)</p><p>[PHY]   Initializing frame parms for N=
_RB_DL 50, Ncp 0, osf 1</p><p>[PHY]   lte_parms.c: Setting N_RB_DL to 50, o=
fdm_symbol_size 1024</p><p>[LIBCONFIG] loader.coding: 2/2 parameters succes=
sfully set, (1 to default value)</p><p>[S1AP]   Registered new eNB[0] and m=
acro eNB id 3584</p><p>[S1AP]   [eNB 0] check the mme registration state</p=
><p>[UDP]   Inserting new descriptor for task 33, sd 81</p><p>[UDP]   Initi=
alizing UDP for local address 10.50.150.226 with port 2152: DONE</p><p>[SCT=
P]   sctp_bindx SCTP_BINDX_ADD_ADDR socket bound to : 10.50.150.226</p><p>[=
SCTP]   Converted ipv4 address 193.166.28.130 to network type</p><p>[SCTP] =
  connectx assoc_id  10 in progress..., used 1 addresses</p><p>[SCTP]   Ins=
erted new descriptor for sd 83 in list, nb elements 1, assoc_id 10</p><p>[S=
CTP]   Found data for descriptor 83</p><p>[SCTP]   Received notification fo=
r sd 83, type 32769</p><p>[SCTP]   Client association changed: 0</p><p>[SCT=
P]   ----------------------</p><p>[SCTP]   Peer addresses:</p><p>[SCTP]    =
   - [193.166.28.130]</p><p>[SCTP]   ----------------------</p><p>[SCTP]   =
----------------------</p><p>[SCTP]   SCTP Status:</p><p>[SCTP]   assoc id =
.....: 10</p><p>[SCTP]   state ........: 4</p><p>[SCTP]   instrms ......: 2=
</p><p>[SCTP]   outstrms .....: 2</p><p>[SCTP]   fragmentation : 1452</p><p=
>[SCTP]   pending data .: 0</p><p>[SCTP]   unack data ...: 0</p><p>[SCTP]  =
 rwnd .........: 106496</p><p>[SCTP]   peer info     :</p><p>[SCTP]       s=
tate ....: 2</p><p>[SCTP]       cwnd .....: 4380</p><p>[SCTP]       srtt ..=
...: 0</p><p>[SCTP]       rto ......: 3000</p><p>[SCTP]       mtu ......: 1=
500</p><p>[SCTP]   ----------------------</p><p>[SCTP]   Comm up notified f=
or sd 83, assigned assoc_id 10</p><p>[SCTP]   Found data for descriptor 83<=
/p><p>[SCTP]   Received notification for sd 83, type 32776</p><p>[S1AP]   3=
584 -&gt; 00e000</p><p>[SCTP]   Successfully sent 59 bytes on stream 0 for =
assoc_id 10</p><p>[SCTP]   Found data for descriptor 83</p><p>[SCTP]   Rece=
ived notification for sd 83, type 32777</p><p>[SCTP]   Found data for descr=
iptor 83</p><p>[SCTP]   [10][83] Msg of length 45 received from port 36412,=
 on stream 0, PPID 18</p><p>[S1AP]   servedGUMMEIs.list.count 1</p><p>[S1AP=
]   servedPLMNs.list.count 1</p><p>[ENB_APP]   [eNB 0] Received S1AP_REGIST=
ER_ENB_CNF: associated MME 1</p><p>[LOADER] library libcoding.so successful=
ly loaded</p><p>[PHY]   prach_config_common.rootSequenceIndex =3D 0</p><p>[=
PHY]   prach_config_common.prach_ConfigInfo.prach_ConfigIndex =3D 0</p><p>[=
PHY]   prach_config_common.prach_ConfigInfo.highSpeedFlag =3D 0</p><p>[PHY]=
   prach_config_common.prach_ConfigInfo.zeroCorrelationZoneConfig =3D 1</p>=
<p>[PHY]   prach_config_common.prach_ConfigInfo.prach_FreqOffset =3D 2</p><=
p>[PHY]   pusch_config_common.n_SB =3D 1</p><p>[PHY]   pusch_config_common.=
hoppingMode =3D 0</p><p>[PHY]   pusch_config_common.pusch_HoppingOffset =3D=
 0</p><p>[PHY]   pusch_config_common.enable64QAM =3D 0</p><p>[PHY]   pusch_=
config_common.ul_ReferenceSignalsPUSCH.groupHoppingEnabled =3D 1</p><p>[PHY=
]   pusch_config_common.ul_ReferenceSignalsPUSCH.groupAssignmentPUSCH =3D 0=
</p><p>[PHY]   pusch_config_common.ul_ReferenceSignalsPUSCH.sequenceHopping=
Enabled =3D 0</p><p>[PHY]   pusch_config_common.ul_ReferenceSignalsPUSCH.cy=
clicShift =3D 2</p><p>[PHY]   eNB 0/0 configured</p><p>[RRC]   [eNB] handov=
er active state is 0 </p><p>[RRC]   [eNB] eMBMS active state is 0 </p><p>[R=
RC]   [FRAME 00000][eNB][MOD 00][RNTI 0] ENB:OPENAIR RRC IN....</p><p>[ENB_=
APP]   START MAIN THREADS</p><p>RC.nb_L1_inst:1</p><p>Initializing eNB thre=
ads single_thread_flag:0 wait_for_sync:0</p><p>[PHY]   [lte-softmodem.c] eN=
B structure about to allocated RC.nb_L1_inst:1 RC.nb_L1_CC[0]:1</p><p>[PHY]=
   [lte-softmodem.c] eNB structure RC.eNB allocated</p><p>[PHY]   Initializ=
ing eNB 0 CC_id 0 single_thread_flag:0</p><p>[PHY]   Initializing eNB 0 CC_=
id 0</p><p>[PHY]   Registering with MAC interface module</p><p>[PHY]   Sett=
ing indication lists</p><p>[PHY]   [lte-softmodem.c] eNB structure allocate=
d</p><p>wait_eNBs()</p><p>Waiting for eNB L1 instances to all get configure=
d ... sleeping 50ms (nb_L1_inst 1)</p><p>RC.nb_L1_CC[0]:1</p><p>eNB L1 are =
configured</p><p>About to Init RU threads RC.nb_RU:1</p><p>Initializing RU =
threads</p><p>configuring RU from file</p><p>[LIBCONFIG] RUs.[0]: 24/24 par=
ameters successfully set, (15 to default value)</p><p>Set RU mask to 1</p><=
p>Creating RC.ru[0]:0x5617a48779e0</p><p>Setting function for RU 0 to eNode=
B_3GPP</p><p>[PHY]   number of L1 instances 1, number of RU 1, number of CP=
U cores 4</p><p>[PHY]   DJP - delete code above this /home/dipu/openairinte=
rface5g-develop/openairinterface5g/targets/RT/USER/lte-ru.c:2650</p><p>[PHY=
]   Copying frame parms from eNB 0 to ru 0</p><p>[PHY]   Initializing RRU d=
escriptor 0 : (local RF,synch_to_ext_device,0)</p><p>configuring ru_id 0 (s=
tart_rf 0x5617a2ba6080)</p><p>[PHY]   Starting ru_thread 0, is_slave 0, sen=
d_dmrs 0</p><p>[PHY]   Initializing RU proc 0 (eNodeB_3GPP,synch_to_ext_dev=
ice),</p><p>[PHY]   init_RU_proc() DJP - added creation of pthread_prach</p=
><p>[HW]   [SCHED][eNB] ru_thread started on CPU 0, sched_policy =3D SCHED_=
FIFO , priority =3D 99, CPU Affinity=3D CPU_0 CPU_1 CPU_2 CPU_3 </p><p>chan=
nel 0, Setting tx_gain offset 0.000000, rx_gain offset 125.000000, tx_freq =
2685000000.000000, rx_freq 2565000000.000000</p><p>[PHY]   Initializing fra=
me parms for N_RB_DL 50, Ncp 0, osf 1</p><p>[PHY]   lte_parms.c: Setting N_=
RB_DL to 50, ofdm_symbol_size 1024</p><p>[HW]   [SCHED][eNB] ru_thread_prac=
h started on CPU 3, sched_policy =3D SCHED_FIFO , priority =3D 99, CPU Affi=
nity=3D CPU_0 CPU_1 CPU_2 CPU_3 </p><p>[PHY]   Initializing RU signal buffe=
rs (if_south local RF) nb_tx 1</p><p>[PHY]   thread ru created id=3D28867</=
p><p>[PHY]   Starting RU 0 (eNodeB_3GPP,synch_to_ext_device),</p><p>waiting=
 for sync (ru_thread,-1/0x5617a3576248,0x5617a3cd5c80,0x5617a3b8b880)</p><p=
>[PHY]   ru_thread_prach() RU configured - RACH processing thread running</=
p><p>[PHY]   [INIT] common.txdata[0] =3D 0x7fa786c30040 (614400 bytes)</p><=
p>[PHY]   nb_tx 1</p><p>[PHY]   rxdata_7_5kHz[0] 0x7fa786bf3040 for RU 0</p=
><p>[PHY]   [INIT] common.txdata_BF=3D 0x5617a48c9d00 (8 bytes)</p><p>[PHY]=
   txdataF_BF[0] 0x5617a48c9d80 for RU 0</p><p>[PHY]   rxdataF[0] 0x5617a48=
d7e80 for RU 0</p><p>[LIBCONFIG] loader.oai_device: 2/2 parameters successf=
ully set, (1 to default value)</p><p>[LOADER] library liboai_device.so succ=
essfully loaded</p><p>[PHY]   Checking for USRPs : UHD 4.2.0.0-0ubuntu1~bio=
nic1 (4.2.0)</p><p>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=
 UHD_4.2.0.0-0ubuntu1~bionic1</p><p>[HW]   Found USRP b200</p><p>Found USRP=
 b200</p><p>[INFO] [B200] Detected Device: B210</p><p>[INFO] [B200] Operati=
ng over USB 3.</p><p>[INFO] [B200] Initialize CODEC control...</p><p>[INFO]=
 [B200] Initialize Radio control...</p><p>[INFO] [B200] Performing register=
 loopback test... </p><p>[INFO] [B200] Register loopback test passed</p><p>=
[INFO] [B200] Performing register loopback test... </p><p>[INFO] [B200] Reg=
ister loopback test passed</p><p>[INFO] [B200] Asking for clock rate 30.720=
000 MHz... </p><p>[INFO] [B200] Actually got clock rate 30.720000 MHz.</p><=
p>Error: signal 11:</p><p>./lte-softmodem.Rel14(signal_handler+0x7c)[0x5617=
a2bc639c]</p><p>/lib/x86_64-linux-gnu/libc.so.6(+0x3ef10)[0x7fa7846ddf10]</=
p><p>/usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0(+0x33dcf2)[0x7fa7796f0cf2]</=
p><p>/usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0(+0x3652ff)[0x7fa7797182ff]</=
p><p>/home/dipu/openairinterface5g-develop/openairinterface5g/cmake_targets=
/lte_build_oai/build/liboai_device.so(device_init+0x9d2)[0x7fa77a29fae2]</p=
><p>./lte-softmodem.Rel14(load_lib+0x6f)[0x5617a2bcac6f]</p><p>./lte-softmo=
dem.Rel14(openair0_device_load+0x24)[0x5617a2bcaeb4]</p><p>./lte-softmodem.=
Rel14(init_RU_proc+0x543)[0x5617a2bb88f3]</p><p>./lte-softmodem.Rel14(init_=
RU+0x3ec)[0x5617a2bbcd1c]</p><p>./lte-softmodem.Rel14(main+0x5cb)[0x5617a2b=
95e9b]</p>

--b1_1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I--

--===============1938103666862574904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1938103666862574904==--
