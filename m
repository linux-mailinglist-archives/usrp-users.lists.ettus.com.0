Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D54156192A7
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 09:20:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86DAF384221
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 04:20:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667550009; bh=2pXU9da3rBnQawA3SUWGJNyIn3H9rbB7/9qutIh99YU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OvKTF45N2rKPnZelcvl+WTUg4Td6lv33NtztFqthHL2GVcAk6nR4dsMvcpsOI965Q
	 VOOrQXoA1aR1jmAhQbvEmsO97OTHYoEzUy23tfgsInpAH5pFG2lK8fNt+sz6Gq6r4K
	 JUAjU/dNhd5dXIZ+4nzGmvBtZ9+l2hl1LaQEnZ4Y0yFZSPsx2UI8+Y6/L1xh6sEHm4
	 GC53Lty1QcSu5Sh8S6RxwdmUF/HracPyU5ip2N6GdEMY0xRpH1YGponVzloZcQpeq5
	 ijoCm5aAySrezsefl5PP4oOkcIMqohUlhfC75d7edH5jUc2B2+fhZSWPNwGMsJMt8i
	 0dlbtC1WlhvEw==
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130130.outbound.protection.outlook.com [40.107.13.130])
	by mm2.emwd.com (Postfix) with ESMTPS id 237F7383E85
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 04:19:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="XodFJU6w";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eE0dByqz3rJQgatYH+dAe5j7cWBKViRoSt/3fxRK4hDrSHTTvvVWqntBelEtPoc8GFWiYlV6HfGWjAzNMXAT4pbZMrMDdFSY6urZVCm+RO7gvKbI1gI7yLtQfUB7QNcjdQtAtugplWbO9A/O4wS+Em7bbDan5mri0Wl2Kc7D5CRRhJ12E39yDNAdq2J1unC2Y80AkRyY/3PRM7/Uxe0ssw3Tq3Av+fyVeBoZW/Nf/XMxxyHqNXy1Wuugy7t/vjDzUbTZH9UYqfo2Cmdxw5D263OgnpEsiVCkhTBIUS/JnGP8ZY6gBtopSe0H90o79zj+vwKGQAdaX3VnObhJArfj1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ehqLS1Gid5p1Qz8YTFoyL3ts7PiUWNeXAgkVr66n6Dw=;
 b=X9MxbSvZ3elns+H7CDn2CaWk4i0uboWU7rKa+HTu/FTsPm2ain4nkmWBvF5kVmagG3sRhsdyKIt9sl9CQj8hytr4KFt+SBb+GLBmh20wZNkmUq6KxxSQSgDBbNnAo2Brs5Aa+QOMBAVAILPJ9eYVd9yq6TZ4mrC1z+MKQ4clKwokHfCe6GY0cCLOBYe940HXBE3ecmcM/judwYVNJUq7D+vryegO1PZM5v0Ll/kKSugdztFsF7YLZLjtk4sBtD0gV4ZWM4BHeXX5Ppm/2I0C/sLGHVx+hDNxmH7UV1hGkA1jiLL+3wTkbr2D5bUn4I/yonfUxI9waZIItEvWcB5WGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ehqLS1Gid5p1Qz8YTFoyL3ts7PiUWNeXAgkVr66n6Dw=;
 b=XodFJU6wAAbfLwdqlBe6mw0ScRiX0FK8BMxhItkC/yaw3zZowmDUi7pKVF6C3PFSruo1pFLj81Q1KunqcsXqWKb/7uXDLviZrRmEo63XtIc/v8RBdoh9A7ZB8m43l099Dx2oP3qjIueFG7yN/kVvG9DOJLXcUMuTTgzEWZaI6nU=
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:9f::17)
 by AS1P250MB0478.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:4a5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 4 Nov
 2022 08:19:10 +0000
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::a63:b5df:55f0:f4b2]) by GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::a63:b5df:55f0:f4b2%6]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 08:19:10 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X410 - FPGA unresponsive after several RFNoC Graph Creations
Thread-Index: AQHY8CRBCvtTIxt6l0Sq9I/XfgZg+g==
Date: Fri, 4 Nov 2022 08:19:10 +0000
Message-ID: 
 <GV1P250MB078572B4F56DA70AF7DE1FC1903B9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P250MB0785:EE_|AS1P250MB0478:EE_
