Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B63DC306C6B
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jan 2021 05:49:16 +0100 (CET)
Received: from [::1] (port=60600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4zF3-0007EY-1P; Wed, 27 Jan 2021 23:49:13 -0500
Received: from mail-eopbgr1380132.outbound.protection.outlook.com
 ([40.107.138.132]:37536 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1l4zEy-00079p-CP
 for USRP-users@lists.ettus.com; Wed, 27 Jan 2021 23:49:09 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVx5n9WMxCc9tPLi4dVROltaLQUZRaiDk6bYM5LDdfCX/0a+i1sx1gT1mCnFtYPGQ7PuuiLauqD3/dsbxBvzb7l1DLxgDkYfS8HUdYIsUZNijKQRoDBUTS+9gwhYjAlak8nw0I1Q1SN+OlqssxDecjvztzI2EgbMajjr+6V9nVJ793SVCwlgTaFpcxy7EgW/7LEFyJF7yZvP1yjt9iR4dn2r526Go3DA5NHbfw65I2oySdMIDo3eFFTF/ghGkmNg85cATH6P9vD55D/PeNZw3qz0i0cEZU+TKQehhmzLZEgwBiQJySoL0VTnduZmZXqgWZtjGdp754bZ4OFDdeu7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HW86JsjsGo2dMABJVhIHJLqFwqQLDBN8duVrDEMpQZI=;
 b=cOWjwbTiUlsIJmEsVAUHQ5ZXkibL+TaWBDgShRYkRPcJM4lgSYgotDN+RGWBaC3+fYGlA4S+2xqR1Vl0/agBYO4aXlfsuSsI918HhOn/2Olub9jj42+GN2AwTkfz48oQ5q4yVbiJE/NWxC2gDdv4uqq8uc3s3R/4/27HHIbzpa2cNuYsJVhoNE9ieOpYXZwYUBL1QsedQEY3k3Sa3wrjZEDt5Ze9E86YZYDNRlAi3S9HJ9rj5zcpnZRwTuGcoNxNI0D/+PRWfxciTNzbLY1YQ+PoBa3HMY/UVr/eFtJTgAKgpXOuhlMF89IbA9w/+ToV7yg8vRNpVkBJPuttYCqMLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HW86JsjsGo2dMABJVhIHJLqFwqQLDBN8duVrDEMpQZI=;
 b=c3LXwB6Qu2tnl6Ly8iJbqCGAspR5iijB2q+skktpNKhAtGGQRs0KA2MbCTlKmYsyannpWwFi+X7O+tDztlUoNmRfu8fwe4KZvgrGl60qJ+iE5VQHL17wpPMxbC/Z1OndRXmsYDn7ePva3+jll0m25tIOkMn1LKfre4rntszud9Y=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3502.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:6f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Thu, 28 Jan
 2021 04:48:23 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d5de:6495:1afb:73f3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d5de:6495:1afb:73f3%3]) with mapi id 15.20.3784.019; Thu, 28 Jan 2021
 04:48:23 +0000
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] USRP sample rate and bandwidth
Thread-Index: AQHW6XG/cAfb865gnU+dBcxvX5qtbaoloogAgBW/+YyAAAH2IYAAOI8AgADxm20=
Date: Thu, 28 Jan 2021 04:48:23 +0000
Message-ID: <MA1PR01MB2588BA57C81AA948929A77CB90BA9@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <5FFF077E.9040704@gmail.com>
 <MA1PR01MB258853948A0738D874D0141690BB0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB2588B58A4784F6A8BEC11D0490BB0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <CAB__hTSB9gS9UJNkSkd1qCA44f9A_M=9KPtq6boBNwpfs=Ya4g@mail.gmail.com>
