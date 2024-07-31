Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D6C9423A2
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2024 02:00:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3D1E3855A7
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2024 20:00:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722384034; bh=H176e9Oe7aYQylUc0nY3nXHcEBIOFABqNqqWxOwesA8=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Jgpvih+Lye9BFWPHPkQFgmiwZkgPscidfmcb/cPUVrPZ4RDPdUcxaPnOuDtFfqgQl
	 5kIxTvcgH+ShitSXPZqmGWgKbuokD11J+Ay4Lzh3k6Vu/f0Jg38UTKTaLpDllohLq/
	 dDrrESSKF+95AtE+sMaSlIg5W07whV/NEd9uiVfh64uCqit4mnDTv5rFe22JNX72Cp
	 w4wKWkyvkPibEHNGhyVM/NQgzaOFCyDwPlv9v3TtwAs2pFqkCTJs8XlF1+2n3ijTon
	 yWrs9YVmDRU+z2HQSN/gnu46JfyRmZEiZHxGoEMabJykudW0yak0VWs4JgSdLUlPgX
	 /LdGT22z0ATdA==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0074.outbound.protection.office365.us [23.103.208.74])
	by mm2.emwd.com (Postfix) with ESMTPS id 9CA68385613
	for <usrp-users@lists.ettus.com>; Tue, 30 Jul 2024 20:00:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=str.us header.i=@str.us header.b="OKnDRuhB";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=1fhvBX20ubUDHF0wKTARqdnB+Oc1mxpHLBAPmR5DoABpuDiqHi1PkmNndKX5aZ+qwyNhIyJOJ++pIjZ34cOuOPHy6q6CcuOSkvOwgL7bwEXn174d/8R+RX7vEE6KrOJEWnZcFT3lz3f9FW8fPFf97VzBHCZOgF8K2qKMp/fjo80IdzpFHMkIyq86G073HEMhpRXBGZxO8JcM+CTWW9jF4ppb1wRUSot4XM/78i2KetQyLK6zVUcXwHIx2gWhYIv8FHHbQfVobzuzemXtU4Sz8zOvbFmnPZ7S5VsD2JyB6Mhp5+/G5OgoZ7XhwLMzxWhWcK0nI0ibKrH+B+P2CIPkdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=93NMn/RWZsV4DLChfw3JcmDDCQg7pT3D9HQjR3hrFQc=;
 b=P6M8maYmaeMoZmPLfMzfx1jMvavyD1excYYUq+27ZmaumhN6htg9wBo1Uttt3NBi7KT9ryr62L9h5cY/P1psrfkSEq3XQr4qNsTPVGta3xbMosXDbpR0XGO8LGcHSvaLPJDMd9DgsfQTaK1fKk+rRhpuiqbpHDbTVIWBFodYmICd47o8gH8zrukimVi227gE2uU1AMaWwsjCDYc1Mpm47vBrhmuQKMpLY6rBCCLbG15yMP0iitlIgcjPLn6jMnFhhJBQOCNu4X8asVkLM3kL5Tc/Mh8gJiz7rY1HKXuw7XfhC+Nigz91HKPYOTSHay006K1htuJr5JWVfyZ5XjGuJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=str.us; dmarc=pass action=none header.from=str.us; dkim=pass
 header.d=str.us; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=str.us; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=93NMn/RWZsV4DLChfw3JcmDDCQg7pT3D9HQjR3hrFQc=;
 b=OKnDRuhBu6xLx+eO6rLy4EIGs0EKDRmBXUq3BFzxnndnPG20NapBwnrOj8PCbenvvp4qvt1vNH8Vz52lzFu9U6dllN0O2liShHd8RA95PFnI5m6oPqUW2yIvJd7MjnT3jivaprwI4AH60gDfUiBmLtMZldJ1ennXH2J3Kr5ZcGs=
Received: from BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16e::7)
 by BN0P110MB0981.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Wed, 31 Jul
 2024 00:00:04 +0000
Received: from BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
 ([fe80::23c7:8e15:bd:3325]) by BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
 ([fe80::23c7:8e15:bd:3325%5]) with mapi id 15.20.7784.033; Wed, 31 Jul 2024
 00:00:04 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X440: UDP network buffer not utilized?
