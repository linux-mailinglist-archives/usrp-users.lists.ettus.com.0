Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DADF7B3D5A
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 03:06:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 879753856C9
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 21:06:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696036004; bh=DbGdDj2cQ8Vhx5oah/fRfruEOFm5oL7VYRRI+UdNeHs=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TLqVtHbKLHOViGODHoKemD53oKUUkofEW+46Drpc9a3/WLVFUyuQSKJGwU9sS6/tW
	 gyeyrF2YVmzM6qo2BZrwRzJi7w1KApNLtak5kB8KosXMnvkyaFAO7WWeKq2yqZi1se
	 hhAiH9i5FaUH9PdEYKgL3N3jztpxU34kyAdXv9SADpL5NjoS6WuhXaWE1E/EgRk+Y0
	 x2w2xdUJl/wNv5Koiv62jQFZe6g1JzijhDrNoxsN/61SZENO5b4/KZqd9T3o46shZa
	 ieSzPgm9Vkh39HyArA9/WaFZ7rBf8DNd/NsSUnUMRP6o0AjZ8yKTS5GnProwa+7OTw
	 kPhkuPs8CI7vw==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0089.outbound.protection.office365.us [23.103.208.89])
	by mm2.emwd.com (Postfix) with ESMTPS id C87DB3856BC
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 21:06:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="EdrPy2y5";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=XpoCI0D3WGaVqBSDXgzn+E5LpeC/HKRHpwRpc/9/aXjTJK7IynbsbiUdbbHYiAFXie08Rjahx9C23Fejwi/dF+cdG8ehl8c4Fs3Hao+i8/3aTjFlQoDSteoo9xDR5HRMStpcxCZfqguW2GpJtjVtoaI31flLxZxg9aNs80pJTKv8h5c7cTTZ3WEgpi92ALlrHrRfv5lnZOXKxyHlbHOjUjHFqNq/u/vIfcQo05upEKfKesJIV/YJ+R8rKaOGhh7siYXHhwecSfAe5wvnR+rHqvQcS6DxkG6sWzVPyb08a6lzqB0JW0wShM/uYDu+7d0uHhVbyAO6kztRlJolhghi9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4c+XGCkQmuMUFpMd2syU4CBj5xpuwGbs4I4FrP0kDJI=;
 b=0Lo3k1ZVJYfEdXq+waRky6Y1C8OrPv+lHZpAsnapKsG2tNhNzuqx90LmhR4hAOERMcffaMOEzIiba4Q8ISmXgVO2GxmEC60296xa3ekMcAivnSlcP/riKBwQ2Fw5vMQ67ZgxbfvCFAH55ElBnlcLiZ60qxO5iK3RLWszSf/Z+EpbBxkReKZuVZpbNhvwPh5MfR3+aUyVHmzgPUHmYMR5ey+dHToHOGqdjUl6/FliWGleDOILprWIcTXKHHKTdUsRrYTSQ22Sz2eDF0kBlwRhLyAcOkUc+VZh7PlZ64ZxY/txVbcz2IxNgWGOKyrpEACkLqkPoxq3uKIdIyKPktyfLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4c+XGCkQmuMUFpMd2syU4CBj5xpuwGbs4I4FrP0kDJI=;
 b=EdrPy2y5ncg7vl3BCLioZXcjXpm3n2vaMQ3fOTzehRAuJi0bNFsPcF5Cqh37bkBLDIwV9VzJfus49+TUyTIkaWo0+F+cvzhXIAUcmTGWnYSFv9e8onCCpsy1RWBPAibEyugnkWZ/dZaZNKnHMzr54lEu387hsjMWjRuaZfQuaySs4767VSPPhXTKBMPv8j3OH9/y5gFFDoslHomPfPg2/1iA5K5nnEuTjuyPwDIUamyLbAOnyry1e5yFm0iPfmPUFngjzUwSDL6xYkyx7BtEEU8RCUe/YC3Zk6YyTmBRKR6AolgJ3Kj9O+AMFMAk1LZRyiOf1BmpLiLCcs4CWXMIag==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1026.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.34; Sat, 30 Sep
 2023 01:06:26 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::59fe:610:b86c:eef4]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::59fe:610:b86c:eef4%4]) with mapi id 15.20.6813.034; Sat, 30 Sep 2023
 01:06:26 +0000
