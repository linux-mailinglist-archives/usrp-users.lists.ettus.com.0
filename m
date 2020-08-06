Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3135F23DD9C
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 19:12:43 +0200 (CEST)
Received: from [::1] (port=53012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3jRZ-0002Bd-Qi; Thu, 06 Aug 2020 13:12:41 -0400
Received: from mail-bn8nam12on2048.outbound.protection.outlook.com
 ([40.107.237.48]:44640 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1k3jRV-000243-Gv
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 13:12:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lovORMFeO5wKJT26dYQ9BajzBpeuVEWn7nkD5o/Z++9UwuZuCFgLzZn2f13QjpK2QFY0nmm5JjBLgra21H/GsIIpQKW8COKJtCfAMIM5+f/5lXkVNMJDyddeY/IUCxDGdhUO3fQWL8xxoglgECZkC5YTx5iyPSTn5yGUf9jeqf9aQzxxOpYju9hwqY2P1q4f2JDaGCPFRT/R5JppkszfgE50nvS/BcOalukVlDAE64wQdy66O0TEl5V9cTuBTW4VJEBNt97MdZ6Q7N/TUYAdSNdQS0qDXgc5k/0CRkfzIbsaZLLZQ4xFAmdc7hr/HIwhfm5dSHzxYvHXFNEilZGJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qwGyV2z6oiGw8QWdPvRQu7+rWCxTDISUbyFbW6/gVaY=;
 b=jA8bJjuZSucExORkJoF5a9Z+4i5pLMv/6FArKIwufk0X+VYJ+FWxo6Ms/wpwKd7tfyoOdqylI1I8crxPs9ExifBQlKt6yoyTioY1HnflPKh1oE45iBgRIU4VZLzv8IFsXMTMluRM1h+cTRmFmZa/UVP3IoSBkhzQAlRCUeKElgALHzd6gdlhj9T4wJ9EJw47UEGgIW5CHw6dD7PvhrjhncrKDeXZ2qW3gIqBwTKz1GOAy4syDPbgpa1vquk8OcBwYr6VqYf346WI+HSwEnLynzhPIPsg2Vt2gb5tNeCRZISne7seggq9cjrIH5sYjYm24oQ63KU8rl9srHidBFs7Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qwGyV2z6oiGw8QWdPvRQu7+rWCxTDISUbyFbW6/gVaY=;
 b=GtUNmL5ICfjWNXeKgDRl0BCe5wyvM+yK9Jdyb/zp/TWY/WHDnEO6clTQPXOMXLcjoMmFzy88zyUMWPHVV4KqRTouYvTc2VYCUps6gRE5leLYwK7N87yzBCzXps+JRyOIR/dm2KOOp5l20QcXeaYrHe39bE0O3e0OrsC1Zw1Geqk=
Received: from MW3PR19MB4268.namprd19.prod.outlook.com (2603:10b6:303:4f::17)
 by MWHPR19MB0093.namprd19.prod.outlook.com (2603:10b6:301:6a::35)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Thu, 6 Aug
 2020 17:11:56 +0000
Received: from MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643]) by MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643%9]) with mapi id 15.20.3261.015; Thu, 6 Aug 2020
 17:11:56 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Re: Signal transmission on a USRP X310 
