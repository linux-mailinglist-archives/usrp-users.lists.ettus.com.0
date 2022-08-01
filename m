Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5C1586EFC
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 18:46:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D92E1381089
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 12:46:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659372402; bh=6lUFl6Mq7ZA41z281Ou7fbcxfgjWI1XjIOtx1/OUbgM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LOC5Xub/9TyLeCskorovHSgyYlWOU2TTgfTAxJIB1UArtscQJWc86/Gylun/MAdQq
	 XepRQvBTZnuMooT52pcrLUA43BnufwzZncc5UdRkZlRtOqq0XXke1iXRCkHrWt662k
	 K2weeAQ7iADLf/QAECItS3/rE+G16De52rf6qIw7Yq4zY507N53W5mog6Za4imNZ0P
	 aqtneI5GxQq+3RaOE30yIkf+bBHvpKARhxX9agHlat91oQuzFxWUkpZYiOt6l2Itka
	 uR4askPMU+Bt0ldznMi13gBmyn3V+nvBa/CYsD120RZlrsjIYhLAuQKmXdEUMzuqB2
	 NUanK8sqKo7lA==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 18CEB38102E
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 12:44:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gt/Bj1kk";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id n2so8801052qkk.8
        for <usrp-users@lists.ettus.com>; Mon, 01 Aug 2022 09:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=b8vwpQJx8DXm+n4hmhXRBGIOf+zRPQpoHbD4bfvFIv4=;
        b=gt/Bj1kkCO/pGtOi7fz9IRcq7+724Ms1Y3ti2RpFmJJMIpTdQ++XMFjKF44UnocZBl
         ig8YPrapGqqD0gEDL2ySJ7n+L4SUmq5x1VxchLAGAgidjvuuKgGgeXBXwieJPEZvZfDa
         gqBxeSOeYGHEdDpXqniRwC1hWFkk4UZsroSAnPlsN9wPvBsk4bLhP7V9klq3O55Ivx60
         btGLtZnJezGo/ckv4E575n1zVaNS/43JZd69VfyHN3BzEenrGKJeU3UE+UA/acNX5Y3x
         2UD07+YceuMEwAbB+JnCtbCtRaRfE9viG1dvvAIBUq/ThZoVuae5L7HPsn83HV0O8G7c
         5vtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=b8vwpQJx8DXm+n4hmhXRBGIOf+zRPQpoHbD4bfvFIv4=;
        b=NVjWq6egzt+yeHIJSQE5GwgsaB2B4gIDXBKUVcjNIcuOCN11Zh62Ulg8Ml1CXY1y29
         jQDMeESQFSPJpFmDSf3QslwAyNtrk7WdAChIQeonaICxP+icReTFNh/+8RB7x9QNza25
         3IMWDpbrXfrTCnlj+HQ9dVhkuom7XWaPnJ/IRz93CtRjORxlRSrgUuJkic2CtWAlnpUN
         G7kCrSXSItUIOjg9ZaAtT8KpjIunvyqD2n21BE74635oFsZwSh/B4YZ5XcnvyodsBv47
         y8YBow5ZKcRvpWDeZgaerrqdGHxvWNmAghbhgn9Ixw26Ae3nuT3oXkB8qHEkXHh3kcwH
         ngDg==
X-Gm-Message-State: AJIora+hX0sK0J/Av5+E8sNFYNbeqCpISCK/KuiGasQKbuNKQLPS4DWs
	te3r/fTuezErlBy1BAu/5bxpQTJUYHM=
X-Google-Smtp-Source: AGRyM1trWKf0nQQX8kukP5L85CyyXTFTOV7isBdpdkcVk0qGrWkWxVKodxpUPeCkm/HLOjPmfvUTzQ==
X-Received: by 2002:a37:2dc7:0:b0:6b8:62a6:ba34 with SMTP id t190-20020a372dc7000000b006b862a6ba34mr11126439qkh.760.1659372277798;
        Mon, 01 Aug 2022 09:44:37 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bi11-20020a05620a318b00b006b893d135besm4749904qkb.108.2022.08.01.09.44.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 09:44:37 -0700 (PDT)
