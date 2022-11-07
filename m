Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 508E361F001
	for <lists+usrp-users@lfdr.de>; Mon,  7 Nov 2022 11:11:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6924383BAE
	for <lists+usrp-users@lfdr.de>; Mon,  7 Nov 2022 05:11:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667815883; bh=id+eJelClK3+OCPR8f68CTUv3dVYnezmtTIQ3evqy44=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tIRv4WzgdUvflOvZ8TxeseqSTgUwI1f4i98myPa2lrHiZ0pCkTpVAilWrckfS72O5
	 5cmkzf+/A4/lt15g2M0IXVECfvwFB0Ahjwj4vh97W+QZnxlkPNB+0SWsAWNvfq9FeP
	 3G3Ma+RgNtu/Ltq/mFzSEyIMhlmp/3MmrAI0V3vh2tq+5ZP1/i+LvWVH0G8VMZ0c5T
	 8OkslTUkdEwTEOIt7+1QKts/H++Tvbf57jKLFoB0Are5zcLIbY6XDm6PqL0ttqDZWG
	 hZZf3TKvKws4D1hEGJH6Fx74xVpf0I6+UBGmk6mRxWL297HwuWi9z6VDcrFCsK8VHG
	 KNIB3RtKjewgA==
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130094.outbound.protection.outlook.com [40.107.13.94])
	by mm2.emwd.com (Postfix) with ESMTPS id 92ED83837DC
	for <usrp-users@lists.ettus.com>; Mon,  7 Nov 2022 05:10:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="JB48uE9G";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D82rbg8id9nu+X67nwG3B1GhFy4UwPvzDupRdoeZznRqCG1OipHG7jCMrCkrXIq5AhCLeAsJqj9HBuN+N9hR/pr257sHC8Q1/OLN4+aWqrm9wiHv9e7BUaWpvAlz8F0IjPYb5yDd4RI4f6pV4PpbmBlcUL5HGOzTAk38Ypiwy6zRvLAx5jNuvYaPIkGpgBaCpFGZYV733pPUhiCCMFyMlQyZsQ0whWGJzUX71aT0FHdYMKe4jWCvuU4A8Kzzmm1GgKjoQqTmCXQ/Wv5ymdsK05JqV0YgeDQmBb9pYlloA9YfjhJAAxvXMdaTqYNMd38AmOyvUmlAZMinUyqqFwvzUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=plY4FT57jT9theJN+p6gBYOpT3ey/pPBq3Xr9tasOQs=;
 b=O9aZJr+E1ngW9LKS3Zh21/xMgrnpa4+APZNA5faAmxtzmbJ2VdzpAhd6BsOu6PyGcLnrP0fYpWyo9MlmA817TugNcDGGxrF8QjQmJmDuuYqbYLQ4IrDRofyv6Hg85SaMegm0etywuxldvy7N6knQ8/6klhrwbHpuLzxgpXXyGuKpm4IOGWmgh1mN1vaY39ryEc2YCWM6o/3SKGYm7X6l8/Vja4qTI4Yma12QEAnz3bKYybrSt4EkjHDP1RkN3JXQFGkcMx5Eiwt5Ls0igkEd4mwVEumxMIYXw8I+GI5OIOjdOqKKOy2eHHjDRmNyhS4+e7VNplyKyw/0ZaQyEbnU6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=plY4FT57jT9theJN+p6gBYOpT3ey/pPBq3Xr9tasOQs=;
 b=JB48uE9GS6oBppG3BnpLZqJKtu6RsznVyZpzVAsNmFkMeI1rxwSls6QlVjF0lZZyn1cb1XhbYX9LWFMxTxqtj/JElCONuIvPu/YPdY78vU5aEAMYSZLvsDseoatABwVVPFPaMxS7Nc4ECUrgXEZ5syuEp0vJgTOSAsnEgRUbKUE=
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:9f::17)
 by GV1P250MB0908.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:93::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.25; Mon, 7 Nov
 2022 10:10:07 +0000
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::a63:b5df:55f0:f4b2]) by GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::a63:b5df:55f0:f4b2%4]) with mapi id 15.20.5791.025; Mon, 7 Nov 2022
 10:10:06 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] X410 - FPGA unresponsive after several RFNoC Graph
 Creations
