Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EC68BA182
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 22:18:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20CF23857D4
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 16:18:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714681108; bh=/d5vPoacSM2JDbYQ0jxpFUpHZ6nBuitb5LeJ2QTRg2w=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=OmAYDGAgx1yDNeM8S9VmAi27jy229FyKx3boebJEIrsX2aFM4A4XKcf6flk0HfhDo
	 1llOy+oUloycpVzIDH7XS51Mp/FvMcjbbmfnuY1gkMLry0Ut2g8A4e6rUp1wnqqVPE
	 dlGav6DCmDyJ6ij57pjKzk6s8NUM7OoVmodPwOXYx7ByRSSgh3zETmZQYlU6Vpxer7
	 RqBzSgp0pAQURqkyfJ848GGlgLU83O+HUFdG2wKrtdZ7CBv1MuWy590kdHobEmxFm1
	 ykud/e8auONbVR+gbO/LOOs+0q/4dYDaMtkfoUt86cz1Aet1fcsBSHZl63Rl8Nz3R/
	 NVlMERv4uCeGw==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0121.outbound.protection.office365.us [23.103.208.121])
	by mm2.emwd.com (Postfix) with ESMTPS id 354AF3850DA
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 16:18:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=srcinc.com header.i=@srcinc.com header.b="ol/g+9dF";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=1lWhDYbrtQrth2GXiVFHUTO7SDMqztRpiUAv6uUasJUMUkIeGe2HfkeU1DxP8dym4rpEk+NmNyNDV37OYvvjxaat8K8GoARB4SZK5msadpUHFhwokPgAJZMkMD0pJq/ffZYoL1MQEJceuyIXJ1G7vUs/0RBSvqu/Ccy7kd9RgvmaNHz8GCUy2nIIBhrn5C5+UbhrLNh9GYQPEfuMonVq+TC6kxIvinrs50FUoRee1BVaGkD2pzxOn/8qNxJH2fi5ScVz9lp3Pq7sL8E+GmMvEFy3D+B5dopiyKNLdqW7IXVrSUxV8T3w9tjb6ABDBmSUoUxkWvxBGyuOtH5w2xY/pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yaUjlxtAu0rKpDi+XQNm1qlZb8aR3uhrU3Nvn3nNAFo=;
 b=NK7HIwuPVfjXK5bUQvbqK0DpHSxipVvK8drvcWj+BUbYZq+EY5TIK9Q4sQ3pgFAFc63EA+xz/99l//gzCIRmiOGKWuQDeOI6m+C8xdS6xt31zkyqcsoRzJT+paUMRGbmSEKUScGxON0wtSPh6eCAryJoGHCsr1tVXnyoiYwk//eTWe9gQSjZ06zIy2ObdZUPYadimPM1kaaJ6RkeFVHeNnrXjq2eREBo39YgotGeJIoBXPZWqqGSs7eL+TrNBdkDkL5IMPwLVyjJRdyrx/nAbWJpTBIAxw19PDLX5wNeUIDQwmkoCGOTbYPsu952sqkbbhuh32Yw5HNVGt5JhtYVOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcinc.com; dmarc=pass action=none header.from=srcinc.com;
 dkim=pass header.d=srcinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=srcinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yaUjlxtAu0rKpDi+XQNm1qlZb8aR3uhrU3Nvn3nNAFo=;
 b=ol/g+9dFRxxbfYfTuN8uS6PJVVy3mA/ZSo9CCTEy8qfrFgQALVm+/AK3fGciVpknMHpiUz4+Rl8n1szWps656NgQ5VLAGZDgdHZFvZg6AlchKWk7TEDU3hA8cX/ZBqG/VVCDLvfcc0rLaIIK+KJSRJ1rUXHy2npUiPBhCheKVlU=
Received: from BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:187::12)
 by BN0P110MB0982.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.41; Thu, 2 May
 2024 20:18:13 +0000
Received: from BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8952:d0e1:4224:97d3]) by BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8952:d0e1:4224:97d3%5]) with mapi id 15.20.7519.035; Thu, 2 May 2024
 20:18:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP E310 PPS Sync Input