x-ms-office365-filtering-correlation-id: 6c41b211-833d-49b6-ef2f-08dabe3d4048
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 an375fB93P8Hi5iV2IV5KSsgINdF2dXUre69qdf5cgY8KiEEpYvjrigQBUCmhyCti2jCpW31BA7zEqnrvC3sLx4njhKiyJRV3uJD8Y39Tc2VRdfoQH3MJWhLZscyXSLDzlNbsAaxDnEakxcCEr0xzwVbi8PNRDZIhaivqt3/ck9ZUHLAfX96NmuKiuTtim+xvnAjhTgQYMdLmNCNoQnpM/P+Yy8tcKeCfI/j1k+JmNEx3xSTw/bw15947tMk4JzTcTTfjbx4pw9a6zmh+mDDsRwqmLxFWQUPkD7mtOjwXbrr1vioCKbawBX3N9g3Fsa38+RhC7Xj+1FYc7OzYW/ZL9dNV+ZRLLd6OjHGNSV8de4IK6AKaR++kMepKtTiNI62e8UNE9KPVvlhT+gASXGcwAG/HvS97lYq0jiFaJ3Ryo5iMOeaFS3hjAZiTe/vorchfcLiSfhnD7WtK8G2rS0CkBfZ1b9/m5KsB78f8S8QIUCnHzk6gidy5EHd4yl2DBqfioRBMM989THxO1q3nD7/AruMK2UF3MTtpxM3qSo/Abv2LrA03o1qKuqFYdAR8FljXa/L3OgKzoLRlJXkoUfzUBbXlfDDveiAohatxSChxrE/yn9nYxKdlPguNqG3fSTDWhfc/QaQQVUfmQfwzWqHJPTohWhSTr93o6gob1e1g7SdPGIYZVEy6Wnr7h1E0AkUj5QzO5xJek3PkLqZii2g5JNzZCzg7ky5S/ml03oNMwkKyOS/GrRYBUBDAeQe/8EowzR3jKKZlyq9Bc1xp5Ds5Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P250MB0785.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(39840400004)(346002)(396003)(136003)(376002)(366004)(451199015)(66446008)(66574015)(76116006)(91956017)(7696005)(2906002)(66556008)(6506007)(66476007)(83380400001)(8676002)(64756008)(8936002)(52536014)(9686003)(26005)(38100700002)(122000001)(5660300002)(33656002)(186003)(66946007)(41300700001)(71200400001)(966005)(478600001)(6916009)(316002)(66899015)(38070700005)(86362001)(19627405001)(55016003)(15974865002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?6VSuJrBQ7okKkFFZ2nkIKLrdT6xc+3GjHZNOcSuXt1PezTQ91VPMZMQSQA?=
 =?iso-8859-1?Q?mfn0z4nAXAZfYg+PmutbyJIIn7CCy+qbagew8k7dqPt9qzpTiUunLuvZxF?=
 =?iso-8859-1?Q?CBzBvaZIVZRRjUgOZOMhJIayANtZuenlJpJZmah/0YAKcd+aoi/VR4wPd5?=
 =?iso-8859-1?Q?3hSwjOO3yPJ2bTaW9X0CuTKpyy6AMCq7bWB0I1ny8mqh7OYMoiy7RTexyU?=
 =?iso-8859-1?Q?uuU5KtNBvGYXCBVm198qhysAaQmyAYOXc2V9PTxuMIUaC2wSQmjdXVMXPs?=
 =?iso-8859-1?Q?O+BgA+OUgj39wn/rdN0LFsAWYn6kzrPqrAjTIfwHCKOIyBTgN9164N13yZ?=
 =?iso-8859-1?Q?Vond+5HdVFnffVsRx2SqQ0i7G3Ay/aOSziuiu0GNu5LMIUHLWj/osLaoL7?=
 =?iso-8859-1?Q?F1ZhvwW4gJ0xEolaNdpGKj0lL2g1GCvxF5kjCaORt+lmGuMY/w1bjJ9gCV?=
 =?iso-8859-1?Q?ok2Mb/G2OuiVo9oNuVK6mSSJXooBpkNG031M+RdCqOK5hLdBeIabVKxZ5P?=
 =?iso-8859-1?Q?40mK6D7FDxzxfnbi613oEPBcPAtIuZ7auZeIKZEeHmE7ySKRsts2LYoCb3?=
 =?iso-8859-1?Q?JDnvPY00Go0xWTza9GRvyt1Nvrr1lFvbRKZZYBasDNdaHUQ0anYhnIC9pg?=
 =?iso-8859-1?Q?dCkPbtoOPMrs/P2ey31cOgV1WdK0IFVdmABjrBkXqWSminTkECbJ1LMDad?=
 =?iso-8859-1?Q?OxyYHFJVH3g5dOWyi1ZdwCXjzx2d1QwfkA+uGY6OEku3uV+sPWVy9xTP+0?=
 =?iso-8859-1?Q?LDDCzaMHcrWKYnivjdUR6RTsdujACP4eIy0BcL943u0Rdmj2p5yq09b/Pb?=
 =?iso-8859-1?Q?HlOD11xCFF5lGPTkKGuaFF8BYEKPPvFJ+qe2cGdhWP2W4u6XmW1Y6SCvM3?=
 =?iso-8859-1?Q?cdsV+cj+wq4Z5D/xXAQ7Vnbtf8qo3cGOddVr+2CdmpUuuBmJ+7tWcxFwsJ?=
 =?iso-8859-1?Q?9e7bW32N7HI3QDZ70ybB3pFmPizcUivP+N1dDhHqqFAwwvNcyeK7q5bClV?=
 =?iso-8859-1?Q?UGBOYgu437Sl/Xu2nDdYnNikCUXyFkDg28A8fTiJZynystBK3jcOFq9g4C?=
 =?iso-8859-1?Q?VDDtEmbF49Y946Qw5ykM6SkBx5ixZr8PrpRX+UfHzalFEkKlJKVWNWQcip?=
 =?iso-8859-1?Q?9cqGKXlv4jaTKMgi1CCcPws9mUg8/H5Gtr/qebnT1wopHhnLCdoDdXV/On?=
 =?iso-8859-1?Q?6qyicvk/IP5DNu0uPZXB+LyUDMmztZn8S3DhSIqsTewuCH4bsA6tSr9+Qx?=
 =?iso-8859-1?Q?Eb+KFgQ1ed07bARAlGOIIxUiS6LIBHVVNDjJl8VY6y9yWNdkDGfVZ+ww6M?=
 =?iso-8859-1?Q?M9uZjc9gCpNWsZum1tkPahBi8aEC/kpyhRiLxv/35Cj+IGewHqC597O6bV?=
 =?iso-8859-1?Q?NAolBbmXPHcuBxSeuwXpfmSCfgnBUgqYaYU8K6lKAqD5z7UVyD4JZeu3tU?=
 =?iso-8859-1?Q?O7SLUgVZ3pNXK1iwHqdPM0cXxG3opiAo5Ym/c3tITTHv8fUckwcyTt3Pb4?=
 =?iso-8859-1?Q?Rm1Bz03ips+1ygrFS9tCQjUTjf1i7tEk0jEiQAIkreQhVvSlxw5IpReBX2?=
 =?iso-8859-1?Q?rAWLzPiv/VEUJyd8+qCdjNcgYJcmcw1lLmhj38q0BAEjycW9AdtTRguzVB?=
 =?iso-8859-1?Q?RZ4LYT9ogwhv3BEo5YiAJe/55LXCfHTK4LJk2ACo/KKRev4CSLkHIWwE7m?=
 =?iso-8859-1?Q?jA4RS69k2JTb4t/OpN0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c41b211-833d-49b6-ef2f-08dabe3d4048
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 08:19:10.6681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VdUDv9XvgQXgfN7M1vjVFVWz2FjSFB/qWiX/79na2os+CeOgzt3UCYWEdu58Pnni3jla86gMORGgDAR49E9RGyMoR5OzG0MD4KMNZiuG8z3cjSQ/wpUpzpVLbtOqqUic1511fv+p9vSyo2eKwOo8Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P250MB0478
Message-ID-Hash: LAJ5WGZATGZVASZ3UCSLJN3S4N3UGNRM
X-Message-ID-Hash: LAJ5WGZATGZVASZ3UCSLJN3S4N3UGNRM
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 - FPGA unresponsive after several RFNoC Graph Creations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IOZ7LYNUUIPX3YS6VY7KPFTKOYYJRIAE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4856825481549632005=="

--===============4856825481549632005==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_GV1P250MB078572B4F56DA70AF7DE1FC1903B9GV1P250MB0785EURP_"

--_000_GV1P250MB078572B4F56DA70AF7DE1FC1903B9GV1P250MB0785EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I have a problem with our USRP X410 and RFNoC. During development of an RfN=
oc application, one often restarts the test program, which creates an RfNoc=
 graph and performs some connections on the device. However, after around 1=
0-15 program starts, the firmware/FPGA/driver yields errors that it's not r=
eachable anymore. Below is a MWE yielding the error:

Test skript:
$ cat graph_error.py
import uhd
import time

if __name__ =3D=3D '__main__':
    time.sleep(1)
    uhd.rfnoc.RfnocGraph("addr=3Dlocalhost")
    time.sleep(1)
    print("Exiting...")

which I run in a loop directly on the USRP X410, wtih the output attached b=
elow.

$ for i in `seq 20`; do echo $i && python3 graph_error.py ; done

After the error occurs, the only way to get it back to working is to reboot=
 the USRP or do `systemctl restart usrp-hwd`, which interrupts the dev work=
flow.

My question is you can reproduce this? Is this a bug? Can I work around the=
 crash? If it's a bug, I should file it to the UHD github repository, right=
?

Thank you,
Maximilian Matthe

$ for i in `seq 20`; do echo $i && python3 graph_error.py ; done
1
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
2
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
3
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
4
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
5
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
6
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
7
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
8
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
9
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
10
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
Exiting...
11
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable
Traceback (most recent call last):
  File "graph_error.py", line 6, in <module>
    uhd.rfnoc.RfnocGraph("addr=3Dlocalhost")
RuntimeError: RuntimeError: Failure to create rfnoc_graph.
12
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError=
: IOError: Timed out getting recv buff for management tran
saction
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environme=
ntError: IOError: Timed out getting recv buff for manageme
nt transaction
Traceback (most recent call last):
  File "graph_error.py", line 6, in <module>
    uhd.rfnoc.RfnocGraph("addr=3Dlocalhost")
RuntimeError: RuntimeError: Failure to create rfnoc_graph.
13
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X
410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou
rce=3Dinternal,time_source=3Dinternal'.
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError=
: IOError: Timed out getting recv buff for management tran
saction
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environme=
ntError: IOError: Timed out getting recv buff for manageme
nt transaction



Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_GV1P250MB078572B4F56DA70AF7DE1FC1903B9GV1P250MB0785EURP_
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
Dear all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I have a problem with our USRP X410 and RFNoC. During development of an RfN=
oc application, one often restarts the test program, which creates an RfNoc=
 graph and performs some connections on the device. However, after around 1=
0-15 program starts, the firmware/FPGA/driver
 yields errors that it's not reachable anymore. Below is a MWE yielding the=
 error:<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Test skript: <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
$ cat graph_error.py
<div class=3D"ContentPasted0">import uhd</div>
<div class=3D"ContentPasted0">import time</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">if __name__ =3D=3D '__main__':</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; time.sleep(1)</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; uhd.rfnoc.RfnocGraph(&quot;addr=
=3Dlocalhost&quot;)</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; time.sleep(1)</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; print(&quot;Exiting...&quot;)</=
div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
which I run in a loop directly on the USRP X410, wtih the output attached b=
elow.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
$ for i in `seq 20`; do echo $i &amp;&amp; python3 graph_error.py ; done</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
After the error occurs, the only way to get it back to working is to reboot=
 the USRP or do `systemctl restart usrp-hwd`, which interrupts the dev work=