In-Reply-To: <CAB__hTSB9gS9UJNkSkd1qCA44f9A_M=9KPtq6boBNwpfs=Ya4g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5148e4c6-69e0-4ac0-ac5e-08d8c347f1a2
x-ms-traffictypediagnostic: MAXPR01MB3502:
x-microsoft-antispam-prvs: <MAXPR01MB35027FB4AB59AAFF2C5CF7F090BA9@MAXPR01MB3502.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cczdtOMBtd1w5W0xubBnHDFOL2DFFnZyYldpe0fW8kOeAfAs3aLEoh1nEwgMp8uL6ij54a5qVed1T2DEGxeRPiKUlzA9DDl+DTBxW5e4+9nAwvcrSbXoXh9r6ONKnMmSHVRnRGLl3aSL5YGc4bO5Obdj/yKiKPKLui3q9wUUH2BTFDHI3Mg2uhevBxITFdM9LClD189SwUIMRA08iwCehafzZxsKTlBjlzFlrL84QRAv//kfoJ30vNgQj4iN2TOundwtOqyg+TK4rSMy+aRPjk097Bqg480KlNaBf9tr2vymYxA+jh65/ICdHP7/NQgwtxcWRhZpbmIG5IeBG4siGTLvTwf77TWoxGtvvC/mAjT4RA3AMt185jOTQitHoiZo4MnHRor1wyVTay2Wm4OsIemtzhyA1j1PiUYVnqYeesuZ41V8V8jlbWnIslpcDv8V4hIrBboLbN7EeEQCBsfQqXZbcnEcA5hfbqla7KVd5/c8Ey4nybtP94/pfUphcGzRJ0hHQMRKzgNIb/nG5a8CYbL/NEcBsVubuRRffM19lVBEv1X8TacK4otKWV2VD0AWdE30RoSpLdcJ5H4iFpvijC0CuXIAyIqJGcK7Ru8JN6c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(396003)(366004)(346002)(376002)(136003)(39840400004)(8936002)(2906002)(966005)(478600001)(8676002)(4326008)(66574015)(66946007)(186003)(26005)(53546011)(83380400001)(52536014)(166002)(9686003)(6506007)(19627405001)(316002)(54906003)(7696005)(71200400001)(86362001)(33656002)(55016002)(66556008)(64756008)(76116006)(91956017)(66446008)(6916009)(5660300002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?HS1d6qS7xaq3AVIU+LjvcI8M1JqmmXJCqL7octS8MsFgrydBAUml0buf?=
 =?Windows-1252?Q?EwzNu8FUJf7lQNNTh6YbiEiQMa41YxZl+qWJD4vQTkyt8wj83v9Lw2ok?=
 =?Windows-1252?Q?hzxMQ7cV1XX2muCCEsfHPWiZmI1kGhWreNS4w92vYd85aAviTXu8f6F8?=
 =?Windows-1252?Q?hwyC9UtNGnnZbFW2tjoP6n+yC2/WYdxTiGkW/y78A7JAsRnXexKr9F0J?=
 =?Windows-1252?Q?tBuy1EoaB3nuzboLBJk73oBFaPQol61ib+rShU6xI+Z7xr0CgqWDubDx?=
 =?Windows-1252?Q?if2sZvyQY6FEK7wHHRrBk8AehW0zrWnaLgDaI260K0t84LsT8N60ox7k?=
 =?Windows-1252?Q?UY9/2FdNjWgYdqSu/0wpPzHTJfaP9UUBmNLtZJ+xljLAwqp0T7yK8hS1?=
 =?Windows-1252?Q?mJiuPoW14jEmmS0sQVw9IluARh9rnVgp6WAp8JWoXfWDjyBfa136ZU7h?=
 =?Windows-1252?Q?O1KlYsjocGhbKzWekbkGnpdjM+ZvtgpzLxOeMKOYkST8fIDwvBo1fcIf?=
 =?Windows-1252?Q?E2oPQYNyGYnW8SdkzLETc2uMipZUoJ8dpaUmCHVBxZbcWLDKAFGBj9vH?=
 =?Windows-1252?Q?ZpjBqBr/o9xPsYcuT0tbtn/8XM9rZGUvtVNVqev+fV2fpVOjK8vKV2m6?=
 =?Windows-1252?Q?RRuFB84G++FuvfDL+fRuyskSLTBe2ThjKm1fZjaLd1KF3cfkymNhJx4P?=
 =?Windows-1252?Q?4Kjl1KI1/HYjGbIKGSvoHJQhvmh/yyiTnT7kndDBnxsqXBs++WiZuVDs?=
 =?Windows-1252?Q?+IZb9euUxWTRMcodR7K12LMHmGVZPNEnZsoZQoCl5f2zu9sauFXtYhbb?=
 =?Windows-1252?Q?mjqoDJT7RVXBXzYXVwjgubZ5K1Gn6OtM+K8aeLseL7UmwQDjBurqj+s4?=
 =?Windows-1252?Q?y4nhLfZinQ/a4y/YtCtJjnnH5oZcVxL9SGJLf4WxPKn1K8c795c4AiIV?=
 =?Windows-1252?Q?eTsds8N/MNz4dRmaTkqqyjRhnQmC49kvjv8GVivASwPnrJ9KSw+bp/1a?=
 =?Windows-1252?Q?7mNGvPCOIszLX97QbvbfdTQEna/OkVbbODRabQ+PaIeNm4mQ7VABDHZI?=
 =?Windows-1252?Q?n96cR/zrrehTxGOSSETlQfGXopL+pwQZnhZ6a6RH1I42kqXjxlTYZJzU?=
 =?Windows-1252?Q?JTE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5148e4c6-69e0-4ac0-ac5e-08d8c347f1a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 04:48:23.5520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fcCZNc5EgWF+KqLMnRZYxLgG+j+USe+zGgsIkAifYHf5f3WcK6/Uz8y+MP/NRW4wF6z5UWZ6CDwlmbt7w/Q0aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3502