Thread-Index: AdqczA6EIaCODYlwRQWhz1lUCP7uqw==
Date: Thu, 2 May 2024 20:18:13 +0000
Message-ID: 
 <BN0P110MB1627DC02E495BCB1A372ABB8A518A@BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: 
 eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL1NSQyIsImlkIjoiNDBjN2IxZTctYjVmMS00MzQxLWI0OGEtMmFkYzdmNzg2ZjJkIiwicHJvcHMiOlt7Im4iOiJTUkNGb3JlaWduIiwidmFscyI6W3sidmFsdWUiOiJObyJ9XX0seyJuIjoiU1JDRGF0YVR5cGUiLCJ2YWxzIjpbXX0seyJuIjoiU1JDRXhwcnRDdHJsSnVyaXNkaWN0aW9uIiwidmFscyI6W119LHsibiI6IlNSQ0V4cHJ0Q3RybENsYXNzIiwidmFscyI6W119LHsibiI6IlNSQ0V4cHJ0Q3RybEF1dGgiLCJ2YWxzIjpbXX0seyJuIjoiU1JDQ1VJQ2F0ZWdvcnkiLCJ2YWxzIjpbXX0seyJuIjoiU1JDTkRBIiwidmFscyI6W119XX0sIlN1YmplY3RMYWJlbHMiOltdLCJUTUNWZXJzaW9uIjoiMjEuNy4yMjMxLjIiLCJUcnVzdGVkTGFiZWxIYXNoIjoidXhVMkF0ZTZaUkZXT0tUQ1VGUGxGWE1LcCszVitZOWZua2lYUEZ0QVVSZHo3cXNnbks3VStJcW53eXFwN2huWCJ9
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcinc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1627:EE_|BN0P110MB0982:EE_
x-ms-office365-filtering-correlation-id: 4986f03c-0089-4b2f-9363-08dc6ae4fe8e
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230031|1800799015|41320700004|366007|38070700009;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?fS2wOGTtl0+aTtIKoo71C5joXaAvFW/bLJ56kyg8pZUkUUFy5cgq7Re417cS?=
 =?us-ascii?Q?u4wGUMvT/XP3QWa1cdxcK5ocqhTHMQH/UCxVXZKYpKn5H5lNl04RwP+s1LFW?=
 =?us-ascii?Q?X6I9lcit1k4OofJ6a9bDAxKEiyewWqdZjivdi3cP2f9OEwlrlQzpBLGTtBd/?=
 =?us-ascii?Q?dwaLSvdh0bzo3i5T1tQgIp1mSdeT+rxkVwYcljSgWZovHMDfr1mcRXRBONG8?=
 =?us-ascii?Q?O7pzalswcx7RITPJlIJ2/z7oWAqYUPQ2uzi0SWFXxK0ifFJGV/oiy0qumce5?=
 =?us-ascii?Q?NByTQFZKHxxr0xnHxKlqGyHzjHW23rKz9PqKi2RO7aEgU+YRe9DlmN7/EBb7?=
 =?us-ascii?Q?dtRpQTzcnkM+VX+c2NnpwwebiCUQyKHAn5ESPCE2p3oqSluOmcjzY5qRBNf3?=
 =?us-ascii?Q?8oWaXt5oXpz2Q34AE9myHar9hVoT9r2rxG8s/ANagMwK0VMMxTb2m0dN+MO1?=
 =?us-ascii?Q?FCl3XkmzKmkvXmVkHr/WH/4Jvkcxr2KJamoGPmmgOh5BnRcL/HoO6L3uJ4ok?=
 =?us-ascii?Q?VhM3uzsndfD/OMJGjT87UF/dvxXCCRe6P+QYDPQ996aAzSVdPHj12TApz49x?=
 =?us-ascii?Q?fCdrPPgDFtUuZzOf9BsbzkDQhJpXoOeJIcnKG6UtvQKRbqMnHr2s4bkxNvLb?=
 =?us-ascii?Q?cujWRW8k0OhiFsz2WFVdWx+qVEi4KiU4pSjXWTmDDkqa3hwJAy+7jOY2l0HR?=
 =?us-ascii?Q?Zep1Jeg6pFaj4twfowxKumbcvGhMmmH3uWBKBIsa1PP4c3qdRy2hS0AjKx88?=
 =?us-ascii?Q?ref+YsvjqAZYldj7nPqoxEV7BCdBF7UBvuGm+c/VMk9h1+hmQpFixusCutOy?=
 =?us-ascii?Q?2balbqrxYRMdDsXM+Wjb75GSqxuj40a0zPMOM8utVAvBnGbsr0zdu64TOwcZ?=
 =?us-ascii?Q?l9tJg6pE3B6ozGLxelPFYQQKHgbkmVhrMnX5og3a4UluUHj720EfLGIYCpBD?=
 =?us-ascii?Q?xW5sGyfXqv2hbl9DMvBzxoSHlSNtr1AUEB7jnGC7Wa24pYzAz8Jv0jHrKEr6?=
 =?us-ascii?Q?oxK7+Pjg7QvQ6j/gsDfO2+l8zJKelaQiC24t+2Rab3RotB/HA2qi7Qam8w/N?=
 =?us-ascii?Q?RO/2kbk5eB69bSfzGGG5oDD4gcd8k8eJN3GxcoE0pOo2uY/LWnWt8Sq9IY0d?=
 =?us-ascii?Q?siysBrJU7Ylb/+w6YKtce0Olq8edp9I0uThjXCWB2h98Anp3nT7rofVPf1JQ?=
 =?us-ascii?Q?EvN2+ahLeWiiVweLyX2Vxq+uMCpkV1eNwelMA1K7YTrTzLMHWbkG4RKc6xJI?=
 =?us-ascii?Q?TVXNQ63YvFz+SVebKomb6Z/ZLDyzFYvEwkIsMyKKmORyRfmkIf+U78rIbot7?=
 =?us-ascii?Q?kWuysWC0syk4JhKsKTp5BFegI1WUL2VKF90kD7Z/gDHsDQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(41320700004)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?++GRaeXbmoKy4gCB1KZQgdWntQkj63QLpoRgSsOczyGQZhjmho/epvIN2ZyB?=
 =?us-ascii?Q?ozuro0T+SYXFCDqkSaj4bMtYU4/Zfo6+lGd9sgrz2BLTGxN5R8Fo5ckHOqLA?=
 =?us-ascii?Q?tUyzE3MJJg5ZUAZYNvYzWnzfPJbRxQkYkv5saIy/IUQ7Ss1OUt+Cpbx9NfK8?=
 =?us-ascii?Q?MbN8OTX9BQuVn2UlQmWuZd6nU3p8QyPDBthdOfrEUbv1Eg3eUpTGAhv9XeOb?=
 =?us-ascii?Q?FTgJxx2YHYLaFScZMRaUJ4121fM5buDPjpibt2qJ784/bsJpyIyE5kvp7MLP?=
 =?us-ascii?Q?nt3vHVqxGdPtSXwd5JKnLvBq4R8otFk2zRmwBb4nFTEqL1fzd3FnZUEGywV+?=
 =?us-ascii?Q?7plujItpwiWX08UT0VZkXXsFupWE9vshtqL1a1q3p+5umJ7/Spa7b43IQX6I?=
 =?us-ascii?Q?YJ0nbDWeLPfE0TH+Ub7s24HGQ+pQ6LhwKf6rG3/xnOmPnknKnt1oXPKByyCF?=
 =?us-ascii?Q?zDtxgMM2beIm9I8Ea5TRsQPOt5puF6Q6K1bk1ro0nw5hKl7n6NVfTECZR/sJ?=
 =?us-ascii?Q?eoSU+Mj1FSe+1VEuYAJ9etjBxYxwKYIIL9G9XL84hvCvh2yC4cNrYQwoQOEl?=
 =?us-ascii?Q?WjXXBV3uTTrmseIM8yp0wp6peNwanlxnA9cVIE4gg43WhYOO1uFaBkJXARsT?=
 =?us-ascii?Q?NQwTQuS8vFgtYb/LR5DUK/p1Tn5wIwIygJNqR0JTpu8VJZisW9wva8ZWY7mS?=
 =?us-ascii?Q?yVyfTYtQ1T39bbh6Dm4KdJHkLVQ660w95cvlZkg5yUv9spnXrqHMYN6buoZY?=
 =?us-ascii?Q?Lm6UdUklIw7ecV0KLRIod/McBpEfur81r2fqFf0Kri4hL/TO9XSyKKbVALes?=
 =?us-ascii?Q?m1F2Q9pbQoc7Y/MY//gP02bARWdpNLxd6TxIKFvyTvie973BLZHigoTD8TdI?=
 =?us-ascii?Q?SEjuQxPdxTakEhBr4zBJr7FD0nmknqscO3/xGAHVoQjHdtC3oTQmHJazrsgj?=
 =?us-ascii?Q?HJFRggogvmN7CthEqMMn3SEn5R83IVdE2hTXCPhUq55zo46rb4MM19CgeMrm?=
 =?us-ascii?Q?8hFi+doFlBwJH+ACByeZYQrAPZGE+07ftlPZBvXqXm9YNheVcGqL/VZMv9sP?=
 =?us-ascii?Q?dcxPDlSeido/4OhWeJx5r82xACHwObK8pjNseixCB8r/fkBHY0OsHKEPlfLB?=
 =?us-ascii?Q?ObFY4oOifJlnEvGOpvdMK0ufOL3Sr96r10k/IGhB65rGS047E1PQBZCrIIxk?=
 =?us-ascii?Q?4sJxHupgwyY3xViL/TwbWw5i/MhymJYUaybPoZwXAhSkbcy9n/LS4p4spHsF?=
 =?us-ascii?Q?8QI2EJA/7uYOZpMUCZLDzcbOmqDAHTo2LuZfWsFj3+Sand6uEbZ1O1rOUsbP?=
 =?us-ascii?Q?ireFtvRRgZYFaWrGkX3ujKRecwR1rZmYt2/TBIfQEyL5Hs2mJvoVcTwMRQnG?=
 =?us-ascii?Q?gzotRQEziDHZNHnVyjBy5KKiJBgvNFXji7M42hnw9xNqbbLz5K1TiEGnoSST?=
 =?us-ascii?Q?kf/QXo+Ma3SY7zhahJfYELPMedMYdHwEkKpjoyBmf/VR+mXknrWW8V0ZYKLX?=
 =?us-ascii?Q?BK7OoniUmrXSRsVaKCcrVQ5w9n+tPk2WD14E?=