Thread-Index: AQHY8CRBCvtTIxt6l0Sq9I/XfgZg+q4vNOKAgAQM6i4=
Date: Mon, 7 Nov 2022 10:10:06 +0000
Message-ID: 
 <GV1P250MB078586A7A8C05F80D78F54F1903C9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
References: 
 <GV1P250MB078572B4F56DA70AF7DE1FC1903B9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
 <CAFche=h92Kh-46p+EXKKfge_EUrm2y0uvtHS47LLYhQpDefdrQ@mail.gmail.com>
In-Reply-To: 
 <CAFche=h92Kh-46p+EXKKfge_EUrm2y0uvtHS47LLYhQpDefdrQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P250MB0785:EE_|GV1P250MB0908:EE_
x-ms-office365-filtering-correlation-id: 4bbbce7a-3a57-40e3-947a-08dac0a83ee1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 EHjT0YxwXGtOyU4DTyF2WvGGyrQ46qeZVoHnE+XBBP9FL9aFMgPpPHYyiYiJ5HVSQykVTLoC2wAEmM+nLY4Y2/NRH2GdgNeL0BQgGCvDunlvskDlrkv00ngdNS5XVeQJkITTuZrbDx9dITSnEfdvReVIKICuP253ibQJXoQ1F2BjSJ0X24R7LvERkF6aEjy0wLjT8ObHGPUce/ztaDk4Adp7oO4Y2u+faidzXcpeyLjao42MAGZ26kM5lcUxP/57mBdRA0euEm86Gr2Ikox+XjX12lnmTogFV1F1wQXnUhyx7OkCnUgUp05ICXeWAnnjZk4iFFCFgkb3Opm2kQ+nVpGKkezdbXAQP9bBCmJu5+gIZFYtkQVaCE6MrPvFhGq7/ZXa2pan94ttwFOl1NXSvZoAX4lBxjouqD6NGdc0CmFHlIl2aWksaDktI460u2FO20nqon2JBbn5MLw6tjTx0ZMo+BKzDPUty9oDvKrE52hzfwVPqaf7aqPQcryiIMMXLAP+8LfGhzIJslqCTfM9K9i9BXjUTj7ALWIZotdFzC8/dsFVjYOt1uAWYl1Ox786EoUhSQ1YP9ZRXmHfu2fjxvPiOCuTc26Gzly9dTpOUFhRwMwJ9pHrvFuV6W+7YusKhZllrxwjMaC8VtQa0Dmbj4ILE7y/9LXSXh7prBOk00hf8xUr2viNzhoUZRe9gmOVh2GO4BNvJoE30jzqqQPJ6sQ+Dh7AkusW3j40IG2+5sdsWGOgzqx3m86ZTspIXWNUH9+dbTtchQxGggGEFnLZ0Njqd4kbq7APDj9bHps+xzo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P250MB0785.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(366004)(396003)(346002)(376002)(39830400003)(136003)(451199015)(2906002)(478600001)(9686003)(33656002)(26005)(6506007)(53546011)(966005)(7696005)(41300700001)(8936002)(166002)(316002)(38100700002)(6916009)(122000001)(76116006)(8676002)(38070700005)(91956017)(4326008)(66946007)(66476007)(66556008)(66446008)(64756008)(86362001)(71200400001)(55016003)(52536014)(5660300002)(66899015)(83380400001)(66574015)(186003)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bxXga5Zsn/QpEoFYmsmcS2chU3K23GLBWU3qB+8Xw21Yi3w4iHLs1/fsYd?=
 =?iso-8859-1?Q?uYZnoaQX4S/hFs1obyoI3F8013cSv3JtjsEmZxvTfqkw/NWJqFuFolaL3n?=
 =?iso-8859-1?Q?SlaUbIFa52rIBZl5V3GEGmXaFWyww23jf+gmqYrpVtgnJDnzpgw8C3ieRC?=
 =?iso-8859-1?Q?g8O86AjRycYlm6bYHnuf4bbY1UjpbCyBxNNk4ZowlJ8lREezbadosr7T2w?=
 =?iso-8859-1?Q?X3zXCTKz4iGIRxdKUmHaaDrP9TvvQjePUQhru9/25qohH9PuQ5K2zLUnhh?=
 =?iso-8859-1?Q?ZCHpPbAH3FdsPa1wy4eRDAGgKa8u45b5SdveD9x5SGFoEghORJzousIN6G?=
 =?iso-8859-1?Q?hMWkSUus9QB7+nQ+N7Vm1W07Qb6u15Jdsl8hHPON4rsm97hvzpUEMGr1Ek?=
 =?iso-8859-1?Q?pt5sGuCtbf4HGi5nkdHCNrKSJdogqr8OwkZH2gF8MHoJ5Ai2CkK+x1J5KH?=
 =?iso-8859-1?Q?zsJZWVQaYHs69t+82qjpPVImMTAsDxBbJPHKTpD2ILYBwWldRrpKSOZTD7?=
 =?iso-8859-1?Q?ukHq0GFO8xsvKOjnc84l89UNmJxUWP7qMvM61O6TcgQCrrXPV/nYPGdewz?=
 =?iso-8859-1?Q?W18WVTfYjQLC1vUJCIY+TIAmF8UfdbnZ7YDPTQx8j3sC3qhHiWcoGzOlgB?=
 =?iso-8859-1?Q?AQviU+vW9eUGhHm2HeU8yfaDLCu8UPXF6uU2tJiJiLJLdo7dm3GcqbZLYL?=
 =?iso-8859-1?Q?HoY43im483ywnTGNIKI2bxYw7uwql8VQMko10TLJrmW9IjES3WgI+D/dVN?=
 =?iso-8859-1?Q?C25FIeYkZaMJm82povD+HB1Fq1IualexlA6PSoFs+2XhoXbSTCpRZs6mue?=
 =?iso-8859-1?Q?gFPdqmF2vA7pg7EZdevCidQWcKcQlpfzWtrtELP/kXx4KrHXwWJ8XNG6rb?=
 =?iso-8859-1?Q?0IX/4vr1Pp/yfdWqH5/nc306udzuYxHz9orSTtThuy2BE4snRKAPvPKJA/?=
 =?iso-8859-1?Q?V9Blq3xa5kexgidVFS2TqlmSjq4Kq46JoViwKLsawWukqIJguoAGV2wNrw?=
 =?iso-8859-1?Q?SD0tQH4Pgm1wsDRYO8bpcLAnBI82O1i4SB2rIGQAGhmwyiP1xtNnBxgEKK?=
 =?iso-8859-1?Q?5LQ8Hu7VLksEWpCOqD/MmE8pq8fCPpMty6iQ8lOmnsleenSRiCy1hUgmge?=
 =?iso-8859-1?Q?8uYuzvLMfpNA/aiuzWLT6IrnWNtr2xmU9pPk9gaVFbKSsKjGU7s5f02aZI?=
 =?iso-8859-1?Q?5ADR3i4+Evpl5sJSGcmMCqCAQxV/AXLv5J9An1Ntqcf/ZZY4ZVm9ANajwj?=
 =?iso-8859-1?Q?sAPIjg6nn6IfAgLRPGRV7d731UFNYPRl7XHsD1R0QVbovgYEhgdgwbJ8MQ?=
 =?iso-8859-1?Q?ZFbn73VS5icCfAQtImPc4nGYe6ZFN37hVJrSYNqrZB3QTgaR+epHVu6f+Y?=
 =?iso-8859-1?Q?TbKF/Yqjqom6X1pebTBn0LY7t9NcyksrRLxgGodI+TZBkfRNFiSjGZvGtg?=
 =?iso-8859-1?Q?5OrSd71jFfGLUJ4G5we+6yE3VvlfR6PAEIGsmJscSoLvZd8cQxWK39EolN?=
 =?iso-8859-1?Q?yqMObOAj2a91ZFeEcaic6RWESsK1wj50Kp5ghBx7JupU3IxRgdGdVYdo0f?=
 =?iso-8859-1?Q?u8BYcqwzneGikBc3A7xWD29uB8PrxB4zX4kr/wau1PkyhrnAZbe4h3AXdT?=
 =?iso-8859-1?Q?V/OGob7mRLsTmbznVjZEKbkjdKrZrcvU34AFtyJEFAPFRlD5969PXrz8sX?=
 =?iso-8859-1?Q?tCj5rXgXtQBT1OaPfLA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bbbce7a-3a57-40e3-947a-08dac0a83ee1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 10:10:06.8200
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MNBvaincTLSGkqZcFehtc2SqhCGWUIdU0c/BgMRaJhiI6/w91eQCrBOnUTR6Q/RqupgteM+kGsVWsRDMsbrzmPdL19A7RXEh4luoK7eB5u9rS1kAnd5P4nGQV4Q7S2AzakRcDV92RfvXjjFSF3m4dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P250MB0908
Message-ID-Hash: UOXKHESB2YYZWNUZKPBA37JWP6RYWG4A
X-Message-ID-Hash: UOXKHESB2YYZWNUZKPBA37JWP6RYWG4A
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 - FPGA unresponsive after several RFNoC Graph Creations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YMZMWIOEC6LOL7USFDNISF5NR5KJJXCU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4833121489025230221=="