Thread-Index: AdZsE5QXMJJoy5kHS+emP09Hqn21og==
Date: Thu, 6 Aug 2020 17:11:55 +0000
Message-ID: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21cfbfd6-fed4-464b-ec65-08d83a2bd26c
x-ms-traffictypediagnostic: MWHPR19MB0093:
x-microsoft-antispam-prvs: <MWHPR19MB00931B2E460DD6676F40F343C6480@MWHPR19MB0093.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +R/gIpk3hRJ8Q7qA0qI5nmkwQ1bxHc81ZSssIoT7/ydfE0hgEc3gxzLmiPUYQtNEcdMLVEssXv7BFJ5/EKJ5gICYFA/EFRn2QuK/mu4xIbtiDFXOrCZprl98MwlwcBw1fWkapj24TPbpsSvrCXC96RcR4WK3qajZa8vNWSv5b3DHF7ZZ+RNRTvlG4kAcaMSumh3xdYW9AZkTJqA/uUSeoBeqIiSqq04ertobBOLuWHS6s0vNx5lf1LWGxBszbXigS0e9Fm+76L38lVm18HO9dl5cXJlH0w2XOstyUtIcQmzmQgO1ipC/iGDy/OczSMv+xNjERd+4E7QGFrwBpsjiLQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR19MB4268.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(376002)(136003)(39840400004)(396003)(44832011)(86362001)(33656002)(4743002)(55016002)(4744005)(9686003)(52536014)(5660300002)(2906002)(26005)(8936002)(66556008)(6916009)(66446008)(186003)(7696005)(6506007)(316002)(71200400001)(8676002)(66476007)(508600001)(66946007)(76116006)(64756008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: vXlGHwTEZC2kahqGm+AmuYcZETKJW7bd0MKGPvb8Wk9LOiE5R63O7Q646hBq7ZfiOdrfbIF72XauqnHajVTiSnT0F/q3aOg4vGIpoz4vMbdkM4PqrciYb3NvDtywDve3/M1Q3toSdJOQ5TjwtDeYu6l+wRzVBbk+UlIjf6DwGDxC3ZUNomHpDq7qBI/lR0UHcmBxN1N/mFjdSUHePJUEdVhLg0shLzE98oyNxBieZtKr6SeIwyAm4ydR0N9uC4UYQNCzSFyD173S6+M19Zp0412TGcGCjU++wI8QGkn33V10g9WlbmXs4XcfY41tqzAAysiHEZ12F34O9cqBxJ+ijnjqmMlbk+oh+ndiEdnYHqzKQo/LSa9o20uSRN4ggsmon50UyadNaaFQfrZuY3XfMKXCP/Mnjk9VRl5Oos1jSLznLWJL70VIRw5+owQTNWYwTE1cLg+pnED7fvMFAjTFaiUSC+4j2jJXSfq1fai593uaa0L7TeAZsLsghn4pgKXZTHjB9QZiUdxnNK5Gi83N/5ThLGH89POTbmkSDbB6N9VlqwrbPKrpTggRttW5iWaZdlcz/SDNowHVl5UPgcsZouY9cifHG4adNlH1Lh24dOiy3nrU/1DLoZ5DABwY7rlXclwttGcRRaYAURN5F6nbXw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR19MB4268.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21cfbfd6-fed4-464b-ec65-08d83a2bd26c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 17:11:55.9153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KM0Kfqm5hQ/rKvdBwcpNGpiuTgTLKbDjbg7aLZrVWXuYX8hE6WKJxExiB+kRAWlJMbRQA26SdTyZnvY5HbDP7BlIQk5kWqV+Lx/XQS1fy90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB0093
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============2888931471644324668=="
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

--===============2888931471644324668==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW3PR19MB42683E64A27B9B0C0A3D0683C6480MW3PR19MB4268namp_"

--_000_MW3PR19MB42683E64A27B9B0C0A3D0683C6480MW3PR19MB4268namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Marcus,

Ok that makes sense, I thought it might be something to do with the mixers =
and leakage, but I wasn't sure. So I have tried lowering the gain to 0 dB, =
and there is no change in the signal. The signal does cause problems as I a=
m working on a GPS related application, so even though -100 dBm is a week s=
ignal, its still stronger than GPS. Are there any options other than pre-fi=
ltering the received signal to mitigate the undesired signal around baseban=
d? Is there a way using hardware I can reduce leakage at the terminal?

Best regards,

Jerrid Plymale

--_000_MW3PR19MB42683E64A27B9B0C0A3D0683C6480MW3PR19MB4268namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ok that makes sense, I thought it might be something=
 to do with the mixers and leakage, but I wasn&#8217;t sure. So I have trie=
d lowering the gain to 0 dB, and there is no change in the signal. The sign=
al does cause problems as I am working on
 a GPS related application, so even though -100 dBm is a week signal, its s=
till stronger than GPS. Are there any options other than pre-filtering the =
received signal to mitigate the undesired signal around baseband? Is there =
a way using hardware I can reduce
 leakage at the terminal?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<b><o:p></o:p></b></p>
</div>
</body>
</html>

--_000_MW3PR19MB42683E64A27B9B0C0A3D0683C6480MW3PR19MB4268namp_--


--===============2888931471644324668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2888931471644324668==--

