Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1954C6A1891
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 10:15:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3686F3844FD
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 04:15:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677230111; bh=f0r8lS0+/3BG5k1pfCYdYykeMqnTI5CM0avfAVmGEEc=;
	h=To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=WSYiX4GvLlyhwxMadutllqSkKseDmZCn31VK2FoDyfQvnEZgSs1rkpUTFO5p/Qnk2
	 0O/bV8oW3cEzIFQksKDtb6rbPm1JJTX3cyqaE5ULxbKBJzLLsggDIQRjJ2q1Kk8Aqs
	 MIXxbCSg/aDYYsRC8qtoJkEYL9Y1hs75Is2FLjWZpKc/x86apq6srWyNE2E9jSDhLB
	 3KL5YRdjPAauPJb8vI+NDku+saEaGPynA0sWj77oRlUOvz0GphfPdbQIIfEHlqkEEH
	 YttJnfmR1kZCabqWm+vAcLtl2rAXEq+q1pKY9NRQSJFP6H9uhWrXgj+JzqWrzucJQT
	 SCR71YcxjHLAw==
Received: from mx0a-00164e01.pphosted.com (mx0a-00164e01.pphosted.com [67.231.148.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 13B64384253
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 04:14:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=molex.com header.i=@molex.com header.b="VML/I+49";
	dkim-atps=neutral
Received: from pps.filterd (m0048128.ppops.net [127.0.0.1])
	by mx0a-00164e01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31O7Xlvx007245
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 03:14:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=molex.com; h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=00164e01;
 bh=FjmzfGiuIu7IeIeIItOcDY+jfrkV/czv5fLlVRV2Ga0=;
 b=VML/I+49IOiOxwlj2BPQkQ2dy331YD9PK2908j766M0DWNSDZb4st5b+jl5r3oXEAENX
 JQm/e/jl77xjO8LIABudWqET0cYogZAse8eVUyvxtQPyPNzinrkqJX/wfS73Fpy0Witf
 GfxPvaZDdiTFWDGjJODADHgZqZ/ZbLhmDW2fxsUKH691nI8yXZr5PSwPVSs3sZdCPigU
 U5A1nmT2cBzon6SlX8X++vRXaXJqOO7g61pDHeJ0zuKQJGgnQEbIrzYWW7SmRbr0XfMt
 h38CNVb+bl7z0/rVNW5NKAbrOWasYdgiNNOEbUlLXbMz+tTqTf0Ump+eWQOPdtR+QjZl /w==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-00164e01.pphosted.com (PPS) with ESMTPS id 3nxry4rav6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 03:14:30 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MBzm2LcgX8l/1/GINyXXmM40nOFfzvvSkKn3/WSkC0/waZFdKLMtekE54Ow34VkAssSgGDymmU8M97hJMVXGElQe8RYhZACsPX9K6BCdbcCEa4dHBlfz6qBgHwH94Jq4J1WqRBwo4S7wdbp+Kzix8w9jjctbzGwsSH3X70aOpGC8NU/uWD8KzFZVGeY8DTvt9Re/s0mEnNrpE9pLs/IRu70FPwv5WBjORiR3NMzdiRcjR/wJOctYt91AH6I7Ze8Nn8s9a2FR9CoZgVijvBHXWp1l4KUchylkB+HRRdKKjdvEfMUSZQ1gaYbF8gpVFDbYr3eKnR6SGiYxy0Xcap9AiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FjmzfGiuIu7IeIeIItOcDY+jfrkV/czv5fLlVRV2Ga0=;
 b=FLoQMRgTEOreTGEcecI+NNTLPTG95ouOWgJGST4qcRgToXCKteqsAa3MeGQp01piIxlyoxDhwiptvowSPw1R9fC+TCsP+QrarFZa9af7ieOrWuOHGjnPNLJVxaLRQrmN6FnFRTJZOsW775q4ProzZ4+/AmNIGEyJTTt/fr2unsimzINrqoJ5KQLGoYFxctjzTaCzs8ixszz1dKVKfoiOnvNEnzcpqaU70SS6FGYTAkB2VYsxaWbejoJlUrlnBR7/HBRDRYzoOvLxqKF4gD3JjUuYvMgpJhFbsW4BsxNW2547GzBOixd1jgdOuZfq7l7dSimGUt/1jpvi3WRhfk+GBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=molex.com; dmarc=pass action=none header.from=molex.com;
 dkim=pass header.d=molex.com; arc=none
Received: from PH0PR15MB4704.namprd15.prod.outlook.com (2603:10b6:510:9a::7)
 by CH0PR15MB6023.namprd15.prod.outlook.com (2603:10b6:610:187::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24; Fri, 24 Feb
 2023 09:14:29 +0000
Received: from PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d]) by PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 09:14:28 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: REF IN and PPS IN signals work on X300, fail to lock on N300
Thread-Index: AQHZSC+y9QA4BwPrFEKstGxINBy6IQ==
Date: Fri, 24 Feb 2023 09:14:28 +0000
Message-ID: 
 <PH0PR15MB47042B44A404C29D125A5871E3A89@PH0PR15MB4704.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR15MB4704:EE_|CH0PR15MB6023:EE_
x-ms-office365-filtering-correlation-id: ba123359-c0e6-4020-c11d-08db16478823
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LUvkRqFR6+rU0717oHdFey94IkE/gaNGt3m1maZMzrtBJRFnNkVc9sfdt6D2UiWPkr1nCwUeG9vCx8q6ydicSQ4OUB6HWXSfwB750BLQMGYALyAtnvbGLQPEULrGjJSsc6dTN8exatmu4+cl9Ct1NXjHscHVzevuamnlzDbMLSAdIdqFkEvXI9GO3vXG2SIA3C+8c2BF/Hy0Y9C8frKD15100XDNrnBBUzLTho/8ffN2v0l0lQ2KWnI+VmDJJz3hQDR88OozCz6fy+018Y3Dz0YiBpb2UyJRC3bHnnt9+q+KUM0IAHpD4kboCJiN8snbuk3z0Lp9Flzy/J4xNyWI33mYZS69FMx7ORkb/V/dM9YmIsO7urFyUqZefmL2Ya+C7QykjfjAmHpwdTkmWQBA/h+FUQWb0hjTxK6XA24J8PPjlZGdBfEvkgJ10Lzlp4gejhcg0f0hM2sz/2e06qpX4Rh/RAtCR3lu7coPmOOkBa+y9o3tBy6fatsP23FP5/pebiLD8KJjI1osSIXmQ1PV+omkv4KBemYweMZw2/39XwU9ckGJubY1T1ALN1Ev6IvSdyUjMlUxjSbvy9I6thaBtKBtIlx13uqAqASvKAzoReMwESeAKnMsFk9M+KGyWMLH1xWda/aeDOU6vKQMzhsDRcv7Divmvq3H1Oua4HidZ9KYrPytNyrPZ7tjnPLJFpnEqcywEvCLLVLOAqIR86qWMg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB4704.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(39860400002)(396003)(366004)(346002)(451199018)(55016003)(107886003)(83380400001)(33656002)(19627405001)(478600001)(9686003)(6506007)(186003)(71200400001)(38070700005)(82960400001)(86362001)(38100700002)(122000001)(15974865002)(41300700001)(8936002)(4326008)(8676002)(6916009)(7696005)(5660300002)(52536014)(2906002)(316002)(76116006)(91956017)(66446008)(66476007)(64756008)(66556008)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?+jy770JSlcf+TqlZ52cslYh6Bk+SYVeHAwtoZ/kR9OxnNX3zulrJo7MFMO?=
 =?iso-8859-1?Q?kdm8wvGJLvYZdMkybV0q9q5R27Q04/2esrXKQMxIOzhQ+z73czVA25S0T8?=
 =?iso-8859-1?Q?bI7PUvOEyTpWoCXCvReQbqosK5DfA7ziDmCpQIwQoO4cEI4UNJaQ31PvBH?=
 =?iso-8859-1?Q?ItP9e84g1u3PtnMS5umV0s1KqMER6yXJrtFK7VoB1p8ooZ1TqMB4CyMVb8?=
 =?iso-8859-1?Q?roRHfBNTMkKogvLRKw+0GgNucb9NMh3GKGH/8zFT+JvzucltT1w2gV3WfD?=
 =?iso-8859-1?Q?TsGzrd6ZDniwcyCdBYymA6O/z243aSSxgAUnUtq3cPqXbljbtN1Xv/e1X9?=
 =?iso-8859-1?Q?/Gw/c7Q1B7wZ5kmQGDXplvICYeediacksD2d8fXK9lQF9rtEaA/KzGUbBb?=
 =?iso-8859-1?Q?LRuiwBfcuhHZvP79TsgqydNTBkYak3gLhCDaTLl3j7eVl1dcs3q5hRVrlq?=
 =?iso-8859-1?Q?oG3GQeypROl0UAnlHi/ZkL8fmQIbPBl1V4h9v2mB/oiHH8EKZPuPbfZdx8?=
 =?iso-8859-1?Q?RTPoPdEWmGWBGTS8ze+qkmnow0h7Td26GEZ4J6/40CyPr6AGja1I+Zhg6A?=
 =?iso-8859-1?Q?PgigG5GU2dN1l2wMl6LJ9Qvu8aMuKj7Iw04SId5+md+IBLABItEy/HSQi9?=
 =?iso-8859-1?Q?MXOf0K/9PaynI7r/K1U0KEB1KJmW//VOYTD3DJOHOseqwPpdOh0R7D9aNO?=
 =?iso-8859-1?Q?MMbm3ixtiBLViD7kdg/cxFv40BK2diA/HUAw4mhRXhstj246muGSz6Gb8E?=
 =?iso-8859-1?Q?Da7jHPDUnzWknCCjRPVC2sdBJPMboO5AjU4KmsOCDC/PAQ80yOIdkVUf7w?=
 =?iso-8859-1?Q?csVwUYIYPBskDPJ/yDOJlR1oVUH2WMqxjEqqhDQZY3/ctxNLdCjg6xZtPr?=
 =?iso-8859-1?Q?4k8/1/pZwuTw4ZomuqL1hrVnz7bB0+jWcdsco0IBXL252XnbfjvGppAuuy?=
 =?iso-8859-1?Q?vzgtSXdPw0ALxZ4rT8ts5j454rTC9rNjgU/P1Pa9osF7fVCWELo17hJcW3?=
 =?iso-8859-1?Q?93lNrBQVSVCNjUrwJzYOTo+GCuAq5rEf6gh+YyT73ZKdii9rMyNk/OhglX?=
 =?iso-8859-1?Q?LdpXxg9zBzfbCWbZAzaykwpwCyfKIn1s13tpx+Ht3g36lNNKunK08aVOCK?=
 =?iso-8859-1?Q?du7MCnujXvNaDKvGDEu5X+1uOMfGFMx9j4dsZ4rTb90UdGMwwrCR8agk7F?=
 =?iso-8859-1?Q?5ypF0Z+D/oBuPXqAKHPfKLNLCjrXsMl1U2I9+jiEeeA/qu4UV8SYQ5Rro9?=
 =?iso-8859-1?Q?O1H5mI5TvFYrn1kXUNUCSKVTqjkIUIETV9s7rtbK9T+e9WzK7i/3yuzu3U?=
 =?iso-8859-1?Q?1t2xy8bbmD1Ch2QB9VQr8o0bfA8UKkP3+eMROx6jXMQaUXMcZvD+5m7m9N?=
 =?iso-8859-1?Q?qXckLlX5GokiX6EOspqiRyIT0Jc5mwXz2qGqKRbS5ghc162xzhlzIOUhy+?=
 =?iso-8859-1?Q?Cq3+CvC/Cfes6QXthMcbRW2Ymk1A9PPnlG7nBoCaRVpk2+9mwUDkr3iHLB?=
 =?iso-8859-1?Q?Dhk1bPDQvXc277WX0bMpn2UkuT5f1ja1tHfpI17p1iTRurCOpviCpgH8oo?=
 =?iso-8859-1?Q?eWp5mQ17uDwvANfVKwUYUnqCzRl9zP53J45cbqBN6pUTd0A0walQ2Lxh7y?=
 =?iso-8859-1?Q?t6TzpQSQ7zDHiLth8NYQ2PntW1UHk8W9B/mhTeoB8SOXDnmh6QbpTHwg?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: molex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba123359-c0e6-4020-c11d-08db16478823
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2023 09:14:28.5435
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 101ce67d-13f2-447a-bb65-0989b89dfdb4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9wpCLXMm1dj7GRVu4LywlZcq2L6CqxTH2zH/hVAYcRK/6CArMZkGDAzyBb9NTLlymTKPDBbsN0gOGAaswqqkgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR15MB6023
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 2a10:3781:1f::465
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-disclaimer-hash: 0c6d048b2a9fb806923cec0a756adc963e7cd1169c28b6f2f2da544dd13766d1
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: CH0PR15MB6023.namprd15.prod.outlook.com
X-Proofpoint-GUID: JF6PfAwzgqVdgZUVTUl5MLvjso98y0Gj
X-Proofpoint-ORIG-GUID: JF6PfAwzgqVdgZUVTUl5MLvjso98y0Gj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-24_05,2023-02-23_01,2023-02-09_01
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: 3X7OLAOBMSUJR6GKMK4GNZ7GQYFS2AHL
X-Message-ID-Hash: 3X7OLAOBMSUJR6GKMK4GNZ7GQYFS2AHL
X-MailFrom: prvs=7419d8da45=bas.vermeulen@molex.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Taprogge, Jens" <Jens.Taprogge@molex.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REF IN and PPS IN signals work on X300, fail to lock on N300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MNYCOJOZW6D7HJUDRNL2GGRHTGBU56OU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Vermeulen, Bas (Consultant) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Content-Type: multipart/mixed; boundary="===============6886221028975490946=="

--===============6886221028975490946==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB47042B44A404C29D125A5871E3A89PH0PR15MB4704namp_"

--_000_PH0PR15MB47042B44A404C29D125A5871E3A89PH0PR15MB4704namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to get a working multi-usrp setup with both X300 and N300.

I currently have a signal generator generating a 10 MHz clock and a 1PPS si=
gnal.
Those are connected to a splitter (each), and then connected to both X300s =
REF IN and 1PPS IN.
This setup works, and with srsRAN I can use two X300's to get an LTE 2x2 MI=
MO setup with the throughput I get with one X300.

If I connect the same signal to the N300, the N300's PLL fails to get a loc=
k.

Does anyone have any idea what goes wrong there? We're getting a WR switch =
somewhere in the future, but I would like to be able to test
with the N300s before it arrives.

Regards,

Bas Vermeulen

________________________________



CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the sender, is prohibited.

This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly prohibited.

English | Chinese | Japanese
www.molex.com/confidentiality.html

--_000_PH0PR15MB47042B44A404C29D125A5871E3A89PH0PR15MB4704namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I am trying to get a working multi-usrp setup with both X300 and N300.</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I currently have a signal generator generating a 10 MHz clock and a 1PPS si=
gnal. <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Those are connected to a splitter (each), and then connected to both X300s =
REF IN and 1PPS IN.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
This setup works, and with srsRAN I can use two X300's to get an LTE 2x2 MI=
MO setup with the throughput I get with one X300.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
If I connect the same signal to the N300, the N300's PLL fails to get a loc=
k.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Does anyone have any idea what goes wrong there? We're getting a WR switch =
somewhere in the future, but I would like to be able to test</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
with the N300s before it arrives.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Bas Vermeulen<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
www.molex.com/confidentiality.html<br>
</font>
</body>
</html>

--_000_PH0PR15MB47042B44A404C29D125A5871E3A89PH0PR15MB4704namp_--

--===============6886221028975490946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6886221028975490946==--