Thread-Index: AdrizLJpZn3TFt3ATTSZtq/pAw/paw==
Date: Wed, 31 Jul 2024 00:00:04 +0000
Message-ID: 
 <BN0P110MB1014E4C8D14B7A660355775A84B1A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=str.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1014:EE_|BN0P110MB0981:EE_
x-ms-office365-filtering-correlation-id: b3901aa7-b0b2-4630-1738-08dcb0f3bb37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|41320700013|80162021|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?EfZ4ll806dd3siJN0K7Hd5ps/llVk4PcKLYAN/kSeK/SmNwCaXgke8EuW9M+?=
 =?us-ascii?Q?jlOD7FiJR8JzbS26xFHJg9+Fjc0P+2Wcx2YVb28AjvUmt4ycbvaJtgdygYAC?=
 =?us-ascii?Q?XnNWOtvPxvQle6TRKo7Xj6v3q+bBy3UmkvEkdg2A8kpc7Y3oPKESlkUv8pM/?=
 =?us-ascii?Q?BH4ZnYO0gQKHuh3IQJ//hTQSABt+sHV1QOsgeglrPqXCjaES91ISccxlAdSd?=
 =?us-ascii?Q?jbnYPV67za4EMsG9QIIQeTaw9JoYIEZqyKVAIKD4dgFBcD+Gp0edVBq6d7WR?=
 =?us-ascii?Q?IZJlDcmKT5Wg7o6AqFFqOgkz63K6rqlN7Rvxq75ruTEYemQnWS62efInZSQ+?=
 =?us-ascii?Q?iq8G1tbzzepZUDo38GSx7xJe1nyNX2IsVL+859iMsRtBwqM2CErLzys7aieQ?=
 =?us-ascii?Q?LouDg7tgOMzb50ZTBe9+3d36cKN32B8NzQX8MreeVw7n+kKYHn94PEcYjYQQ?=
 =?us-ascii?Q?YiL8LASYpyM9GX0qfgQsb1TM7k4CFPDIyQJLs60koTp+5zsvcK3JihUGXB7O?=
 =?us-ascii?Q?Ewi7PB9BY59rZ0i6BIMBIHeLfoy1jSCafSe8qSela+ZOqszoczTTy+wTkgbG?=
 =?us-ascii?Q?4bAUUdr/iBcvcJMCmffGJN1vGs4Z7X6o2WRICtbuL7dF28oKp58UEswpPYEz?=
 =?us-ascii?Q?zHcpzWPCHEDTXJ2x+HUDU6Pkrib8uFi1D1EuM9e3xUKBc+VtIS43+d28Ba+T?=
 =?us-ascii?Q?r1w4GAdo3RMZJ5FFUuuOCBogrfFsj+FMc3dfQT8BEUm//nZ0fC88rjCcVU7f?=
 =?us-ascii?Q?0nPMTztmT7ZAbsHhaQjGO6FO5prCYuvuqNY76tPL5UrS5GkBxIsJuXxTVbNe?=
 =?us-ascii?Q?wnY0YJOh04Gox/kPijpdfyDDsg7UTDOh9U0oLLVINcZzNcfPA6HNF3Y0GJDu?=
 =?us-ascii?Q?qTqvFTdik3QfQ3sgJsfZDe5WG9llIc0cIagujIjgPCncpBIesL/0eNTa5vf8?=
 =?us-ascii?Q?1YwR9C6LhmxISfc3wDtigeCNv7REdr4JxutfIYcxxe3ai/uFOwiF2qUWHB60?=
 =?us-ascii?Q?nQ04Og1WDsjzaU7x3iK/iQvgKS/NdVQtmO98Wxq48+/ghCwjICit/fYv15PS?=
 =?us-ascii?Q?TAmoHpYZfgpK2P/MHOu2FLJW31jianXFbCiKR9TWL/qCgASA1oG+f1UeanPo?=
 =?us-ascii?Q?qFVfDEZ0tiklZi5kMrj1G1aMtl4xjiBd0V6NQSQEKcU4O7dkxTteVfA4Dg4x?=
 =?us-ascii?Q?7Sl1flAYgXx7iLRTN6lgLc1+CIOZ+OKlZH7XSFZo88WGTHJlBX3osCqgoCqZ?=
 =?us-ascii?Q?Cf6BqIXNWr9hFzCh7oZCzxU2LQbjXjRLfJoyfiAId5gr41/o5MQeiI3YM5c2?=
 =?us-ascii?Q?knShhSXBmkQH1qcpYqEmYqowUD3QlbhyqD2G0xp60kMijqYhk3pAznPeTY9O?=
 =?us-ascii?Q?s/AqJEzWK1P1JzT/mj+Ica1ZslnzfmH7S+PVf/IaVbwxbB1cIiVV/8i+FEQu?=
 =?us-ascii?Q?8AVagU0BHsc=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(80162021)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?BTGk1IJgppd2FXTa7C2VcYWUMApNKrtZqsmD4BFQI0vrdaFx2813lxMB2oX+?=
 =?us-ascii?Q?WY0yXuUbTAdz1KyZkb7fqMtisf8Qsr5DZRtQ3NOJJNlW2YCWNP91MI0G7Zod?=
 =?us-ascii?Q?Ul2JgibyCuIAfHeHDEiElfnJPtG8reRoygDYIaTjK6H6w82AlD83yLUHZ1NA?=
 =?us-ascii?Q?LhXsIgQu66P4gsSOGVaEAtDtpxlGHhuI4I0HeAAWG1W3Xo7fV7NmNXe6DMeN?=
 =?us-ascii?Q?VBfxKADO2uzyWaV/tTytj8I7CfQVNMrZIXB8xHR1afs1KEUiVQPxWnczPBep?=
 =?us-ascii?Q?zj+d8bw+DlB5Bme1JbKXfHeOMlOtmDc/g8aRBl0lJEgLDI6I9VUVCDUxvKsI?=
 =?us-ascii?Q?ZEyknDxjNqNaaSodXMNjaK+05POqPVZMrX/ZMaoOK0FwTwOEKVYiehPxCO1M?=
 =?us-ascii?Q?clNejwDPTftjARSYkbBvnmvNNN9B5Uk+rajrXH5PXltc5n6YYDf530WWTahx?=
 =?us-ascii?Q?QyqvOLbqDEdH55m70TMlwYve+WsqvZfnaOyMETojcqaUvwq8j85sYgAXwFS1?=
 =?us-ascii?Q?YNgfiwg/Qj/bxcaD6VF6C1bnyu54Y0XaMrGydqTjJPXlITM1YAGC7ZXOctob?=
 =?us-ascii?Q?ZY49o9dzSWPUX8PxQFfgwYxn6nE5CVWae9WPcmDNozW3R03ruhAx2/eQSjmU?=
 =?us-ascii?Q?Yx6nTkzgwGRZvtfYtlUBJa4k0nKD37v5WiIAiyM+AO0plxOU1ny80yC16ne6?=
 =?us-ascii?Q?SiuTyV4zOR1ZAYs4VaSX71Zlgu0+VLmv8VmUoY0o3WlR5SVB3kvFkz+3n972?=
 =?us-ascii?Q?gG35fwleVcnMnVdgk/L9S+6TIiMuGCi4KcTZ0ukEXa+PW8AdyvXbNdr2UHKk?=
 =?us-ascii?Q?3P71JLkfX4tt+G+TJt2ZYKqiadJDRUTpE8nxEfWHTvMU6wRPU+8JIGKS29xF?=
 =?us-ascii?Q?dScLrVQeyIe1eFW7v3d3N7UB5Z6l//rr6vmPu2CkIpjGQMXLT2z6GNUxS5HO?=
 =?us-ascii?Q?D8wEGXh0ZwehSCrx9ebFS5Gxcu9llR4bK7Sk06xLUjn66N5pA4qwHfaLwLL/?=
 =?us-ascii?Q?NL3fbK33gUVJEvq+N9VIZmUFefBPqlU7m3tIIIcW7wp1/eGZM1NwAqKhM6O4?=
 =?us-ascii?Q?m9WCsmADVWfAVn4/b7X9runBOdUmU8nRq23+qwO0w+6rRBKBiZBnL43bmnM2?=
 =?us-ascii?Q?njQmqxnTYpy58YUfqUVLFhrL3LH+j9ytqFDA9/1swfAV5D7itZswT/5XH4at?=
 =?us-ascii?Q?TCu3vFQjha8jrjAlsV+SwzP6J6C8aWrAER84PwoDQM3ZOg7D2TRyqB3f9G4y?=
 =?us-ascii?Q?MpgRYyk3PEPzBnL7lF4tlHsUMdW4iNZun+8pi+mZmpB5l1B0O3UTTIW44aQn?=
 =?us-ascii?Q?TAXPZ9pI1pLo9QqrfaNafxF51yd6M7yDdQVeBQLiqkgev9Krq2YDzOYeYmI+?=
 =?us-ascii?Q?4yNqh/rwJGBbzXkDdURgjvIGXH5LX248k9sZ6rtz2a+WrDdHdxngh6yFv6TE?=
 =?us-ascii?Q?QHl+Dgx7fbHAK/vR75xnNkQqUBr8wRDQ6a1+k3MRiAi+jRr3PAufqRYE4xFt?=
 =?us-ascii?Q?uJ48KseCW7+/Zf4=3D?=