--===============4833121489025230221==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_GV1P250MB078586A7A8C05F80D78F54F1903C9GV1P250MB0785EURP_"

--_000_GV1P250MB078586A7A8C05F80D78F54F1903C9GV1P250MB0785EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

thanks for the prompt reply. Indeed - UHD4.3 fixes this issue on X410. I te=
sted it on my device and I was not running into this issue.

Thanks,
Max


Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667

________________________________
From: Wade Fife <wade.fife@ettus.com>
Sent: Friday, November 4, 2022 9:18 PM
To: Maximilian Matth=E9 <maximilian.matthe@barkhauseninstitut.org>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] X410 - FPGA unresponsive after several RFNoC Grap=
h Creations

Hi Maximilian,

This sounds similar to some issues that are already fixed. I tried what you=
 did on my X410 running UHD 4.3 and didn't see this issue.

Can you try updating the X410 to UHD 4.3 to see if that resolves the issue?

Thanks,

Wade

On Fri, Nov 4, 2022 at 3:20 AM Maximilian Matth=E9 <maximilian.matthe@barkh=
auseninstitut.org<mailto:maximilian.matthe@barkhauseninstitut.org>> wrote:
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

maximilian.matthe@barkhauseninstitut.org<mailto:maximilian.matthe@barkhause=
ninstitut.org>

