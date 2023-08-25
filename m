Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9611C788C4B
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 17:17:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8586384D66
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 11:17:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692976674; bh=hXZOYBLEdFHnL6aIzwMAwLhCYZinIsRh8QYRcgX5fSs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bloRXywzIiSJunYkZvpAhFp5s88XqGVxybZGSuVmGnt+2KnfTg3Gev6BAFxeKf3wC
	 vsLjviGWE7aQvjZ7894ZmpRt8oBcImQZTA+awqR2saG7cF9uzgQiQedA7Dn3SAhnpS
	 eLaGkh9bQNjtxubOY47q+GmJxDhQmXMB6LS7RXgMbohqSY0oU3R++5O4b5R/4BCadS
	 0U1OJNSgG5x2CB2kibHvB4vx68ECdfvmR7yaY+z8AlOnkVEudtazM/2/lTjum1dqRp
	 E3zjf2hFh1NI6cLEfAWCDDqTv6X9/Vl4H8W1zJ/nEQVg+4IzE3+4tn1lL6pljwtmnO
	 EGJt7JWAZ0IBg==
Received: from emp-mxpp102.dcs.leidos.com (emp-mxpp102.dcs.leidos.com [149.8.243.12])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DA4D384CEE
	for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 11:17:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dynetics.com header.i=@dynetics.com header.b="QDZ6kbJz";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=LeidosCorpUS.onmicrosoft.us header.i=@LeidosCorpUS.onmicrosoft.us header.b="JbI12Iv2";
	dkim-atps=neutral
Received: from pps.filterd (emp-mxpp102.dcs.leidos.com [127.0.0.1])
	by emp-mxpp102.dcs.leidos.com (8.17.1.5/8.17.1.5) with ESMTP id 37P77FZ4027759;
	Fri, 25 Aug 2023 10:17:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dynetics.com; h=from : to : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=dynetics-2048-030121;
 bh=xUYC3xm/7eRetg4iMuuJVI7w2Wh/YyCrs+NmjLQQ6eA=;
 b=QDZ6kbJz5qSADZf9OgibULA5hI3rzZZnhrZCsZGTeU2Ym2gWD25eAPiGKqnIIm/SPRKt
 bVSICJlLDr54qTeM/v/BDJ50hBkC4DksqEoDv2uSUq+8kenvwWpj4/jg6j0hUXrlwaas
 ylRP7sKoBoiZ2SN9YE9kSIonaWML/OizlSGjH697Yp6UPFxMsHeEIl6+HabMtZqc2W9+
 /JfYYIgu6UIVtQxN9tSOYd30sXpGFKTZvGOHFsPW6i8DcDyaPsrQPcwJBytr2lHfjXl8
 usUd6JBs65Pk2Jxid23sDoq5HA9CVKG4T5ucGJbctf2Rg5qrYwSGcs3z3wauzyfgtqfs uw==
Received: from epsp-dlp-prev21.dcs.leidos.com (EPSP-DLP-PREV21.dcs.leidos.com [10.227.23.21])
	by emp-mxpp102.dcs.leidos.com (PPS) with ESMTPS id 3sn20wnhcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 25 Aug 2023 10:17:18 -0500
Received: from emp-mxpp112.dcs.leidos.com (unknown [149.8.242.102]) by EPSP-DLP-PREV21.dcs.leidos.com with smtp
	(TLS: TLSv1/SSLv3,128bits,ECDHE-RSA-AES128-GCM-SHA256)
	 id 67ef_da8c_efcf7dba_bc4e_4153_a400_679f453e5119;
	Fri, 25 Aug 2023 15:17:17 +0000