Message-ID: <a8287173-e6cc-3923-7dcb-6954ff230b59@gmail.com>
Date: Mon, 1 Aug 2022 12:44:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1IWwta5tsvl95n2e7Zl7JxqiSMSLhxciTFZtRU4o9I@lists.ettus.com>
Message-ID-Hash: LENU7VPOGGCQ2XK3ZTUFM3XOJOB57F3V
X-Message-ID-Hash: LENU7VPOGGCQ2XK3ZTUFM3XOJOB57F3V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I am trying to deploy eNb using USRP B2100. But, when I am going to compile and run eNb and I notice error( Error signal 11). I would like to mention that I successfully installed UHD and GNU and dependency driver. I did the work following the manual step by step.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LENU7VPOGGCQ2XK3ZTUFM3XOJOB57F3V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-08-01 12:40, Md Moklesur Rahman via USRP-users wrote:
>
> dipu@dipu-HP-EliteBook-840-G4:~/openairinterface5g-develop/openairinterface5g/targets/bin$ 
> sudo -E ./lte-softmodem.Rel14 -O 
> ../../ci-scripts/conf_files/enb.band7.tm1.50PRB.usrpb210.conf -d
>
> [CONFIG] get parameters from libconfig 
> ../../ci-scripts/conf_files/enb.band7.tm1.50PRB.usrpb210.conf , debug 
> flags: 0x00000000
>
> [CONFIG] function config_libconfig_init returned 0
>
> [CONFIG] config module libconfig loaded
>
> [LIBCONFIG] config: 1/1 parameters successfully set, (1 to default value)
>
> # /dev/cpu_dma_latency set to 0us
>
> [LIBCONFIG] log_config: 3/3 parameters successfully set, (1 to default 
> value)
>
> [LIBCONFIG] log_config: 46/46 parameters successfully set, (40 to 
> default value)
>
> [LIBCONFIG] log_config: 46/46 parameters successfully set, (46 to 
> default value)
>
> [LIBCONFIG] log_config: 15/15 parameters successfully set, (15 to 
> default value)
>
> [LIBCONFIG] log_config: 15/15 parameters successfully set, (15 to 
> default value)
>
> log init done
>
> Reading in command-line options
>
> [LIBCONFIG] (root): 21/21 parameters successfully set, (18 to default 
> value)
>
> [LIBCONFIG] (root): 5/5 parameters successfully set, (4 to default value)
>
> Getting ENBSParams
>
> [LIBCONFIG] (root): 3/3 parameters successfully set, (1 to default value)
>
> [LIBCONFIG] THREAD_STRUCT.[0]: 2/2 parameters successfully set, (0 to 
> default value)
>
> [LIBCONFIG] THREAD_STRUCT.[0]: 2/2 parameters successfully set, (0 to 
> default value)
>
> Configuration: nb_rrc_inst 1, nb_L1_inst 1, nb_ru 1
>
> [LIBCONFIG] loader: 2/2 parameters successfully set, (2 to default value)
>
> [LIBCONFIG] loader.NB_IoT: 2/2 parameters successfully set, (1 to 
> default value)
>
> [LOADER] library libNB_IoT.so is not loaded: libNB_IoT.so: cannot open 
> shared object file: No such file or directory
>
> nb_nbiot_rrc_inst 0, nb_nbiot_L1_inst 0, nb_nbiot_macrlc_inst 0
>
> [LIBCONFIG] TTracer: 4/4 parameters successfully set, (4 to default value)
>
> configuring for RAU/RRU
>
> CPU Freq is 2.712165
>
> ITTI init, useMME: 1
>
> [TMR] Starting itti queue: TASK_UNKNOWN as task 0
>
> [TMR] Starting itti queue: TASK_TIMER as task 1
>
> [TMR] Starting itti queue: TASK_L2L1 as task 2
>
> [TMR] Starting itti queue: TASK_BM as task 3
>
> [TMR] Starting itti queue: TASK_PHY_ENB as task 4
>
> [TMR] Starting itti queue: TASK_MAC_ENB as task 5
>
> [TMR] Starting itti queue: TASK_RLC_ENB as task 6
>
> [TMR] Starting itti queue: TASK_RRC_ENB_NB_IoT as task 7
>
> [TMR] Starting itti queue: TASK_PDCP_ENB as task 8
>
> [TMR] Starting itti queue: TASK_DATA_FORWARDING as task 9
>
> [TMR] Starting itti queue: TASK_END_MARKER as task 10
>
> [TMR] Starting itti queue: TASK_RRC_ENB as task 11
>
> [TMR] Starting itti queue: TASK_RAL_ENB as task 12
>
> [TMR] Starting itti queue: TASK_S1AP as task 13
>
> [TMR] Starting itti queue: TASK_X2AP as task 14
>
> [TMR] Starting itti queue: TASK_M2AP_ENB as task 15
>
> [TMR] Starting itti queue: TASK_M2AP_MCE as task 16
>
> [TMR] Starting itti queue: TASK_M3AP as task 17
>
> [TMR] Starting itti queue: TASK_M3AP_MME as task 18
>
> [TMR] Starting itti queue: TASK_M3AP_MCE as task 19
>
> [TMR] Starting itti queue: TASK_SCTP as task 20
>
> [TMR] Starting itti queue: TASK_ENB_APP as task 21
>
> [TMR] Starting itti queue: TASK_MCE_APP as task 22
>
> [TMR] Starting itti queue: TASK_MME_APP as task 23
>
> [TMR] Starting itti queue: TASK_FLEXRAN_AGENT as task 24
>
> [TMR] Starting itti queue: TASK_PHY_UE as task 25
>
> [TMR] Starting itti queue: TASK_MAC_UE as task 26
>
> [TMR] Starting itti queue: TASK_RLC_UE as task 27
>
> [TMR] Starting itti queue: TASK_PDCP_UE as task 28
>
> [TMR] Starting itti queue: TASK_RRC_UE as task 29
>
> [TMR] Starting itti queue: TASK_NAS_UE as task 30
>
> [TMR] Starting itti queue: TASK_RAL_UE as task 31
>
> [TMR] Starting itti queue: TASK_MSC as task 32
>
> [TMR] Starting itti queue: TASK_GTPV1_U as task 33
>
> [TMR] Starting itti queue: TASK_UDP as task 34
>
> [TMR] Starting itti queue: TASK_CU_F1 as task 35
>
> [TMR] Starting itti queue: TASK_DU_F1 as task 36
>
> [LIBCONFIG] opt: 3/3 parameters successfully set, (3 to default value)
>
> [OPT] OPT disabled
>
> reported resolution = 1 ns
>
> [HW] Version: Branch: master Abrev. Hash: 9a06ceba46 Date: Wed Sep 9 
> 16:15:50 2020 +0200
>
> Runtime table
>
> [PHY] RC.eNB = 0x5617a4843460
>
> [LIBCONFIG] L1s.[0]: 24/24 parameters successfully set, (22 to default 
> value)
>
> [PHY] RC.eNB[0] = 0x5617a4843510
>
> [PHY] RC.eNB[0][0] = 0x7fa783aed010
>
> [ENB_APP] Initializing northbound interface for L1
>
> [PHY] l1_north_init_eNB() RC.nb_L1_inst:1
>
> [PHY] l1_north_init_eNB() RC.nb_L1_CC[0]:1
>
> [PHY] l1_north_init_eNB() RC.eNB[0][0] installing callbacks
>
> [PHY] read_config_and_init() RC.nb_L1_inst: 1
>
> [LIBCONFIG] MACRLCs.[0]: 21/21 parameters successfully set, (15 to 
> default value)
>
> [LIBCONFIG] MACRLCs.[0]: 21/21 parameters successfully set, (15 to 
> default value)
>
> [MAC] [MAIN] Init function start:nb_macrlc_inst=1
>
> [PDCP] PDCP layer has been initialized
>
> Configuring local RRC for MACRLC
>
> [ENB_APP] sched mode = default 0 [default]
>
> [MAC] read_config_and_init() RC.nb_macrlc_inst: 1
>
> [PHY] l1_north_init_eNB() RC.nb_L1_inst:1
>
> [PHY] l1_north_init_eNB() RC.nb_L1_CC[0]:1
>
> [PHY] l1_north_init_eNB() RC.eNB[0][0] installing callbacks
>
> [LIBCONFIG] (root): 3/3 parameters successfully set, (1 to default value)
>
> [LIBCONFIG] eNBs.[0]: 20/20 parameters successfully set, (11 to 
> default value)
>
> [RRC] Instance 0: Southbound Transport local_mac
>
> [RRC] Setting node_type to ngran_eNB
>
> [LIBCONFIG] eNBs.[0].plmn_list.[0]: 3/3 parameters successfully set, 
> (0 to default value)
>
> [RRC] num component carriers 1
>
> [RRC] enb_config::RCconfig_RRC() parameter number: 0, total number of 
> parameters: 78, ccspath: eNBs.[0].component_carriers.[0]
>
> [LIBCONFIG] eNBs.[0].component_carriers.[0]: 78/78 parameters 
> successfully set, (17 to default value)
>
> phich.resource 0 (ONESIXTH), phich.duration 0 (NORMAL)
>
> No eMBMS configuration, skipping it
>
> [LIBCONFIG] eNBs.[0].component_carriers.[0].emtc_parameters: 88/88 
> parameters successfully set, (88 to default value)
>
> No eMTC configuration, skipping it
>
> [LIBCONFIG] eNBs.[0].component_carriers.[0].SLparameters: 39/39 
> parameters successfully set, (39 to default value)
>
> No SL configuration skipping it
>
> [LIBCONFIG] eNBs.[0].srb1_parameters: 6/6 parameters successfully set, 
> (0 to default value)
>
> [RRC] Node type 0
>
> [LIBCONFIG] (root): 3/3 parameters successfully set, (1 to default value)
>
> [LIBCONFIG] NETWORK_CONTROLLER: 6/6 parameters successfully set, (0 to 
> default value)
>
> [FLEXRAN_AGENT] FlexRAN Agent for eNB 0 is DISABLED
>
> [PDCP] PDCP layer has been initialized
>
> [PDCP] pdcp init,usegtp
>
> [PDCP] ENB pdcp will use tun interface for MBMS
>
> [NETLINK]Opened socket oaitun_enm1 with fd 80
>
> returnValue 0
>
> returnValue 0
>
> returnValue 0
>
> [OIP] Interface oaitun_enm1 successfuly configured, ip address 
> 10.0.2.1, mask 255.255.255.0 broadcast address 10.0.2.255
>
> [ENB_APP] Creating ENB_APP eNB Task
>
> [TMR] Created Posix thread TASK_ENB_APP
>
> [RRC] Creating RRC eNB Task
>
> [TMR] Created Posix thread TASK_RRC_ENB
>
> [LIBCONFIG] (root): 3/3 parameters successfully set, (1 to default value)
>
> [TMR] Created Posix thread TASK_SCTP
>
> [RRC] Entering main loop of RRC message task
>
> [LIBCONFIG] eNBs.[0]: 20/20 parameters successfully set, (11 to 
> default value)
>
> [SCTP] Starting SCTP layer
>
> [LIBCONFIG] eNBs.[0].plmn_list.[0]: 3/3 parameters successfully set, 
> (0 to default value)
>
> [TMR] Created Posix thread TASK_S1AP
>
> [S1AP] Starting S1AP layer
>
> [TMR] Created Posix thread TASK_UDP
>
> [UDP] Initializing UDP task interface
>
> [UDP] Initializing UDP task interface: DONE
>
> [TMR] Created Posix thread TASK_GTPV1_U
>
> [LIBCONFIG] eNBs.[0]: 1/1 parameters successfully set, (0 to default 
> value)
>
> [X2AP] X2AP is disabled.
>
> [MAC] Creating MAC eNB Task
>
> [GTPV1U] Initializing GTPU stack 0x5617a3b8ce58
>
> [TMR] Created Posix thread TASK_MAC_ENB
>
> [LIBCONFIG] eNBs.[0].component_carriers.[0]: 78/78 parameters 
> successfully set, (17 to default value)
>
> [MAC] Starting main loop of MAC message task
>
> [RRC] [eNB 0] Received RRC_CONFIGURATION_REQ : 0x5617a4876a4c
>
> [RRC] [FRAME 00000][eNB][MOD 00][RNTI 0] Init...
>
> [RRC] [FRAME 00000][eNB][MOD 00][RNTI 0] Checking release
>
> [RRC] [FRAME 00000][eNB][MOD 00][RNTI 0] Rel14 RRC detected, MBMS flag 0
>
> [RRC] [eNB 0] Node type 0
>
> [RRC] configuration->schedulingInfoSIB1_BR_r13[CC_id] 0
>
> [RRC] Configuring MIB (N_RB_DL 50,phich_Resource 0,phich_Duration 0)
>
> [LIBCONFIG] eNBs.[0].mme_ip_address.[0]: 5/5 parameters successfully 
> set, (0 to default value)
>
> [RRC] [MIB] systemBandwidth 3, phich_duration 0, phich_resource 0, sfn 0
>
> [RRC] [MIB] schedulingInfoSIB1 0
>
> [LIBCONFIG] eNBs.[0].SCTP: 2/2 parameters successfully set, (0 to 
> default value)
>
> [LIBCONFIG] eNBs.[0].NETWORK_INTERFACES: 11/11 parameters successfully 
> set, (2 to default value)
>
> [GTPV1U] Configuring GTPu
>
> [LIBCONFIG] (root): 3/3 parameters successfully set, (1 to default value)
>
> [LIBCONFIG] eNBs.[0].NETWORK_INTERFACES: 3/3 parameters successfully 
> set, (0 to default value)
>
> [RRC] [eNB 0] Configuration SIB2/3, eMBMS = 0
>
> [GTPV1U] Configuring GTPu address : 10.50.150.226 -> e296320a
>
> [ENB_APP] default drx 2
>
> [GTPV1U] Tx UDP_INIT IP addr 10.50.150.226 (868)
>
> [RRC] do_SIB23, size 38
>
> [MAC] Configuring MIB for instance 0, CCid 0 : (band 7,N_RB_DL 
> 50,Nid_cell 0,p 1,DL freq 2685000000,phich_config.resource 0, 
> phich_config.duration 0)
>
> [MAC] config_mib() NFAPI_CONFIG_REQUEST(num_tlv:16) DL_BW:50 UL_BW:50 
> Ncp 0,p_eNB 1,earfcn 3400,band 7,phich_resource 0 phich_duration 0 
> phich_power_offset 6000 PSS 6000 SSS 6000 PCI 0 PBCH repetition 0
>
> [ENB_APP] [eNB 0] eNB_app_register via S1AP for instance 0
>
> [MAC] [CONFIG]SIB2/3 Contents (partial)
>
> [LIBCONFIG] eNBs.[0]: 1/1 parameters successfully set, (1 to default 
> value)
>
> [MAC] [CONFIG]pusch_config_common.n_SB = 1
>
> [MAC] [CONFIG]pusch_config_common.hoppingMode = 0
>
> [MAC] [CONFIG]pusch_config_common.pusch_HoppingOffset = 0
>
> [MAC] [CONFIG]pusch_config_common.enable64QAM = 0
>
> [MAC] [CONFIG]pusch_config_common.groupHoppingEnabled = 1
>
> [MAC] [CONFIG]pusch_config_common.groupAssignmentPUSCH = 0
>
> [MAC] [CONFIG]pusch_config_common.sequenceHoppingEnabled = 0
>
> [MAC] [CONFIG]pusch_config_common.cyclicShift = 1
>
> [UDP] Initializing UDP for local address 10.50.150.226 with port 2152
>
> [PHY] Configuring MIB for instance 0, CCid 0 : (band 7,N_RB_DL 50, 
> N_RB_UL 50, Nid_cell 0,eNB_tx_antenna_ports 1,Ncp 0,DL freq 
> 3400,phich_config.resource 0, phich_config.duration 0)
>
> [PHY] Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1
>
> [PHY] lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024
>
> [LIBCONFIG] loader.coding: 2/2 parameters successfully set, (1 to 
> default value)
>
> [S1AP] Registered new eNB[0] and macro eNB id 3584
>
> [S1AP] [eNB 0] check the mme registration state
>
> [UDP] Inserting new descriptor for task 33, sd 81
>
> [UDP] Initializing UDP for local address 10.50.150.226 with port 2152: 
> DONE
>
> [SCTP] sctp_bindx SCTP_BINDX_ADD_ADDR socket bound to : 10.50.150.226
>
> [SCTP] Converted ipv4 address 193.166.28.130 to network type
>
> [SCTP] connectx assoc_id 10 in progress..., used 1 addresses
>
> [SCTP] Inserted new descriptor for sd 83 in list, nb elements 1, 
> assoc_id 10
>
> [SCTP] Found data for descriptor 83
>
> [SCTP] Received notification for sd 83, type 32769
>
> [SCTP] Client association changed: 0
>
> [SCTP] ----------------------
>
> [SCTP] Peer addresses:
>
> [SCTP] - [193.166.28.130]
>
> [SCTP] ----------------------
>
> [SCTP] ----------------------
>
> [SCTP] SCTP Status:
>
> [SCTP] assoc id .....: 10
>
> [SCTP] state ........: 4
>
> [SCTP] instrms ......: 2
>
> [SCTP] outstrms .....: 2
>
> [SCTP] fragmentation : 1452
>
> [SCTP] pending data .: 0
>
> [SCTP] unack data ...: 0
>
> [SCTP] rwnd .........: 106496
>
> [SCTP] peer info :
>
> [SCTP] state ....: 2
>
> [SCTP] cwnd .....: 4380
>
> [SCTP] srtt .....: 0
>
> [SCTP] rto ......: 3000
>
> [SCTP] mtu ......: 1500
>
> [SCTP] ----------------------
>
> [SCTP] Comm up notified for sd 83, assigned assoc_id 10
>
> [SCTP] Found data for descriptor 83
>
> [SCTP] Received notification for sd 83, type 32776
>
> [S1AP] 3584 -> 00e000
>
> [SCTP] Successfully sent 59 bytes on stream 0 for assoc_id 10
>
> [SCTP] Found data for descriptor 83
>
> [SCTP] Received notification for sd 83, type 32777
>
> [SCTP] Found data for descriptor 83
>
> [SCTP] [10][83] Msg of length 45 received from port 36412, on stream 
> 0, PPID 18
>
> [S1AP] servedGUMMEIs.list.count 1
>
> [S1AP] servedPLMNs.list.count 1
>
> [ENB_APP] [eNB 0] Received S1AP_REGISTER_ENB_CNF: associated MME 1
>
> [LOADER] library libcoding.so successfully loaded
>
> [PHY] prach_config_common.rootSequenceIndex = 0
>
> [PHY] prach_config_common.prach_ConfigInfo.prach_ConfigIndex = 0
>
> [PHY] prach_config_common.prach_ConfigInfo.highSpeedFlag = 0
>
> [PHY] prach_config_common.prach_ConfigInfo.zeroCorrelationZoneConfig = 1
>
> [PHY] prach_config_common.prach_ConfigInfo.prach_FreqOffset = 2
>
> [PHY] pusch_config_common.n_SB = 1
>
> [PHY] pusch_config_common.hoppingMode = 0
>
> [PHY] pusch_config_common.pusch_HoppingOffset = 0
>
> [PHY] pusch_config_common.enable64QAM = 0
>
> [PHY] pusch_config_common.ul_ReferenceSignalsPUSCH.groupHoppingEnabled = 1
>
> [PHY] 
> pusch_config_common.ul_ReferenceSignalsPUSCH.groupAssignmentPUSCH = 0
>
> [PHY] 
> pusch_config_common.ul_ReferenceSignalsPUSCH.sequenceHoppingEnabled = 0
>
> [PHY] pusch_config_common.ul_ReferenceSignalsPUSCH.cyclicShift = 2
>
> [PHY] eNB 0/0 configured
>
> [RRC] [eNB] handover active state is 0
>
> [RRC] [eNB] eMBMS active state is 0
>
> [RRC] [FRAME 00000][eNB][MOD 00][RNTI 0] ENB:OPENAIR RRC IN....
>
> [ENB_APP] START MAIN THREADS
>
> RC.nb_L1_inst:1
>
> Initializing eNB threads single_thread_flag:0 wait_for_sync:0
>
> [PHY] [lte-softmodem.c] eNB structure about to allocated 
> RC.nb_L1_inst:1 RC.nb_L1_CC[0]:1
>
> [PHY] [lte-softmodem.c] eNB structure RC.eNB allocated
>
> [PHY] Initializing eNB 0 CC_id 0 single_thread_flag:0
>
> [PHY] Initializing eNB 0 CC_id 0
>
> [PHY] Registering with MAC interface module
>
> [PHY] Setting indication lists
>
> [PHY] [lte-softmodem.c] eNB structure allocated
>
> wait_eNBs()
>
> Waiting for eNB L1 instances to all get configured ... sleeping 50ms 
> (nb_L1_inst 1)
>
> RC.nb_L1_CC[0]:1
>
> eNB L1 are configured
>
> About to Init RU threads RC.nb_RU:1
>
> Initializing RU threads
>
> configuring RU from file
>
> [LIBCONFIG] RUs.[0]: 24/24 parameters successfully set, (15 to default 
> value)
>
> Set RU mask to 1
>
> Creating RC.ru[0]:0x5617a48779e0
>
> Setting function for RU 0 to eNodeB_3GPP
>
> [PHY] number of L1 instances 1, number of RU 1, number of CPU cores 4
>
> [PHY] DJP - delete code above this 
> /home/dipu/openairinterface5g-develop/openairinterface5g/targets/RT/USER/lte-ru.c:2650
>
> [PHY] Copying frame parms from eNB 0 to ru 0
>
> [PHY] Initializing RRU descriptor 0 : (local RF,synch_to_ext_device,0)
>
> configuring ru_id 0 (start_rf 0x5617a2ba6080)
>
> [PHY] Starting ru_thread 0, is_slave 0, send_dmrs 0
>
> [PHY] Initializing RU proc 0 (eNodeB_3GPP,synch_to_ext_device),
>
> [PHY] init_RU_proc() DJP - added creation of pthread_prach
>
> [HW] [SCHED][eNB] ru_thread started on CPU 0, sched_policy = 
> SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3
>
> channel 0, Setting tx_gain offset 0.000000, rx_gain offset 125.000000, 
> tx_freq 2685000000.000000, rx_freq 2565000000.000000
>
> [PHY] Initializing frame parms for N_RB_DL 50, Ncp 0, osf 1
>
> [PHY] lte_parms.c: Setting N_RB_DL to 50, ofdm_symbol_size 1024
>
> [HW] [SCHED][eNB] ru_thread_prach started on CPU 3, sched_policy = 
> SCHED_FIFO , priority = 99, CPU Affinity= CPU_0 CPU_1 CPU_2 CPU_3
>
> [PHY] Initializing RU signal buffers (if_south local RF) nb_tx 1
>
> [PHY] thread ru created id=28867
>
> [PHY] Starting RU 0 (eNodeB_3GPP,synch_to_ext_device),
>
> waiting for sync 
> (ru_thread,-1/0x5617a3576248,0x5617a3cd5c80,0x5617a3b8b880)
>
> [PHY] ru_thread_prach() RU configured - RACH processing thread running
>
> [PHY] [INIT] common.txdata[0] = 0x7fa786c30040 (614400 bytes)
>
> [PHY] nb_tx 1
>
> [PHY] rxdata_7_5kHz[0] 0x7fa786bf3040 for RU 0
>
> [PHY] [INIT] common.txdata_BF= 0x5617a48c9d00 (8 bytes)
>
> [PHY] txdataF_BF[0] 0x5617a48c9d80 for RU 0
>
> [PHY] rxdataF[0] 0x5617a48d7e80 for RU 0
>
> [LIBCONFIG] loader.oai_device: 2/2 parameters successfully set, (1 to 
> default value)
>
> [LOADER] library liboai_device.so successfully loaded
>
> [PHY] Checking for USRPs : UHD 4.2.0.0-0ubuntu1~bionic1 (4.2.0)
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_4.2.0.0-0ubuntu1~bionic1
>
> [HW] Found USRP b200
>
> Found USRP b200
>
> [INFO] [B200] Detected Device: B210
>
> [INFO] [B200] Operating over USB 3.
>
> [INFO] [B200] Initialize CODEC control...
>
> [INFO] [B200] Initialize Radio control...
>
> [INFO] [B200] Performing register loopback test...
>
> [INFO] [B200] Register loopback test passed
>
> [INFO] [B200] Performing register loopback test...
>
> [INFO] [B200] Register loopback test passed
>
> [INFO] [B200] Asking for clock rate 30.720000 MHz...
>
> [INFO] [B200] Actually got clock rate 30.720000 MHz.
>
> Error: signal 11:
>
> ./lte-softmodem.Rel14(signal_handler+0x7c)[0x5617a2bc639c]
>
> /lib/x86_64-linux-gnu/libc.so.6(+0x3ef10)[0x7fa7846ddf10]
>
> /usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0(+0x33dcf2)[0x7fa7796f0cf2]
>
> /usr/lib/x86_64-linux-gnu/libuhd.so.4.2.0(+0x3652ff)[0x7fa7797182ff]
>
> /home/dipu/openairinterface5g-develop/openairinterface5g/cmake_targets/lte_build_oai/build/liboai_device.so(device_init+0x9d2)[0x7fa77a29fae2]
>
> ./lte-softmodem.Rel14(load_lib+0x6f)[0x5617a2bcac6f]
>
> ./lte-softmodem.Rel14(openair0_device_load+0x24)[0x5617a2bcaeb4]
>
> ./lte-softmodem.Rel14(init_RU_proc+0x543)[0x5617a2bb88f3]
>
> ./lte-softmodem.Rel14(init_RU+0x3ec)[0x5617a2bbcd1c]
>
> ./lte-softmodem.Rel14(main+0x5cb)[0x5617a2b95e9b]
>
>
This is a Segmentation Fault.

Either your application is wandering into unallocated virttual memory 
space (via a corrupted pointer) OR, your application was linked against 
a different version of the UHD library than you are actually running on 
your system.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