MIME-Version: 1.0
X-OriginatorOrg: str.us
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b3901aa7-b0b2-4630-1738-08dcb0f3bb37
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 00:00:04.4017
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e436f686-4fd8-4b6f-ac36-441e84fbfa24
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB0981
Message-ID-Hash: CHLWQLXHSDTNX5HQN4YNMOPYTUEVUJ2D
X-Message-ID-Hash: CHLWQLXHSDTNX5HQN4YNMOPYTUEVUJ2D
X-MailFrom: patrick.panuski@str.us
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440: UDP network buffer not utilized?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TDIWG4XBZGNDAFGFG5SSLSS7Q45PSBMT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Panuski, Patrick via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Panuski, Patrick" <patrick.panuski@str.us>
Content-Type: multipart/mixed; boundary="===============2438615876104521119=="

--===============2438615876104521119==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB1014E4C8D14B7A660355775A84B1ABN0P110MB1014NAMP_"

--_000_BN0P110MB1014E4C8D14B7A660355775A84B1ABN0P110MB1014NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi USRP users,

I'm doing a timed transmission and I'm tracking how many samples are buffer=
ed before the transmission starts. I do this by calling send() with tx_meta=
data timestamps in the future and accumulating the return value from send()=
 until it starts returning 0. Send() returns 0 until the start time occurs,=
 after which the send() call starts returning a non-zero number again indic=