Subject: Re: [USRP-users] USRP sample rate and bandwidth
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6735636763622256915=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6735636763622256915==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588BA57C81AA948929A77CB90BA9MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588BA57C81AA948929A77CB90BA9MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Okay Rob thanks for the information.

Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Wednesday, January 27, 2021 7:53 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>
Cc: USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>; Marcus D. Leec=
h <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] USRP sample rate and bandwidth

On the 2955, the Radio RF bandwidth is fixed at 160 MHz and the A/D rate is=
 fixed at 200 MS/s. You can't change these but you can choose to downconver=
t the signal to a lower sample rate in the FPGA using the DDC using integer=
 decimation with digital filtering.  The digital filtering works better wit=
h even decimation factors.  On the 2954, the RF bandwidth is fixed at 80 MH=
z and the A/D rate is fixed at 100 MS/s. You can also choose decimation via=
 DDC if you want.
Rob

On Wed, Jan 27, 2021 at 6:02 AM Koyel Das (Vehere) via USRP-users <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I am using usrp 2955/2954

Regards,


Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

________________________________
From: Koyel Das (Vehere) <koyel.das@vehere.com<mailto:koyel.das@vehere.com>=
>
Sent: Wednesday, January 27, 2021 4:27 PM
To: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <USRP-use=
rs@lists.ettus.com<mailto:USRP-users@lists.ettus.com>>; Marcus D. Leech <pa=
tchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com>>
Subject: Re: [USRP-users] USRP sample rate and bandwidth

Thanks Marcus and Kyeong for the information. Could you also provide inform=
ation on how much is the analog bandwidth being set ahead of the ADC? Is it=
 greater than 20 MHz? If so then will my setting bandwidth =3D 20 MHz filte=
r 20 MHz band out of the total band?

Regards,


Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Marcus D. Leech via USRP-users <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, January 13, 2021 8:15 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] USRP sample rate and bandwidth

On 01/13/2021 01:08 AM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is the bandwidth unless filter is used s=
o does that mean USRP is filtering out 20 MHz keeping sample rate at 100 MH=
z by itself?

Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>
Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the analo=
g filter bandwidth ahead of the ADC.

Many hardware configurations, however, have fixed analog bandwidth ahead of=
 the ADC, and this parameter setting will do
  nothing in those situations.

Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x) ha=
s this control, as do some of the older
  daughtercards--DBSRX2, TVRX2.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MA1PR01MB2588BA57C81AA948929A77CB90BA9MA1PR01MB2588INDP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Okay Rob thanks for the information.</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div id=3D"Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols; font-size:16px; line-height:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" targ=
et=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.vehere.com</a><=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed"=
 style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/=
?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;a=
ttid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-=
NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOp=
lQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4=
a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34)=
; font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</sp=
an><a href=3D"https://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-si=
ze:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-lin=
e:none"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:1=
8pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&am=
p;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;=
attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-=
plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-=
h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1">=
</span></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family=
:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.face=
book.com/VehereIndia/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"=
LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Ar=
ial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img border=3D"0=
" alt=3D"unnamed (2)" style=3D"width:18pt; height:18pt" src=3D"https://mail=
.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D1=
5cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-=
R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5Rw=
gNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245=
179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-fa=
mily:Tahoma,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Wednesday, January 27, 2021 7:53 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;USRP-users@lists.ettus.com&gt;; M=
arcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] USRP sample rate and bandwidth</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On the 2955, the Radio RF bandwidth is fixed at 160 MHz an=
d the A/D rate is fixed at 200 MS/s. You can't change these but you can cho=
ose to downconvert the signal to a lower sample rate in the FPGA using the =
DDC using integer decimation with
 digital filtering.&nbsp; The digital filtering works better with even deci=
mation factors.&nbsp; On the 2954, the RF bandwidth is fixed at 80 MHz and =
the A/D rate is fixed at 100 MS/s. You can also choose decimation via DDC i=
f you want.&nbsp;
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Jan 27, 2021 at 6:02 AM Koy=
el Das (Vehere) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am using usrp 2955/2954</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_gmail-m_-8828170130624458856Signature">
<div>
<div id=3D"x_gmail-m_-8828170130624458856divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sa=
ns-serif">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<p style=3D"margin-top:0px; margin-bottom:0px; font-family:Calibri,Helvetic=
a,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&q=
uot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,E=
mojiSymbols; font-size:16px; line-height:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" rel=
=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoL=
P" target=3D"_blank"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; f=
ont-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><im=
g border=3D"0" alt=3D"unnamed" style=3D"width:18pt; height:18pt" src=3D"htt=
ps://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&a=
mp;th=3D15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ=
_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8=
KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1=
498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><spa=
n style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-ser=
if,serif,EmojiFont">&nbsp;</span><a href=3D"https://twitter.com/VehereIndia=
" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoLP" t=
arget=3D"_blank"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-=
family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img bo=
rder=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:18pt" src=3D"htt=
ps://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&a=
mp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ=
9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0ce=
t3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1=
498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><spa=
n style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-ser=
if,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.facebook.com/Vehere=
India/" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPN=
oLP" target=3D"_blank"><span style=3D"color:rgb(34,34,34); font-size:9.5pt;=
 font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><=