To: Shane Flandermeyer <shaneflandermeyer@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] DPDK with X310 and Intel X520-DA
Thread-Index: AQHZ8wnKZ1RtzywyTUeySxWmGKpRBLAyiZTA
Date: Sat, 30 Sep 2023 01:06:26 +0000
Message-ID: 
 <BN2P110MB17472FA25EE49E56B1F25A0BB7C7A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: 
 <CAHN2CUf=xOzHmyRBaaXMWSuv5ZrprVEaO-BPXq+dH21NtxAkjQ@mail.gmail.com>
In-Reply-To: 
 <CAHN2CUf=xOzHmyRBaaXMWSuv5ZrprVEaO-BPXq+dH21NtxAkjQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1026:EE_
x-ms-office365-filtering-correlation-id: 4ed0f4b0-56e8-4746-b44e-08dbc15178ab
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 B4eTXIs1Tca1OTcFzIPF+GgZ7h/naiRDVolkG5g5W2gZ+9q+eIkA+855yahnM/4NdhG8WdaCzb9O7GmSVlxfPnn+KXzzlPF5JaJH+p4fKcptHyMJCwlvxD8/8Wxlmq3TEvKKTiOFIFkzX7IxpRCT1XQyzfjvpddfuIeuy28jhoFlVIvMrP+OIU9tb1y6SYDzE/m3XR1LOx0mjyUL/ovrXX9TGo1QMNfQRxXvq/88GxY9+YCmZXSw0/cNAUPfwbKwcf+/+oou8dFnsSFqHCBUaaADUugeDzErFQp4LH8BC0Js2nrfT5W1Wkx74b9EXgu+ikkGGTx7zihRtUrYVgF91A8wBLgt2yeDL4+U9vtq/aTHeF5haAn25HKD+vfy7vBFh7cW8Hf1OJTmaMLS+yV9BRR+lgNK4uoeFSGNgMvmOJBGD1Bn/Ic8Oz15vqKnwRZZ6RNzipuAVN/y9sKdPGNZPm6cz6FTAW029RRzfwJe1Iw1NDV764BHUm2SZnrdwXtuRw5C+Iuox3vmi+Cqit0voZkXJ++3BqvnFoPZy82LuJZsFXPe11qYm0oXbcEOTaP0LFXaqMk0fQgwR1RgfGE3NZ+A+bUn0S4Osks0Xbgdm/TU4KhIDV5Gn/YMkyvjdUX4
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(39830400003)(136003)(1800799009)(451199024)(64100799003)(186009)(9686003)(2906002)(33656002)(38100700002)(86362001)(38070700005)(6506007)(508600001)(76116006)(66446008)(7696005)(83380400001)(53546011)(41320700001)(122000001)(66946007)(166002)(66556008)(66476007)(8676002)(9326002)(5660300002)(64756008)(110136005)(55016003)(8936002)(41300700001)(52536014)(71200400001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?3BEMRVI6Mxxef+umfek2jpjwJi/CjWWKTPc7t7QYUJMPr9/8MH0mKGAEFxcd?=
 =?us-ascii?Q?gPtfppKsVM3B4J0YOl4JFESS0+zCsH8kfhPsJbJlGXu5v9zq7vFweIPzf/0L?=
 =?us-ascii?Q?G6adwc3VA4r7N+2U8umrLrz1yAujEzjVDyhnpBgPAn/vl1oOtWP73l9IJyAo?=
 =?us-ascii?Q?dyRsNtFdFoQK3wKysBQuRZD0rOGZo1rm4Wi3wSe7PFHmOUwQ3gvPsHkhivSg?=
 =?us-ascii?Q?7uvbj3MRs95zODaokQKKR6qd2rJnAlql6uR2dtwLpoOIUk5G0+S+XH713qYx?=
 =?us-ascii?Q?H01iJoDRWPP1+7qGWSzUPRyU1ZK3BLg7Ps/bAVtLzdJGEg1/3+1pyxCEqFmF?=
 =?us-ascii?Q?nWe26itjpjXiuzF7aFvxMaYe07K5eFpjEFW9SexKDZus+JWZhPGvaHC7cuLH?=
 =?us-ascii?Q?gpio9Xxs486M/QyQiiQ2CZNY2McR5/R0PnpmBzPWV3JCM5djq5ltXIX/Yap6?=
 =?us-ascii?Q?X81C3AGJBwhuR/OjYCQZXfT7udUtELnoiVAY6WRDLPgF8RemwGSQ3znT35/a?=
 =?us-ascii?Q?Uo/LDwKZAnhem9ONvhaD2Wa0hrwqXN2GqQ+JRDMC+h5dCcfGOXmVbiWIc9gi?=
 =?us-ascii?Q?7VWBNUFhV8OcW+rzEzChZbQiHot8YAOa9vpAW7q/p7FQOMo57Yvsv2KAYZQ3?=
 =?us-ascii?Q?nfTsRbT5BHdZPJYdEYNZOCZ4JpIghfWhwGLWsj312cDgJhB9Emjpg0fujU5J?=
 =?us-ascii?Q?jvwrpoano6XTL7bs+aj6DaHH1gf1n0JruBJMtOUhRik+0ZgQVzyDfn929lg9?=
 =?us-ascii?Q?C9WdWWYvlO4Q3ohLFaIN8ZwtMPQ9ZjvxP7m0Q/uIG28Q1QjNFTNfqd0lNpmN?=
 =?us-ascii?Q?VMU0BJB/gthmqxqHwCYkEUSRcA7fIj99eqPzoT+02QV7v7aSbx/+ozh0UI0b?=
 =?us-ascii?Q?ECtmDWOjJaYzI8N2+eOLeESwxIYt1CHhUReXQTqxc3sSDSzSioXTSRzaIj/9?=
 =?us-ascii?Q?FQXSaUHVu2QS1isj1cv5B5JNeQLCsBo6sEfBp0w+8oAQllyt6w3tFr11js52?=
 =?us-ascii?Q?Diio+nxOVpE5T82tMhibUycxe3Dyy+/ZqhALbxCQ+K6qY0Iw7sPleqYoe+0p?=
 =?us-ascii?Q?K7i3LDFh01yQTVxKQCBk2stNyqdvSNLeyIuz0Xe6m5G72ZnAeXKKLqqp6kiC?=
 =?us-ascii?Q?T/A3xtzEnY3UPSIgzImKzA8x5OZtdZvmk0KVz8Ozn5in5JCpkF1xkci6MmPN?=
 =?us-ascii?Q?8k+mpVWJwlkknN+Yyk+rvV19El3N/AUcTREq+L7xjrCpCiJ2AuQinm/Hi4wJ?=
 =?us-ascii?Q?7IfJKfCX7ssT7Jf4JI40bf2LgSPLWPpTSkNEVJPwzt+4RIrH/Sd9nWPcjy9d?=
 =?us-ascii?Q?G7IyCio6iim3K63WUzQj+BpWj6avQwfDeFQJAIZ3uGnnRwwsHTicjelYX7jc?=
 =?us-ascii?Q?Zqdg/TYaNqkNLLxr36hNaM8CQOGKsGyeMPuMx498xsbJARoQ5haZW6ioxoCa?=
 =?us-ascii?Q?tUlVhcymcwBn/G5M17NtgeexxzOKoNxralLtiL87K42XPSGpuDMM8q/IV2YC?=
 =?us-ascii?Q?gkOg50jk8MtgBMmrPOxziA8jQgv/RaDmImqaQyTyTf0lmrWAK4ppUlyMVajr?=
 =?us-ascii?Q?EzEH6tRy0mkNMsmydTBR5PwWT5Wuh70Az6XQ4Qf+smdh192uYvT/VwiiOiRI?=
 =?us-ascii?Q?2A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ed0f4b0-56e8-4746-b44e-08dbc15178ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2023 01:06:26.3918
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1026
Message-ID-Hash: DU5DIAYZPGRTGHIUMRLKMXWD2TOUZBDM
X-Message-ID-Hash: DU5DIAYZPGRTGHIUMRLKMXWD2TOUZBDM
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UJL4QVXEJ7KT3MSSN6GHS3VMAQFTGCM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============1802378880244877019=="

--===============1802378880244877019==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB17472FA25EE49E56B1F25A0BB7C7ABN2P110MB1747NAMP_"

--_000_BN2P110MB17472FA25EE49E56B1F25A0BB7C7ABN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Shane,

I've had success using DPDK with ~200Msps rates over a QSFP+ link to a USRP=
 N320. I still have the uhd.conf file from that project but do not have the=
 hardware on hand to try anything.

One difference is that my uhd.conf used only underscores, not dashes. UHD's=
 key matching in /host/lib/transport/uhd-dpdk/dpdk_common.cpp appears to on=
ly expect underscores, though perhaps the earlier logic to ingest the file =
is smart enough to convert dashes to underscores - I didn't trace back that=
 far.

Might be worth updating your config to use underscores and see if that help=
s. For reference my working config is below, though it's from when UHD requ=
ired DPDK version 18.11 so things might be a little different in recent ver=
sions.

Best,
-David

[use_dpdk=3D1]
dpdk_mtu=3D9000
dpdk_driver=3D/usr/local/lib/dpdk-pmds
dpdk_corelist=3D24,26,28
dpdk_num_mbufs=3D8192
dpdk_mbuf_cache_size=3D512
dpdk_link_timeout=3D5000

[dpdk_mac=3D3c:fd:fe:bc:b7:88]
dpdk_lcore =3D 26
dpdk_ipv4 =3D 192.168.10.10/24
; descriptors per dma ring, must be a power of 2
dpdk_num_desc =3D 2048

[dpdk_mac=3D3c:fd:fe:bc:b7:89]
dpdk_lcore =3D 28
dpdk_ipv4 =3D 192.168.20.10/24
; descriptors per dma ring, must be a power of 2
dpdk_num_desc =3D 2048



From: Shane Flandermeyer <shaneflandermeyer@gmail.com>
Sent: Friday, September 29, 2023 3:18 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] DPDK with X310 and Intel X520-DA