Tel.: +49 173 4509667


Barkhausen Institut
www.barkhauseninstitut.org<http://www.barkhauseninstitut.org>


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


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_GV1P250MB078586A7A8C05F80D78F54F1903C9GV1P250MB0785EURP_
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
Hi Wade,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
thanks for the prompt reply. Indeed - UHD4.3 fixes this issue on X410. I te=
sted it on my device and I was not running into this issue.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Max<br>
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
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Wade Fife &lt;wade.fi=
fe@ettus.com&gt;<br>
<b>Sent:</b> Friday, November 4, 2022 9:18 PM<br>
<b>To:</b> Maximilian Matth=E9 &lt;maximilian.matthe@barkhauseninstitut.org=
&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] X410 - FPGA unresponsive after several RFN=
oC Graph Creations</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Maximilian,</div>
<div><br>
</div>
<div>This sounds similar to some issues that are already fixed. I tried wha=
t you did on my X410 running UHD 4.3 and didn't see this issue.</div>
<div><br>
</div>
<div>Can you try updating the X410 to UHD 4.3 to see if that resolves the i=
ssue?</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Wade<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Nov 4, 2022 at 3:20 AM Maxi=
milian Matth=E9 &lt;<a href=3D"mailto:maximilian.matthe@barkhauseninstitut.=
org">maximilian.matthe@barkhauseninstitut.org</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg-3117051401584110972">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Dear all,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I have a problem with our USRP X410 and RFNoC. During development of an RfN=
oc application, one often restarts the test program, which creates an RfNoc=
 graph and performs some connections on the device. However, after around 1=
0-15 program starts, the firmware/FPGA/driver
 yields errors that it's not reachable anymore. Below is a MWE yielding the=
 error:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Test skript: <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