MIME-Version: 1.0
X-OriginatorOrg: srcinc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4986f03c-0089-4b2f-9363-08dc6ae4fe8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2024 20:18:13.5213
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 483ef6cd-ae50-48f0-9290-1d63dbf9a817
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB0982
Message-ID-Hash: UPP2PBS24JVSZNM7S2YJTMUR3UBE7HFJ
X-Message-ID-Hash: UPP2PBS24JVSZNM7S2YJTMUR3UBE7HFJ
X-MailFrom: rcharbonneau@srcinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E310 PPS Sync Input
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTUREBCNOMOAXLS52CG5DUGAWQDSIQPC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Charbonneau, Ryan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Charbonneau, Ryan" <rcharbonneau@srcinc.com>
Content-Type: multipart/mixed; boundary="===============9172400563749201276=="

--===============9172400563749201276==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB1627DC02E495BCB1A372ABB8A518ABN0P110MB1627NAMP_"

--_000_BN0P110MB1627DC02E495BCB1A372ABB8A518ABN0P110MB1627NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a USRP E310 that I'm trying to synchronize to an external 1 PPS inpu=
t. My goal is to trigger the SDR to begin receiving samples on the rising e=
dge of the external PPS, so I'm using a pulse generator to generate a squar=
e wave with 5V amplitude and 25% duty cycle, 1 second period and connecting=
 that to the sync port on the e310. The problem is that I can't tell if the=
 device is actually seeing that external PPS signal, when I run the test_pp=