img border=3D"0" alt=3D"unnamed (2)" style=3D"width:18pt; height:18pt" src=
=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=
=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=
=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclh=
yH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&am=
p;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span=
></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial=
,sans-serif,serif,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34=
,34,34); font-family:Tahoma,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
<div id=3D"x_gmail-m_-8828170130624458856appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-8828170130624458856divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Koyel Das (Vehere) &lt;<a href=3D"mailto:koyel.das@vehere.com" tar=
get=3D"_blank">koyel.das@vehere.com</a>&gt;<br>
<b>Sent:</b> Wednesday, January 27, 2021 4:27 PM<br>
<b>To:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;; Marcus D. Leech=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] USRP sample rate and bandwidth</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Marcus and Kyeong for the information. Could you also provide inform=
ation on how much is the analog bandwidth being set ahead of the ADC? Is it=
 greater than 20 MHz? If so then will my setting bandwidth =3D 20 MHz filte=
r 20 MHz band out of the total band?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_gmail-m_-8828170130624458856x_Signature">
<div>
<div id=3D"x_gmail-m_-8828170130624458856x_divtagdefaultwrapper" dir=3D"ltr=
" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,=
sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<p style=3D"margin-top:0px; margin-bottom:0px; font-family:Calibri,Helvetic=
a,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&q=
uot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,E=
mojiSymbols; font-size:16px; line-height:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" rel=
=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoL=
P" target=3D"_blank"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; f=
ont-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><im=
g border=3D"0" alt=3D"unnamed" style=3D"width:18pt; height:18pt" src=3D"htt=
ps://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&a=
mp;th=3D15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ=
_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8=
KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1=
498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><spa=
n style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-ser=
if,serif,EmojiFont">&nbsp;</span><a href=3D"https://twitter.com/VehereIndia=
" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoLP" t=
arget=3D"_blank"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-=
family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img bo=
rder=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:18pt" src=3D"htt=
ps://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&a=
mp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ=
9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0ce=
t3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1=
498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><spa=
n style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-ser=
if,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.facebook.com/Vehere=
India/" rel=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPN=
oLP" target=3D"_blank"><span style=3D"color:rgb(34,34,34); font-size:9.5pt;=
 font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:none"><=
img border=3D"0" alt=3D"unnamed (2)" style=3D"width:18pt; height:18pt" src=
=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=
=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=
=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclh=
yH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&am=
p;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span=
></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial=
,sans-serif,serif,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34=
,34,34); font-family:Tahoma,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
<div id=3D"x_gmail-m_-8828170130624458856x_appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-8828170130624458856x_divRplyFwdMsg" dir=3D"ltr"><font=
 face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b=
>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.=
com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br=
>
<b>Sent:</b> Wednesday, January 13, 2021 8:15 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] USRP sample rate and bandwidth</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<div>On 01/13/2021 01:08 AM, Koyel Das (Vehere) via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is
 the bandwidth unless filter is used so does that mean USRP is filtering ou=
t 20 MHz keeping sample rate at 100 MHz by itself?</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div id=3D"x_gmail-m_-8828170130624458856x_x_Signature">
<div>
<div id=3D"x_gmail-m_-8828170130624458856x_x_divtagdefaultwrapper" dir=3D"l=
tr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetic=
a,sans-serif">
<p><font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" rel=
=3D"noopener noreferrer" id=3D"x_gmail-m_-8828170130624458856LPNoLP" target=
=3D"_blank">www.vehere.com</a></font></font><font face=3D"Tahoma,serif" sty=
le=3D"font-size:16px"><font style=3D"font-size:9pt"><i></i></font></font><b=
r>
</div>
</div>
</div>
</div>
</blockquote>
Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the analo=
g filter bandwidth ahead of the ADC.<br>
<br>
Many hardware configurations, however, have fixed analog bandwidth ahead of=
 the ADC, and this parameter setting will do<br>
&nbsp; nothing in those situations.<br>
<br>
Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x) ha=
s this control, as do some of the older<br>
&nbsp; daughtercards--DBSRX2, TVRX2.<br>
<br>
<br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB2588BA57C81AA948929A77CB90BA9MA1PR01MB2588INDP_--


--===============6735636763622256915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6735636763622256915==--