Hello all,

I'm trying to configure my X310 to transmit at its full 200 MS/s rate witho=
ut underflows. People have recommended DPDK, but it seems that DPDK can't f=
ind the X310 when I try to run scripts. I can use the X310 when I don't bin=
d the NIC to vfio-pci, but running the benchmark_rate script with DPDK (as =
root) gives the following:

$ ./benchmark_rate --rx_rate 200e6 --tx_rate 200e6 --args "addr=3D192.168.3=
0.2,use_dpdk=3D1"

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4=
.5.0.HEAD-0-g471af98f
EAL: Detected CPU lcores: 32
EAL: Detected NUMA nodes: 1
EAL: Detected shared linkage of DPDK
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: Selected IOVA mode 'VA'
EAL: No available 1048576 kB hugepages reported
EAL: VFIO support initialized
EAL: Using IOMMU type 1 (Type 1)
EAL: Ignore mapping IO port bar(2)
EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.0 (socket 0=
)
EAL: Ignore mapping IO port bar(2)
EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.1 (socket 0=
)
TELEMETRY: No legacy callbacks, legacy socket not created
[ERROR] [DPDK] Could not find route to destination address 192.168.30.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not f=
ind route to destination address 192.168.30.2
[00:00:00.000300] Creating the usrp device with: addr=3D192.168.30.2,use_dp=
dk=3D1...
[ERROR] [DPDK] Could not find route to destination address 192.168.30.2
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not f=
ind route to destination address 192.168.30.2
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.30.2
    use_dpdk: 1