s_input utitlity it passes regardless of whether the external PPS is connec=
ted or not. It seems like the test_pps_input should throw an error if there=
 is no external PPS present, correct? The Checking ref_locked sensor...FAIL=
! happens even with the external PPS connected.

Here are the outputs from the test_pps_input utility:

***************************************************************************=
************************
root@ni-e31x-30FB1A6:/usr/lib/uhd/examples# ./test_pps_input --source "exte=
rnal"

Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.6.0.0-0-g50f=
a3baa
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30FB1A6,name=3Dni-e31x-30F=
B1A6,fpga=3Dn/a,claimed=3DFalse
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3Dn/a,mgmt_=
addr=3D127.0.0.1,name=3Dni-e31x-30FB1A6,product=3De310_sg3'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
Using Device: Single USRP:
  Device: E300-Series Device
  Mboard 0: e310_sg3
  RX Channel: 0
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: E3xx
  RX Channel: 1
    RX DSP: n/a
    RX Dboard: A
    RX Subdev: E3xx
  TX Channel: 0
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: E3xx
  TX Channel: 1
    TX DSP: n/a
    TX Dboard: A
    TX Subdev: E3xx


Attempt to detect the PPS and set the time...

[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)

Success!

Product requires verification of ref_locked sensor!
Checking ref_locked sensor...FAIL!
***************************************************************************=
************************
Again, this output does not change whether my external PPS is connected or =
not. I'm using UHD 4.6, any help would be greatly appreciated.