ating samples are successfully being sent from the host. Based on this accu=
mulated number, the total number of buffered samples is only 63,488 (=3D248=
 kB of data) despite having the linux kernel network buffer sizes (net.core=
.wmem_max and wmem_default settings) set to 50 MB. Is this expected? How ca=
n I increase the number of buffered samples between the host and device? La=
tency is not a concern. Should I be adjusting the samples per buffer or usi=
ng timeout=3D0 here?

Background:
I'm using an X440 and my end goal is to get at least 4 channels coherently =
transmitting (i.e. stable phase relationship for an entire burst/session) a=
t 50 MSps or greater on each channel for runs on the order of minutes. The =
problem I'm running into is that during transmission at these sample rates,=
 it is very likely that one of the channels underflows, and even if it's ju=
st a single underflow, it breaks the phase relationship with the other chan=
nels for the rest of the run since I'm using multithreaded streamers in a c=
ustom C++ program. The real core of my problem is trying to figure out why =
I'm underflowing at all. My hardware setup seems more than capable (see bel=
ow); CPU usage per active core stays below 50% or so, the network traffic d=
oesn't and shouldn't come anywhere close to the 4x 10GbE capacity, and the =
file reads from SSD are staying far ahead of the sender. Based on my testin=
g, I'm virtually certain that a large-ish buffer between my UHD application=
 and the X440 would solve all underflow issues, but it seems right now the =
buffer is only 248 kB, or about 1 ms @ 50 MSps. I have occasionally gotten =
a full transmission to complete without a single underflow. The onset of th=
e underflow seems to randomly happen, which is another indicator that a lar=
ger buffer will help smooth these inconsistencies.

Setup info:

  *   UHD 4.6 on host and device, FPGA is running a customized image (X4_40=
0 stock image but with the RAM replay block replaced with DDC/DUC)
  *   Host Hardware - AMD threadripper, cores set to performance, Intel E81=
0-CQDA2 NIC configured to split 1x 100GbE port into 4x logical 10GbE ports
  *   Host Software - Ubuntu 20.04, running a C++ program that spawns 2 thr=