Received: from EMP-EXMR181.corp.leidos.com (EMP-EXMR181.corp.leidos.com [10.128.180.21])
	by emp-mxpp112.dcs.leidos.com (8.17.1.5/8.17.1.5) with ESMTPS id 37PFHHFi029995
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 10:17:17 -0500
Received: from EMP-EXMR181.corp.leidos.com (10.128.180.21) by
 EMP-EXMR181.corp.leidos.com (10.128.180.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.2507.27; Fri, 25 Aug 2023 10:17:16 -0500
Received: from USG02-CY1-obe.outbound.protection.office365.us (10.226.129.6)
 by EMP-EXMR181.corp.leidos.com (10.128.180.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 10:17:16 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=JxRgZWTaAqBHSnGuhfLwxHgzs+a24+rVpXS2PGxb9D11D4WNJYb+IrTPg9n6kn6JgE2nDtKkF/xAYZOeaJnHaMe0J67lNlTNHHQbe1EmZ3NwM8S7B9XEWzFthI7iXiWailE7F1JVgMbbXeIW1K2zE2mXqQy5CNHLiiMM0AJHnkOQ1crnJ79vc/bAbikJGPp3MDUe8epTXyF3e1KgeANKOzLaQr9VNKSKb4yRzZENY9yyfZg8O/+rPHVjk6NAP1O2Ab2k6p2MvHi7St5LPIq6AP8nKmAUAZ9bH4Syqj979kOiup3jYOhPOV3RvdTRiIsfkwMORKQdgVs6vqAVVQ8J8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Hu5v3EFjWUvRVgAuZBH35OIpx+WPEwpi1k4wzJPSs4=;
 b=D9dfCJahzgi6OA6p8HvLdZDcKlkXIu+1Ie521ZnpYMCekRPhQnosHX7clHdk7TjeZKwCa9OJrpyzarY4q1Ar1CNcZjY6Wp43sC3v5emHdgycxkAkGQmKLHLPZ8s6r56xrjCyCA/vFx4+Wi6Qows/lX+/Q/slDa43MYn7lq8GVazw22Tj3IQO0cDbRfX4eD9IUGU5K/ne1qQjneRjcgfIYeWpAQgHJrs051+w74QAYPohinvV9up1ZpmNcYgwiQGM+9TgP38cXZuEqA9di7d5yCv4FDrvDem+E/nKKsKAhWK3w/XeIanRXTvdDw+1yuo8sTNqOsSGfxd/iS+VsmdBnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dynetics.com; dmarc=pass action=none header.from=dynetics.com;
 dkim=pass header.d=dynetics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=LeidosCorpUS.onmicrosoft.us; s=selector1-LeidosCorpUS-onmicrosoft-us;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Hu5v3EFjWUvRVgAuZBH35OIpx+WPEwpi1k4wzJPSs4=;
 b=JbI12Iv2lEZqOlgbkkLnujjv/w+pQTZW5fXLNc3505qeX6rIbPNYCmfzOfZge1y3CLiao5jTRNP0/YwF42jsIUxEuO5+q1MsdWG23Oi6lRNw1W1g5gcC9XmIamlXsaI5go9IrDQHisAg/mVU3etxXDayyBMHubbMl8hAkGZ7PaYo7BrJC8BxstFDVWffCbI2ygso0yOU+C9RTHTOihnqYSDIeafMOz/s0+BpLNkOvqGBpchKTtWjdgSTrqpahsGjenEkFg9ZvuNpK+VOy/Vaurh1JqiYkmx+ZAw4cvDVaunXX+hvJmCk4R5hD9yW+Z9KDFsEUHkoLlISLZlkxhy4Pg==
Received: from BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::16)
 by BN2P110MB1334.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30; Fri, 25 Aug
 2023 15:17:15 +0000
Received: from BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM
 ([fe80::d39f:4801:14a8:6bb8]) by BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM
 ([fe80::d39f:4801:14a8:6bb8%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 15:17:15 +0000
From: "Seal, Ryan L. [US-US]" <RYAN.SEAL@dynetics.com>
To: "perper@o2.pl" <perper@o2.pl>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: EXTERNAL: [USRP-users] Re: X410 FPGA build failure with UHD-4.4
Thread-Index: AQHZ12PrPsEYXBSgmUCy8w14cS7k9K/7Hpuy
Date: Fri, 25 Aug 2023 15:17:15 +0000
Message-ID: <BN2P110MB102798C324C33782F76A26709FE3A@BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM>
References: CAFche=jm3ZgLMg8=3Kh8oEuEN4OmE7woeBY4H5-24zHGevg-Og@mail.gmail.com
 <dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU@lists.ettus.com>
In-Reply-To: <dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_Enabled=True;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_SiteId=b64da4ac-e800-4cfc-8931-e607f720a1b8;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_SetDate=2023-08-25T15:17:49.191Z;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_Name=Unrestricted;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_ContentBits=0;MSIP_Label_c968a81f-7ed4-4faa-9408-9652e001dd96_Method=Privileged;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1027:EE_|BN2P110MB1334:EE_
x-ms-office365-filtering-correlation-id: d2e3a091-d07a-4c44-007a-08dba57e5d3c
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YMLd/28cuEw6bnzB7rFtUayPT+jvFk3dm1bN0k8xYCXiGReKyJZuIrHxBnirNUT1N1euAScFAX5QR91I/oBYyLWRa+LrIVBCPI79DUZqUvJs9WgYJPGCwlwpWZpp4TEOG8nF6JkHT1jafKiglq0FWwarUa5/Pdwn79TsHRUpPlpNkOD5fNvrQwJQQDILKXHu/PNch0gu2JqNmqq/dPmc2XHZROirNOizJwgY5JGT+Fz8IvoaSb8DGPZmtyVPSYfBXg/d+KVQ4wrx44Swvz+kN8O4KNAiofQ/p5VY4wID5L7JlPiWv051woh2sgk/7iKSKwWwHqKg+zARWWJU7J0bU3oAJuucY3gDhwy5YesfL2MC3szIpon8u9FkQ1DbBguNbcOEmPxuf+QxS1cNG+qxw29librbtG7x7+TybSlibIsZ5D4Kw5Sx+vCKK1KvApWyb6Tlmjzs8oRynL1/zlXXF/ZRWr9FXi7o/uu0394LZKqnHG8Lvas1lXxtrfaHp31uudH6+7GGcg19BKykItdJdsrwTLYlMOLqhNQ9+qY4wHRhm0qNslfh9T7X8vx87M7eNhqBoSnURtDYnv/UV0J0XS3qsVPFqtSjjtMp9Ulfj++rOtpbr57rjuU15kyFqxFG
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(1800799009)(451199024)(186009)(498600001)(19627405001)(83380400001)(9686003)(66574015)(26005)(55016003)(5660300002)(52536014)(2906002)(8676002)(8936002)(38070700005)(38100700002)(122000001)(66556008)(66946007)(76116006)(66476007)(86362001)(71200400001)(64756008)(53546011)(33656002)(110136005)(7696005)(66446008)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: nOTrH0JjvaiKy9U7e0oJmCmXi/7t4Y36Pw98ePo3ySLwc5NKHwDT7MIZ9P/XNyUd4Xv6m4VdpJ82fZd53vdaYoZoDLVShkDfX0L5+Fc5SwYYUGe2aSPgujx5wDdhCdQvTrotEUB6dReXZyElI9K83Ml7hhA2vDiTNesVKcLFa4hBwrv6tC7DOG7OuDKKXZMt2hMGuEtEi5u22Op2141deHL/iU09TfHXjdM5gRhzH9FlTqKxGzthKVi4Yy7BKWKJQ4mHFa7Xk5fXx05GX7TNoW0OIHmawNoKxWoj0ixGTmFqUw8n4aRtpCDMsb6DZxAmvCx+UHitB9M9u07bB6zec0khWBB967rggyeGgTuPrGfRIcC8T5QZgfpUcfxhy2S+aMKigs+V2YdoyFimcunl9jQzeOzMZevDyHM1ji7waco=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e3a091-d07a-4c44-007a-08dba57e5d3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 15:17:15.1738
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b64da4ac-e800-4cfc-8931-e607f720a1b8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1334
X-OriginatorOrg: dynetics.com
X-EmailSecurity-Header: 1
X-RCIS-Action: ALLOW
X-Proofpoint-ORIG-GUID: sh6qkZgPoASufOFWWfXAFOlTtnFNZeoZ
X-Proofpoint-GUID: sh6qkZgPoASufOFWWfXAFOlTtnFNZeoZ
X-Proofpoint-Spam-Details: rule=notspam policy=outbound score=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 clxscore=1011 mlxscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2308250136
Message-ID-Hash: A7IETM7KC4O57QP2PGD7WRM52Y7CYYVP
X-Message-ID-Hash: A7IETM7KC4O57QP2PGD7WRM52Y7CYYVP
X-MailFrom: RYAN.SEAL@dynetics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EXTERNAL: Re: X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A7IETM7KC4O57QP2PGD7WRM52Y7CYYVP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2734469160978245667=="

--===============2734469160978245667==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB102798C324C33782F76A26709FE3ABN2P110MB1027NAMP_"

--_000_BN2P110MB102798C324C33782F76A26709FE3ABN2P110MB1027NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

CAUTION: This email originated from outside of Leidos. Be cautious when cli=
cking or opening content.

Hi Piotr,

That's exactly what I was attempting to do, build a Vivado project. I'll ma=
ke a note of this.

Thanks for the tip.

Ryan
________________________________
From: perper@o2.pl <perper@o2.pl>
Sent: Friday, August 25, 2023 9:52 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: EXTERNAL: [USRP-users] Re: X410 FPGA build failure with UHD-4.4


Hello,

The undefined RFNOC_EDGE_TBL_FILE macro is a typical error when you try to =
build a Vivado project generated for X410.

The reason is that the macro is not passed correctly when synthesizing the =
Vivado project. My workaround was to use synth_design command generated by =
UHD X410 Makefile. An example:

synth_design -top x4xx -part xczu28dr-ffvg1517-2-e -verilog_define QSFP0_0=
=3D2 -verilog_define QSFP0_1=3D2 -verilog_define QSFP0_2=3D2 -verilog_defin=
e QSFP0_3=3D2 -verilog_define RFBW_200M=3D1 -verilog_define X410=3D1 -veril=
og_define GIT_HASH=3D32'hfbf186b7 -verilog_define RFNOC_EDGE_TBL_FILE=3D/ho=
me/user/RFSoC/uhd/fpga/usrp3/top/x400/x410_200_static_router.hex -verilog_d=
efine RFNOC_IMAGE_CORE_HDR=3Dx410_200_rfnoc_image_core.vh -verilog_define U=
HD_FPGA_DIR=3D/home/user/RFSoC/uhd/fpga/usrp3/top/../.

I don=92t remember exactly how I obtained it.

Best Regards,
Piotr Krysik

--_000_BN2P110MB102798C324C33782F76A26709FE3ABN2P110MB1027NAMP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"container-fluid" style=3D"width: 85%;">
<div style=3D"background-color: #ffffff; width: 100%; padding: 4pt; font-si=
ze: 10pt; line-height: 14pt; font-family: 'Arial'; color: black; text-align=
: left; border: 2pt solid #FFA500;">
<strong><span style=3D"color: #000000;">
<p>CAUTION:</span> </strong>This email originated from outside of Leidos. B=
e cautious when clicking or opening content.</p>
<p></p>
</div>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Piotr,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
That's exactly what I was attempting to do, build a Vivado project. I'll ma=
ke a note of this.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt;">Thanks for the tip.</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Ryan</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> perper@o2.pl &lt;perp=
er@o2.pl&gt;<br>
<b>Sent:</b> Friday, August 25, 2023 9:52 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> EXTERNAL: [USRP-users] Re: X410 FPGA build failure with UHD=
-4.4</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello,</p>
<p>The undefined <strong>RFNOC_EDGE_TBL_FILE</strong> macro is a typical er=
ror when you try to build a Vivado project generated for X410.</p>
<p>The reason is that the macro is not passed correctly when synthesizing t=
he Vivado project. My workaround was to use synth_design command generated =
by UHD X410 Makefile. An example:</p>
<p>synth_design -top x4xx -part xczu28dr-ffvg1517-2-e -verilog_define QSFP0=
_0=3D2 -verilog_define QSFP0_1=3D2 -verilog_define QSFP0_2=3D2 -verilog_def=
ine QSFP0_3=3D2 -verilog_define RFBW_200M=3D1 -verilog_define X410=3D1 -ver=
ilog_define GIT_HASH=3D32'hfbf186b7 -verilog_define
 RFNOC_EDGE_TBL_FILE=3D/home/user/RFSoC/uhd/fpga/usrp3/top/x400/x410_200_st=
atic_router.hex -verilog_define RFNOC_IMAGE_CORE_HDR=3Dx410_200_rfnoc_image=
_core.vh -verilog_define UHD_FPGA_DIR=3D/home/user/RFSoC/uhd/fpga/usrp3/top=
/../.</p>
<p>I don=92t remember exactly how I obtained it.</p>
<p>Best Regards,<br>
Piotr Krysik</p>
</div>
</div>
</body>
</html>

--_000_BN2P110MB102798C324C33782F76A26709FE3ABN2P110MB1027NAMP_--

--===============2734469160978245667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2734469160978245667==--