$ cat graph_error.py
<div>import uhd</div>
<div>import time</div>
<div><br>
</div>
<div>if __name__ =3D=3D '__main__':</div>
<div>&nbsp; &nbsp; time.sleep(1)</div>
<div>&nbsp; &nbsp; uhd.rfnoc.RfnocGraph(&quot;addr=3Dlocalhost&quot;)</div>
<div>&nbsp; &nbsp; time.sleep(1)</div>
<div>&nbsp; &nbsp; print(&quot;Exiting...&quot;)</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
which I run in a loop directly on the USRP X410, wtih the output attached b=
elow.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
$ for i in `seq 20`; do echo $i &amp;&amp; python3 graph_error.py ; done</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
After the error occurs, the only way to get it back to working is to reboot=
 the USRP or do `systemctl restart usrp-hwd`, which interrupts the dev work=
flow.
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
$ for i in `seq 20`; do echo $i &amp;&amp; python3 graph_error.py ; done<br=
>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'. &nbsp; &nbsp; &nbsp; &nbsp; </=
div>
<div>Exiting... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; </div>
<div>2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <=
/div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'. &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</div>
<div>Exiting... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </div>
<div>3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; </div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>4</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>5</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>6</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>7</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>8</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>9</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>10</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>Exiting...</div>
<div>11</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Rfno=
cError: Specified destination address is unreachable</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File &quot;graph_error.py&quot;, line 6, in &lt;module&gt;</div=
>
<div>&nbsp; &nbsp; uhd.rfnoc.RfnocGraph(&quot;addr=3Dlocalhost&quot;)</div>
<div>RuntimeError: RuntimeError: Failure to create rfnoc_graph.</div>
<div>12</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Environment=
Error: IOError: Timed out getting recv buff for management tran</div>
<div>saction</div>
<div>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Envi=
ronmentError: IOError: Timed out getting recv buff for manageme</div>
<div>nt transaction</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File &quot;graph_error.py&quot;, line 6, in &lt;module&gt;</div=
>
<div>&nbsp; &nbsp; uhd.rfnoc.RfnocGraph(&quot;addr=3Dlocalhost&quot;)</div>
<div>RuntimeError: RuntimeError: Failure to create rfnoc_graph.</div>
<div>13</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal'.</div>
<div>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Environment=
Error: IOError: Timed out getting recv buff for management tran</div>
<div>saction</div>
<div>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Envi=
ronmentError: IOError: Timed out getting recv buff for manageme</div>
<div>nt transaction</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_m_-2181791347994651193Signature">
<div>
<div id=3D"x_m_-2181791347994651193divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sans-se=
rif">
<p style=3D"margin-top:0px; margin-bottom:0px">Maximilian Matthe</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Head of Engineering Lab</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><a href=3D"mailto:maximilian=
.matthe@barkhauseninstitut.org" target=3D"_blank">maximilian.matthe@barkhau=
seninstitut.org</a></p>
<p style=3D"margin-top:0px; margin-bottom:0px">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size:11pt; font-family:Calibri,sans-serif,serif,&quot;Emoj=
iFont&quot;; margin:0px">
<br>
<br>
<b>Barkhausen Institut</b> <br>
<a href=3D"http://www.barkhauseninstitut.org" target=3D"_blank">www.barkhau=
seninstitut.org</a>
<br>
<br>
</p>
<p style=3D"font-size:11pt; font-family:Calibri,sans-serif,serif,&quot;Emoj=
iFont&quot;; margin:0px">
<span lang=3D"de-DE" style=3D"font-size:9pt">Barkhausen Institut gGmbH | Si=
tz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Amt=
sgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettwe=
is, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 <a href=3D"https://barkhauseninstitut.org/data-privacy" target=3D"_blank">
https://barkhauseninstitut.org/data-privacy</a> <br>
<br>
</span><span lang=3D"en-US" style=3D"font-size:9pt">This email and any atta=
chments are intended only for the person to whom this email is addressed an=
d may contain confidential and/or privileged information. If you received t=
his email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information:
<a href=3D"https://barkhauseninstitut.org/data-privacy" target=3D"_blank">h=
ttps://barkhauseninstitut.org/data-privacy</a>
<br>
<br>
</span></p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_GV1P250MB078586A7A8C05F80D78F54F1903C9GV1P250MB0785EURP_--

--===============4833121489025230221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4833121489025230221==--