eads for each transmit channel; 1 "producer" for reading a file into a seri=
es of very large buffers in memory, and the other "consumer" for moving a p=
ointer to the correct point in those buffers and calling send(). The produc=
er threads start early and I have proven that they never fall behind the co=
nsumers. I've increased the net.core.wmem_max and wmem_default values to 50=
 MB, enabled tx pause frames on the NIC, maxed out the tx/rx descriptors on=
 the NIC,  and followed all the other tuning tips and tricks. I am not runn=
ing DPDK as I didn't think it would be necessary at these sample rates, alt=
hough I could be wrong about that.

Any help here would be much appreciated, thanks!

Patrick


--_000_BN0P110MB1014E4C8D14B7A660355775A84B1ABN0P110MB1014NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1391348909;
	mso-list-type:hybrid;
	mso-list-template-ids:-812087542 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi USRP users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m doing a timed transmission and I&#8217;m t=
racking how many samples are buffered before the transmission starts. I do =
this by calling send() with tx_metadata timestamps in the future and accumu=
lating the return value from send() until it starts
 returning 0. Send() returns 0 until the start time occurs, after which the=
 send() call starts returning a non-zero number again indicating samples ar=
e successfully being sent from the host. Based on this accumulated number, =
the total number of buffered samples
 is only 63,488 (=3D248 kB of data) despite having the linux kernel network=
 buffer sizes (net.core.wmem_max and wmem_default settings) set to 50 MB. I=
s this expected? How can I increase the number of buffered samples between =
the host and device? Latency is not
 a concern. Should I be adjusting the samples per buffer or using timeout=
=3D0 here?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Background:<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m using an X440 and my end goal is to get at=
 least 4 channels coherently transmitting (i.e. stable phase relationship f=
or an entire burst/session) at 50 MSps or greater on each channel for runs =
on the order of minutes. The problem I&#8217;m
 running into is that during transmission at these sample rates, it is very=
 likely that one of the channels underflows, and even if it&#8217;s just a =
single underflow, it breaks the phase relationship with the other channels =
for the rest of the run since I&#8217;m using
 multithreaded streamers in a custom C++ program. The real core of my probl=
em is trying to figure out why I&#8217;m underflowing at all. My hardware s=
etup seems more than capable (see below); CPU usage per active core stays b=
elow 50% or so, the network traffic doesn&#8217;t
 and shouldn&#8217;t come anywhere close to the 4x 10GbE capacity, and the =
file reads from SSD are staying far ahead of the sender. Based on my testin=
g, I&#8217;m virtually certain that a large-ish buffer between my UHD appli=
cation and the X440 would solve all underflow
 issues, but it seems right now the buffer is only 248 kB, or about 1 ms @ =
50 MSps. I have occasionally gotten a full transmission to complete without=
 a single underflow. The onset of the underflow seems to randomly happen, w=
hich is another indicator that a
 larger buffer will help smooth these inconsistencies.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Setup info:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">UHD 4.6 on host and device, FPGA is running a customized image (X4_40=
0 stock image but with the RAM replay block replaced with DDC/DUC)<o:p></o:=
p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 =
level1 lfo1">Host Hardware &#8211; AMD threadripper, cores set to performan=
ce, Intel E810-CQDA2 NIC configured to split 1x 100GbE port into 4x logical=
 10GbE ports<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-=
left:0in;mso-list:l0 level1 lfo1">Host Software &#8211; Ubuntu 20.04, runni=
ng a C++ program that spawns 2 threads for each transmit channel; 1 &#8220;=
producer&#8221; for reading a file into a series of very large buffers in m=
emory,
 and the other &#8220;consumer&#8221; for moving a pointer to the correct p=
oint in those buffers and calling send(). The producer threads start early =
and I have proven that they never fall behind the consumers. I&#8217;ve inc=
reased the net.core.wmem_max and wmem_default values
 to 50 MB, enabled tx pause frames on the NIC, maxed out the tx/rx descript=
ors on the NIC, &nbsp;and followed all the other tuning tips and tricks. I =
am not running DPDK as I didn&#8217;t think it would be necessary at these =
sample rates, although I could be wrong about
 that. <o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help here would be much appreciated, thanks!<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Patrick<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN0P110MB1014E4C8D14B7A660355775A84B1ABN0P110MB1014NAMP_--

--===============2438615876104521119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2438615876104521119==--