Additional info that may be helpful:
- After binding the NIC, dpdk-devbind gives the following

$ dpdk-devbind.py -s

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:61:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe
0000:61:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe

Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:64:00.0 'I210 Gigabit Network Connection 1533' if=3Denp100s0 drv=3Digb=
 unused=3Dvfio-pci
0000:6a:00.0 'Ethernet Controller 10G X550T 1563' if=3Denp106s0f0 drv=3Dixg=
be unused=3Dvfio-pci *Active*
0000:6a:00.1 'Ethernet Controller 10G X550T 1563' if=3Denp106s0f1 drv=3Dixg=
be unused=3Dvfio-pci

No 'Baseband' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Crypto devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:24:00.1 'Starship/Matisse Cryptographic Coprocessor PSPCPP 1486' drv=
=3Dccp unused=3Dvfio-pci

No 'DMA' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

No 'Eventdev' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

No 'Mempool' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

No 'Compress' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

No 'Misc (rawdev)' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

No 'Regex' devices detected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

- My configuration file is located at /root/.config/uhd.conf, and has the f=
ollowing contents:
[use_dpdk=3D1]
dpdk-mtu=3D9000
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0
dpdk-corelist=3D0,1
dpdk-num-mbufs=3D4095
dpdk-mbufs-cache-size=3D315
dpdk_link_timeout=3D9000