flow.
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<div><span>My question is you can reproduce this? Is this a bug? Can I work=
 around the crash? If it's a bug, I should file it to the UHD github reposi=
tory, right?<br>
</span></div>
<div><span><br>
</span></div>
<div><span>Thank you,</span></div>
<div><span>Maximilian Matthe<br>
</span></div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
$ for i in `seq 20`; do echo $i &amp;&amp; python3 graph_error.py ; done<br=
>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted2">
1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'. &nbsp=
; &nbsp; &nbsp; &nbsp; </div>
<div class=3D"ContentPasted2">Exiting... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted2">2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'. &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;
</div>
<div class=3D"ContentPasted2">Exiting... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;
</div>
<div class=3D"ContentPasted2">3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">4</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">5</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">6</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">7</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">8</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">9</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">10</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">Exiting...</div>
<div class=3D"ContentPasted2">11</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">[ERROR] [RFNOC::GRAPH] Caught exception while=
 initializing graph: RfnocError: Specified destination address is unreachab=
le</div>
<div class=3D"ContentPasted2">Traceback (most recent call last):</div>
<div class=3D"ContentPasted2">&nbsp; File &quot;graph_error.py&quot;, line =
6, in &lt;module&gt;</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; uhd.rfnoc.RfnocGraph(&quot;addr=
=3Dlocalhost&quot;)</div>
<div class=3D"ContentPasted2">RuntimeError: RuntimeError: Failure to create=
 rfnoc_graph.</div>