--_000_BN0P110MB1627DC02E495BCB1A372ABB8A518ABN0P110MB1627NAMP_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a USRP E310 that I&#8217;m trying to synchron=
ize to an external 1 PPS input. My goal is to trigger the SDR to begin rece=
iving samples on the rising edge of the external PPS, so I&#8217;m using a =
pulse generator to generate a square wave with
 5V amplitude and 25% duty cycle, 1 second period and connecting that to th=
e sync port on the e310. The problem is that I can&#8217;t tell if the devi=
ce is actually seeing that external PPS signal, when I run the test_pps_inp=
ut utitlity it passes regardless of whether
 the external PPS is connected or not. It seems like the test_pps_input sho=
uld throw an error if there is no external PPS present, correct? The Checki=
ng ref_locked sensor&#8230;FAIL! happens even with the external PPS connect=
ed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the outputs from the test_pps_input utility=
:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">****************************************************=
***********************************************<o:p></o:p></p>
<p class=3D"MsoNormal">root@ni-e31x-30FB1A6:/usr/lib/uhd/examples# ./test_p=
ps_input --source &quot;external&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Creating the USRP device with: ...<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107=
100; UHD_4.6.0.0-0-g50fa3baa<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D30F=
B1A6,name=3Dni-e31x-30FB1A6,fpga=3Dn/a,claimed=3DFalse<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called with device=
 args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-30FB1A6,product=3De3=
10_sg3'.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 0 ...<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] CODEC loopback test passed<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 1 ...<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] CODEC loopback test passed<o:p></=
o:p></p>
<p class=3D"MsoNormal">Using Device: Single USRP:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Device: E300-Series Device<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Mboard 0: e310_sg3<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; RX Channel: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX DSP: n/a<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; RX Channel: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX DSP: n/a<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; RX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; TX Channel: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX DSP: n/a<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; TX Channel: 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX DSP: n/a<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; TX Subdev: E3xx<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Attempt to detect the PPS and set the time...<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[INFO] [MULTI_USRP]&nbsp;&nbsp;&nbsp;&nbsp; 1) catch=
 time transition at pps edge<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MULTI_USRP]&nbsp;&nbsp;&nbsp;&nbsp; 2) set t=
imes next pps (synchronously)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Success!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Product requires verification of ref_locked sensor!<=
o:p></o:p></p>
<p class=3D"MsoNormal">Checking ref_locked sensor...FAIL!<o:p></o:p></p>
<p class=3D"MsoNormal">****************************************************=
***********************************************<o:p></o:p></p>
<p class=3D"MsoNormal">Again, this output does not change whether my extern=
al PPS is connected or not. I&#8217;m using UHD 4.6, any help would be grea=
tly appreciated.<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN0P110MB1627DC02E495BCB1A372ABB8A518ABN0P110MB1627NAMP_--

--===============9172400563749201276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9172400563749201276==--