[dpdk-mac=3D90:e2:ba:dd:5b:cc]
dpdk-io-cpu =3D 1
dpdk-ipv4 =3D 192.168.30.1/24<https://usg02.safelinks.protection.office365.=
us/?url=3Dhttp%3A%2F%2F192.168.30.1%2F24&data=3D05%7C01%7Cdavid%40synoptice=
ngineering.com%7C2d9cef7c4c664546598008dbc120ea83%7Ce861c95e27d6448db078edc=
45c1d9315%7C0%7C0%7C638316119369261563%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4w=
LjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdat=
a=3D83CgKn%2B1bcPQctERVvXcqmLhXNTzsTS51OO3lDgNnl8%3D&reserved=3D0>

Does anyone have any ideas for why it isn't working? Thank you!

--_000_BN2P110MB17472FA25EE49E56B1F25A0BB7C7ABN2P110MB1747NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Shane,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve had success using DPDK with ~200Msps rate=
s over a QSFP+ link to a USRP N320. I still have the uhd.conf file from tha=
t project but do not have the hardware on hand to try anything.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One difference is that my uhd.conf used only undersc=
ores, not dashes. UHD&#8217;s key matching in /host/lib/transport/uhd-dpdk/=
dpdk_common.cpp appears to only expect underscores, though perhaps the earl=
ier logic to ingest the file is smart enough
 to convert dashes to underscores &#8211; I didn&#8217;t trace back that fa=
r.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Might be worth updating your config to use underscor=
es and see if that helps. For reference my working config is below, though =
it&#8217;s from when UHD required DPDK version 18.11 so things might be a l=
ittle different in recent versions.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best,<o:p></o:p></p>
<p class=3D"MsoNormal">-David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">[use_dpdk=3D1]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_mtu=3D9000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_driver=3D/usr/local/lib/dpdk-pmds<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_corelist=3D24,26,28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_num_mbufs=3D8192<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_mbuf_cache_size=3D512<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_link_timeout=3D5000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">[dpdk_mac=3D3c:fd:fe:bc:b7:88]<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_lcore =3D 26<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_ipv4 =3D 192.168.10.10/24<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">; descriptors per dma ring, must be a power of 2=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_num_desc =3D 2048<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">[dpdk_mac=3D3c:fd:fe:bc:b7:89]<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_lcore =3D 28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_ipv4 =3D 192.168.20.10/24<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">; descriptors per dma ring, must be a power of 2=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:red">dpdk_num_desc =3D 2048<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Shane Flandermeyer &lt;shaneflandermeye=
r@gmail.com&gt;
<br>
<b>Sent:</b> Friday, September 29, 2023 3:18 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] DPDK with X310 and Intel X520-DA<o:p></o:p></p=
>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Hello all,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'm trying to configure my X310 to transmit at its f=
ull 200 MS/s rate without underflows. People have recommended DPDK, but it =
seems that DPDK can't find the X310 when I try to run scripts. I can use th=
e X310 when I don't bind the NIC to
 vfio-pci, but running the benchmark_rate script with DPDK (as root) gives =