<div class=3D"ContentPasted2">12</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">[ERROR] [RFNOC::GRAPH] IO Error during GSM in=
itialization. EnvironmentError: IOError: Timed out getting recv buff for ma=
nagement tran</div>
<div class=3D"ContentPasted2">saction</div>
<div class=3D"ContentPasted2">[ERROR] [RFNOC::GRAPH] Caught exception while=
 initializing graph: EnvironmentError: IOError: Timed out getting recv buff=
 for manageme</div>
<div class=3D"ContentPasted2">nt transaction</div>
<div class=3D"ContentPasted2">Traceback (most recent call last):</div>
<div class=3D"ContentPasted2">&nbsp; File &quot;graph_error.py&quot;, line =
6, in &lt;module&gt;</div>
<div class=3D"ContentPasted2">&nbsp; &nbsp; uhd.rfnoc.RfnocGraph(&quot;addr=
=3Dlocalhost&quot;)</div>
<div class=3D"ContentPasted2">RuntimeError: RuntimeError: Failure to create=
 rfnoc_graph.</div>
<div class=3D"ContentPasted2">13</div>
<div class=3D"ContentPasted2">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.2.0.0-0-g46a70d85</div>
<div class=3D"ContentPasted2">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D=
323F754,name=3DNE-LAB-X</div>
<div class=3D"ContentPasted2">410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dl=
ocalhost</div>
<div class=3D"ContentPasted2">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,pro=
duct=3Dx410,clock_sou</div>
<div class=3D"ContentPasted2">rce=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted2">[ERROR] [RFNOC::GRAPH] IO Error during GSM in=
itialization. EnvironmentError: IOError: Timed out getting recv buff for ma=
nagement tran</div>
<div class=3D"ContentPasted2">saction</div>
<div class=3D"ContentPasted2">[ERROR] [RFNOC::GRAPH] Caught exception while=
 initializing graph: EnvironmentError: IOError: Timed out getting recv buff=
 for manageme</div>
<div class=3D"ContentPasted2">nt transaction</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted2">
<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_GV1P250MB078572B4F56DA70AF7DE1FC1903B9GV1P250MB0785EURP_--

--===============4856825481549632005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4856825481549632005==--