the following:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">$ ./benchmark_rate --rx_rate 200e6 --tx_rate 200e6 -=
-args &quot;addr=3D192.168.30.2,use_dpdk=3D1&quot;<br>
<br>
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4=
.5.0.HEAD-0-g471af98f<br>
EAL: Detected CPU lcores: 32<br>
EAL: Detected NUMA nodes: 1<br>
EAL: Detected shared linkage of DPDK<br>
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
EAL: Selected IOVA mode 'VA'<br>
EAL: No available 1048576 kB hugepages reported<br>
EAL: VFIO support initialized<br>
EAL: Using IOMMU type 1 (Type 1)<br>
EAL: Ignore mapping IO port bar(2)<br>
EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.0 (socket 0=
)<br>
EAL: Ignore mapping IO port bar(2)<br>
EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.1 (socket 0=
)<br>
TELEMETRY: No legacy callbacks, legacy socket not created<br>
[ERROR] [DPDK] Could not find route to destination address 192.168.30.2<br>
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not f=
ind route to destination address 192.168.30.2<br>
[00:00:00.000300] Creating the usrp device with: addr=3D192.168.30.2,use_dp=
dk=3D1...<br>
[ERROR] [DPDK] Could not find route to destination address 192.168.30.2<br>
[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could not f=
ind route to destination address 192.168.30.2<br>
Error: LookupError: KeyError: No devices found for -----&gt;<br>
Device Address:<br>
&nbsp; &nbsp; addr: 192.168.30.2<br>
&nbsp; &nbsp; use_dpdk: 1<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b>Additional info that may be helpful:</b><o:p></o:=
p></p>
</div>
<div>
<p class=3D"MsoNormal">- After binding the NIC, dpdk-devbind gives the foll=
owing<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">$ dpdk-devbind.py -s<br>
<br>
Network devices using DPDK-compatible driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:61:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe<br>
0000:61:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe<br>
<br>
Network devices using kernel driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:64:00.0 'I210 Gigabit Network Connection 1533' if=3Denp100s0 drv=3Digb=
 unused=3Dvfio-pci
<br>
0000:6a:00.0 'Ethernet Controller 10G X550T 1563' if=3Denp106s0f0 drv=3Dixg=
be unused=3Dvfio-pci *Active*<br>
0000:6a:00.1 'Ethernet Controller 10G X550T 1563' if=3Denp106s0f1 drv=3Dixg=
be unused=3Dvfio-pci
<br>
<br>
No 'Baseband' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
<br>
Crypto devices using kernel driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:24:00.1 'Starship/Matisse Cryptographic Coprocessor PSPCPP 1486' drv=
=3Dccp unused=3Dvfio-pci
<br>
<br>
No 'DMA' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>
<br>
No 'Eventdev' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
<br>
No 'Mempool' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
<br>
No 'Compress' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
<br>
No 'Misc (rawdev)' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
No 'Regex' devices detected<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">- My configuration file is located at /root/.config/=
uhd.conf, and has the following contents:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">[use_dpdk=3D1]<br>
dpdk-mtu=3D9000<br>
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0<br>
dpdk-corelist=3D0,1<br>
dpdk-num-mbufs=3D4095<br>
dpdk-mbufs-cache-size=3D315<br>
dpdk_link_timeout=3D9000<br>
&nbsp; &nbsp; <br>
[dpdk-mac=3D90:e2:ba:dd:5b:cc]<br>
dpdk-io-cpu =3D 1<br>
dpdk-ipv4 =3D <a href=3D"https://usg02.safelinks.protection.office365.us/?u=
rl=3Dhttp%3A%2F%2F192.168.30.1%2F24&amp;data=3D05%7C01%7Cdavid%40synopticen=
gineering.com%7C2d9cef7c4c664546598008dbc120ea83%7Ce861c95e27d6448db078edc4=
5c1d9315%7C0%7C0%7C638316119369261563%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wL=
jAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;s=
data=3D83CgKn%2B1bcPQctERVvXcqmLhXNTzsTS51OO3lDgNnl8%3D&amp;reserved=3D0">
192.168.30.1/24</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Does anyone have any ideas for why it isn't working?=
 Thank you!<o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_BN2P110MB17472FA25EE49E56B1F25A0BB7C7ABN2P110MB1747NAMP_--

--===============1802378880244877019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1802378880244877019==--
