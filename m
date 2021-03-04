Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED832D2EF
	for <lists+usrp-users@lfdr.de>; Thu,  4 Mar 2021 13:30:44 +0100 (CET)
Received: from [::1] (port=35206 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHn7n-0003l5-CI; Thu, 04 Mar 2021 07:30:39 -0500
Received: from mail-eopbgr1390115.outbound.protection.outlook.com
 ([40.107.139.115]:33376 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sourin.mondal@vehere.com>)
 id 1lHn7j-0003g3-GO
 for usrp-users@lists.ettus.com; Thu, 04 Mar 2021 07:30:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YrSgrKqlZr2ui5lOLfPRBTBWtb/frtHepU0tJcXvuf/9c2+9tzbCW4tDe5dCfGgmQWqys5WWjiCVhUGlhJxtZhimLgoaeGtJCHVpUjep9yUbRKNfcXDM9xeLdlw57iqp/l887P4i5X6SNwT1WRLLnbZcHcRoqgplR02qj8nHhBNkLivaLDydS3xQkPXcg+Tydek4I+WePiSi638O9n2c4VnK+8gqMvnejyxGdUATOZMhk8r4lunlrUiycbi13TMBr67i102ITcGcZZDKX1Ou5Lcv5011GPTncAOoiRAOmeO7blks4y1xLaH3bfn/ojPpn+Af/MEGqS/hVbR1urgNBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiaI3Y/OfErFcnbYg6+Ox278PIVFZYUS9hD/LkcUlts=;
 b=Hpy6FdsoU764r1vLZQaq5tWapREmVD9u4QN84QYDCYq26R/CJCh+pI/4EO43n2XV7fpxU5YjOQiXuiBh/J8uN9UDlr+NbJwAO2qySsAkS5sZ5rdxGUCXMwi47BZdO5k9D8r8mN+iC++NxToq64vVURNy2IMIfwNrJxntrOU4yOzIhrlw1oDaYMYyUwxslRi0VKfgHPM1uG+GFH4VOachpC8KYzWTzx0hcPouAooJcKC7g+uAPbm0NqodWlSDQlNtsp8WnPRDJM5FnjnWgu7jwsWciTMZzXfxtJlRsptJf/t8See6hdWRMufwPXZK3yF9AvzENvr/njOKN6HcksZdCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiaI3Y/OfErFcnbYg6+Ox278PIVFZYUS9hD/LkcUlts=;
 b=VboTYzIBvof1/ogDBJ+jwWgpUWjVemyc6oPzpvDZVig0ATAgskM4piZ9P6+Df01C6jU/M7PrEk+BMZRuCVxllPUCE0C7v9NEityqGqWOSHrAHTNUrISEc6IzGTsGJik7YejO2/f5B0Nzi0w274z8dc/uyyBv2TX0b7Za8iRV+Eg=
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:3b::16)
 by BMXPR01MB3045.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:3c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Thu, 4 Mar
 2021 12:29:52 +0000
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7]) by BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7%7]) with mapi id 15.20.3890.028; Thu, 4 Mar 2021
 12:29:52 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: how to install NI Linux device driver in ubutu 20.04
Thread-Index: AQHXEPE9I9PRWd8Vi06uaKAIxyLaug==
Date: Thu, 4 Mar 2021 12:29:52 +0000
Message-ID: <BMXPR01MB27609065B58813893BA639F48B979@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1c121d3-7348-450b-6358-08d8df0935b1
x-ms-traffictypediagnostic: BMXPR01MB3045:
x-microsoft-antispam-prvs: <BMXPR01MB30457CBD8F3A40BB67B16B0B8B979@BMXPR01MB3045.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lZzbNuGFfxDDRaPjjushENdlx2R5WXL+sABJGOmuqC3p4kiM0HyDsUdM1fOg5J+g+n4p2DhuNUpFd+Di3GAgjN6XA8mwCPTIBZ/p/nLyQaJsG5bzDoR3/LVtjvljPpiaxuHTJHnsqay7KyZOX/6tTpWetTI5ihzEfftHq7kXY1xbk4gErgxdw1cHljDbGekUvD2uLdxoO0cQPvQP6mo17hxWaUPBLYb7GLV4r22OwIVthZvu2vTbcxDHRMuuBC/xsMlFF0s2PFWrpy7lmg742Av5uV96BSYHlHZFUFNsaIKd40CmvX2DjOR31UnOW4nmB3lnpvCB2XGIG35lsbGO1JPUm/OM6uhgeHTT224BcUMuxV/nAZlkGeLF3RthOi+kaCBg2aMiWbb78NObJ9Ip4iQkO+RIFPkgYMMar2yt4A0pldwjyMxhQCWeIAono5+36zF2I5kY3AOl7JfpIAVaf7MyDk1yg6Ze0om1r4VwNkr7lgvaFnRv9/eWOGdxPxF/EsoKkWJop0Z9T4zsmhebcz8nTxSybztDQVd38/KNCPqyaTfQoH3VLY6NiPgKuPTDZPw8SxfKOwxKOflTmP7GCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(39840400004)(396003)(376002)(346002)(136003)(366004)(33656002)(478600001)(66574015)(26005)(6916009)(66446008)(5660300002)(186003)(7696005)(166002)(64756008)(19627405001)(83380400001)(6506007)(99936003)(21615005)(86362001)(316002)(8676002)(8936002)(55016002)(2906002)(66616009)(52536014)(91956017)(9686003)(76116006)(71200400001)(66556008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?lQdTLL0RzoxOvGGGnrvdNJz57gQhmzIRt0M0oy2JEpnyZlz0y9JazEb4UL?=
 =?iso-8859-1?Q?+aQkpfJurS9hM3eUv6YO5uUcYiHOsmDsZmpOKG5JRDPNuYqfSeKakb4x7q?=
 =?iso-8859-1?Q?0rdRpHMSSq0CnAFKKB5wm2UoHFxtiESC6W24VIRnHTdCiOLzM8frbLFlZ5?=
 =?iso-8859-1?Q?+wbyfybrDCdyMT7k6hq2jASLv2KBYuX60kpL8KgH9Pp2tW/nMtDEJ1HdG+?=
 =?iso-8859-1?Q?juydLcQg4m7jhLJ7M/yF1JfarqfWH2s1NUrowhhlMSVJ8oODvlm7sITF+A?=
 =?iso-8859-1?Q?YZE78YedVBrJXmKWfCVYZUqIHGGv3H/nKRbhEQ8/GGNdOFKV0sHC03hjCx?=
 =?iso-8859-1?Q?F4+eNIL8SQSrKPLoP2ko78OT/fnXl5oHXPg0NrxAzJFmJSaT/4HWIGhnU5?=
 =?iso-8859-1?Q?y/ggZynR9eN+I3yr7mvL+Gmcw+0i9mh+gbWYf2UZLEy9fbRdstiYiAaiHs?=
 =?iso-8859-1?Q?pbFVF74Mwn98GqUfxbnogXEaP6VLp2Tr4637q3MBZArqFj9LB+ZCXun5Mi?=
 =?iso-8859-1?Q?s6z4gtsbQwne17J3E6uvCPCpVmvFeQo3ONimwRCWJHJNFn5Sis1A5KJleP?=
 =?iso-8859-1?Q?u5tVo6CspeV20aIacvCka7AoCsTKrkgBPgW+OkcktRYC0yQlVxuN2Tr5V8?=
 =?iso-8859-1?Q?HOV4WDk7G3jMIB4oqKcbUlRU1kD2gGOEwyfowVGMIPEYyrc8JC+NqSwLpQ?=
 =?iso-8859-1?Q?ZEP77CFXrT/qHCNkURS9Ish6yN9Q2fNC/IiPv3XP+OKpF4wXrf8I0R2Hql?=
 =?iso-8859-1?Q?MA1EeYLDe1vU2If7Sl9szbGfiNn7cLKNvFhC4DVh8hwfF4LXc5AGkWWaHg?=
 =?iso-8859-1?Q?JsHVXbe+v+7yfAdoGXDB9x6kvo7J4mvuVZEn2MVU5cm0U48kBtoW6yChq5?=
 =?iso-8859-1?Q?cd3JBYieSOQgAqNdBlmUp28tQbse5+uGPk/i5NI5OUBgQQg9DAaH823SF0?=
 =?iso-8859-1?Q?PgqGZMHnObS8tHbsDgqkh41AramG1K5bieg8AoW+ounTTUBN6qiKYcBQqy?=
 =?iso-8859-1?Q?8pxxuq1tn0tm8CaeH2p9ln3oLK0f/ELNs82PeSHHE3JDF8VWs5I2wN9I3m?=
 =?iso-8859-1?Q?gNouJrI8j7+nSZpyiMDYGiPTSJPAXC/bjlXcw5NfFilxtbCCs78hOaYGoG?=
 =?iso-8859-1?Q?/DRxwAk8ISU1Ss02YENjJ0LitLlw3xqhl67GMzDuZbbW8cNGJAaNgz/Xsi?=
 =?iso-8859-1?Q?ifHfpkVZmB30x/6qi/m06OxfW3Rsz2lQHGoOIvPfUs1N2UclgHZRnh61Mr?=
 =?iso-8859-1?Q?RlZl9+dFFxVXYbvlBw3pWGuYVZSvIPeIHJeRfXaElGepPE4t9y08resUvk?=
 =?iso-8859-1?Q?F/ae/EsYz5b5vBHrVZi9M8QdJRP1nmkuPZQTc/XDpDkp9U8=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_004_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_"
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a1c121d3-7348-450b-6358-08d8df0935b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 12:29:52.0193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OK34Jn5vtZaODthFkrQvLs3Bac5CiECsrjY3ZhkrexbNg2w1f4fkcJeldIvtVPYmEmY6HeVUYdMKnJNrYkwKMX+X5ENnqhi19GA9bvlqQbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB3045
Subject: [USRP-users] how to install NI Linux device driver in ubutu 20.04
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
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
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

--_004_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_"

--_000_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to install NI Linux device driver and I followed the steps ment=
ioned in the link "https://files.ettus.com/manual/page_ni_rio_kernel.html" =
but I am facing an error.
Please provide me the proper steps how to install NI Linux device driver in=
 ubuntu 20.04.
Please find the attachment where I wrote the error messages.

with regards,
Sourin Mondal

Associate Software Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +91 9330337699 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere=
.com<http://www.vehere.com/>

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


--_000_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_
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
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am trying to install NI Linux device driver and I followed the steps ment=
ioned in the link &quot;<a href=3D"https://files.ettus.com/manual/page_ni_r=
io_kernel.html" id=3D"LPlnk379007">https://files.ettus.com/manual/page_ni_r=
io_kernel.html</a>&quot; but I am facing an error.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Please provide me the proper steps how to install NI Linux device driver in=
 ubuntu 20.04.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Please find the attachment where I wrote the error messages.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
with regards,<br>
</div>
<div>
<div id=3D"Signature">
<div>
<div style=3D""><font face=3D"Tahoma, sans-serif" color=3D"#222222"><span s=
tyle=3D"font-size:12px"><b>Sourin Mondal</b></span></font><br>
<p style=3D"color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:=
11pt; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,2=
55,255)">
<span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif; co=
lor:rgb(34,34,34)">Associate Software Engineer</span><span style=3D"margin:=
0px; font-family:Tahoma,sans-serif; color:rgb(34,34,34)"><br>
</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-se=
rif; color:rgb(34,34,34)">Vehere | Proactive Communications Intelligence &a=
mp; Cyber Defence<br>
M: +91 9330337699 | T: +91&nbsp;33 40545454 | F: +91&nbsp;33 40545455 | W:&=
nbsp;</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sa=
ns-serif; color:rgb(31,73,125)"><a href=3D"http://www.vehere.com/" target=
=3D"_blank" rel=3D"noopener noreferrer" style=3D"margin:0px"><span style=3D=
"margin:0px; color:rgb(17,85,204)">www.vehere.com</span></a></span><span st=
yle=3D"margin:0px; font-size:9.5pt; font-family:Arial,sans-serif; color:rgb=
(34,34,34); background:white">&nbsp;&nbsp;</span><span style=3D"margin:0px;=
 color:rgb(31,73,125)">&nbsp;</span><span style=3D"margin:0px"></span></p>
<p style=3D"color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:=
11pt; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,2=
55,255)">
<i><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif;=
 color:rgb(34,34,34)">Vehere is the proud recipient of the Fastest Growing =
Technology Company Awards in India &amp; Asia since 2012!<br>
<br>
</span></i><span style=3D"margin:0px; font-size:7.5pt; font-family:Tahoma,s=
ans-serif; color:rgb(34,34,34)">The content of this e-mail is confidential =
and intended solely for the use of the addressee. The text of this email (i=
ncluding any attachments) may contain
 information, which is proprietary and/or confidential or privileged in nat=
ure belonging to Vehere Interactive Pvt Ltd and/or its associates/ group co=
mpanies/ subsidiaries. If you are not the addressee, or the person responsi=
ble for delivering it to the addressee,
 any disclosure, copying, distribution or any action taken or omitted to be=
 taken in reliance on it is prohibited and may be unlawful. If you have rec=
eived this e-mail in error, please notify the sender and remove this commun=
ication entirely from your system.
 The recipient acknowledges that no guarantee or any warranty is given as t=
o completeness and accuracy of the content of the email. The recipient furt=
her acknowledges that the views contained in the email message are those of=
 the sender and may not necessarily
 reflect those of Vehere Interactive Pvt Ltd. Before opening and accessing =
the attachment please check and scan for virus. WARNING: Computer viruses c=
an be transmitted via email. The recipient should check this email and any =
attachments for the presence of
 viruses. The company accepts no liability for any damage caused by any vir=
us transmitted by this email.&nbsp;</span></p>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_--

--_004_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_
Content-Type: text/plain; name="error.txt"
Content-Description: error.txt
Content-Disposition: attachment; filename="error.txt"; size=6790;
	creation-date="Thu, 04 Mar 2021 12:27:54 GMT";
	modification-date="Thu, 04 Mar 2021 12:28:23 GMT"
Content-Transfer-Encoding: base64

c3VkbyBhcHQgaW5zdGFsbCBsaW51eC1oZWFkZXJzLTUuOC4wLTQ0LWdlbmVyaWMKUmVhZGluZyBw
YWNrYWdlIGxpc3RzLi4uIERvbmUKQnVpbGRpbmcgZGVwZW5kZW5jeSB0cmVlICAgICAgIApSZWFk
aW5nIHN0YXRlIGluZm9ybWF0aW9uLi4uIERvbmUKbGludXgtaGVhZGVycy01LjguMC00NC1nZW5l
cmljIGlzIGFscmVhZHkgdGhlIG5ld2VzdCB2ZXJzaW9uICg1LjguMC00NC41MH4yMC4wNC4xKS4K
MCB1cGdyYWRlZCwgMCBuZXdseSBpbnN0YWxsZWQsIDAgdG8gcmVtb3ZlIGFuZCAyOTcgbm90IHVw
Z3JhZGVkLgoxMiBub3QgZnVsbHkgaW5zdGFsbGVkIG9yIHJlbW92ZWQuCkFmdGVyIHRoaXMgb3Bl
cmF0aW9uLCAwIEIgb2YgYWRkaXRpb25hbCBkaXNrIHNwYWNlIHdpbGwgYmUgdXNlZC4KRG8geW91
IHdhbnQgdG8gY29udGludWU/IFtZL25dIHkKU2V0dGluZyB1cCBuaS1rYWwgKDIwLjAuMC40OTE1
Mi0wK2YwKSAuLi4KUmVtb3Zpbmcgb2xkIG5pa2FsLTIwLjAuMGYwIERLTVMgZmlsZXMuLi4KCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpEZWxldGluZyBtb2R1bGUgdmVyc2lvbjogMjAu
MC4wZjAKY29tcGxldGVseSBmcm9tIHRoZSBES01TIHRyZWUuCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQpEb25lLgpMb2FkaW5nIG5ldyBuaWthbC0yMC4wLjBmMCBES01TIGZpbGVzLi4u
CkJ1aWxkaW5nIGZvciA1LjguMC00NC1nZW5lcmljCkJ1aWxkaW5nIGluaXRpYWwgbW9kdWxlIGZv
ciA1LjguMC00NC1nZW5lcmljCkVSUk9SOiBDYW5ub3QgY3JlYXRlIHJlcG9ydDogW0Vycm5vIDE3
XSBGaWxlIGV4aXN0czogJy92YXIvY3Jhc2gvbmkta2FsLjAuY3Jhc2gnCkVycm9yISBCYWQgcmV0
dXJuIHN0YXR1cyBmb3IgbW9kdWxlIGJ1aWxkIG9uIGtlcm5lbDogNS44LjAtNDQtZ2VuZXJpYyAo
eDg2XzY0KQpDb25zdWx0IC92YXIvbGliL2RrbXMvbmlrYWwvMjAuMC4wZjAvYnVpbGQvbWFrZS5s
b2cgZm9yIG1vcmUgaW5mb3JtYXRpb24uCmRwa2c6IGVycm9yIHByb2Nlc3NpbmcgcGFja2FnZSBu
aS1rYWwgKC0tY29uZmlndXJlKToKIGluc3RhbGxlZCBuaS1rYWwgcGFja2FnZSBwb3N0LWluc3Rh
bGxhdGlvbiBzY3JpcHQgc3VicHJvY2VzcyByZXR1cm5lZCBlcnJvciBleGl0IHN0YXR1cyAxMApO
byBhcHBvcnQgcmVwb3J0IHdyaXR0ZW4gYmVjYXVzZSB0aGUgZXJyb3IgbWVzc2FnZSBpbmRpY2F0
ZXMgaXRzIGEgZm9sbG93dXAgZXJyb3IgZnJvbSBhIHByZXZpb3VzIGZhaWx1cmUuCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcGtnOiBkZXBlbmRlbmN5
IHByb2JsZW1zIHByZXZlbnQgY29uZmlndXJhdGlvbiBvZiBuaS11c3JwLXJpby1ka21zOgogbmkt
dXNycC1yaW8tZGttcyBkZXBlbmRzIG9uIG5pLWthbCAoPj0gMjAuMC4wKTsgaG93ZXZlcjoKICBQ
YWNrYWdlIG5pLWthbCBpcyBub3QgY29uZmlndXJlZCB5ZXQuCgpkcGtnOiBlcnJvciBwcm9jZXNz
aW5nIHBhY2thZ2UgbmktdXNycC1yaW8tZGttcyAoLS1jb25maWd1cmUpOgogZGVwZW5kZW5jeSBw
cm9ibGVtcyAtIGxlYXZpbmcgdW5jb25maWd1cmVkCmRwa2c6IGRlcGVuZGVuY3kgcHJvYmxlbXMg
cHJldmVudCBjb25maWd1cmF0aW9uIG9mIG5pLXVzcnAtcmlvOgogbmktdXNycC1yaW8gZGVwZW5k
cyBvbiBuaS11c3JwLXJpby1ka21zICg+PSAyMC4xLjApOyBob3dldmVyOgogIFBhY2thZ2Ugbmkt
dXNycC1yaW8tZGttcyBpcyBub3QgY29uZmlndXJlZCB5ZXQuCgpkcGtnOiBlcnJvciBwcm9jZXNz
aW5nIHBhY2thZ2UgbmktdXNycC1yaW8gKC0tY29uZmlndXJlKToKIGRlcGVuZGVuY3kgcHJvYmxl
bXMgLSBsZWF2aW5nIHVuY29uZmlndXJlZApkcGtnOiBkZXBlbmRlbmN5IHByb2JsZW1zIHByZXZl
bnQgY29uZmlndXJhdGlvbiBvZiBuaS1wMnA6CiBuaS1wMnAgZGVwZW5kcyBvbiBuaS1rYWwgKD49
IDIwLjAuMCk7IGhvd2V2ZXI6CiAgUGFja2FnZSBuaS1rYWwgaXMgbm90IGNvbmZpZ3VyZWQgeWV0
LgoKZHBrZzogZXJyb3IgcHJvY2Vzc2luZyBwYWNrYWdlIG5pLXAycCAoLS1jb25maWd1cmUpOgog
ZGVwZW5kZW5jeSBwcm9ibGVtcyAtIGxlYXZpbmcgdW5jb25maWd1cmVkCmRwa2c6IGRlcGVuZGVu
Y3kgcHJvYmxlbXMgcHJldmVudCBjb25maWd1cmF0aW9uIG9mIG5pLXAycC1ka21zOgogbmktcDJw
LWRrbXMgZGVwZW5kcyBvbiBuaS1rYWwgKD49IDIwLjAuMCk7IGhvd2V2ZXI6CiAgUGFja2FnZSBu
aS1rYWwgaXMgbm90IGNvbmZpZ3VObyBhcHBvcnQgcmVwb3J0IHdyaXR0ZW4gYmVjYXVzZSB0aGUg
ZXJyb3IgbWVzc2FnZSBpbmRpY2F0ZXMgaXRzIGEgZm9sbG93dXAgZXJyb3IgZnJvbSBhIHByZXZp
b3VzIGZhaWx1cmUuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTm8gYXBwb3J0IHJlcG9ydCB3cml0
dGVuIGJlY2F1c2UgTWF4UmVwb3J0cyBpcyByZWFjaGVkIGFscmVhZHkKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIE5vIGFwcG9ydCByZQpwb3J0IHdyaXR0ZW4gYmVjYXVzZSBNYXhSZXBvcnRz
IGlzIHJlYWNoZWQgYWxyZWFkeQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIE5vIGFwcG9ydCByZXBvcnQgd3JpdHRlbiBiZWNhdXNlIE1heFJlcG9ydHMg
aXMgcmVhY2hlZCBhbHJlYWR5CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBObyBhcHBvcnQgcmVwb3J0IHdyaXR0ZW4gYmVjYXVzZSBNYXhSZXBv
cnRzIGlzIHJlYWNoZWQgYWxyZWFkeQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBObyBhcHBvcnQgcmVwb3J0IHdyaXR0ZW4gYmVjYXVz
ZSBNYXhSCmVwb3J0cyBpcyByZWFjaGVkIGFscmVhZHkKICAgICAgICAgICAgICAgICAgICAgICAg
IE5vIGFwcG9ydCByZXBvcnQgd3JpdHRlbiBiZWNhdXNlIE1heFJlcG9ydHMgaXMgcmVhY2hlZCBh
bHJlYWR5CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5vIGFwcG9ydCByZXBvcnQgd3Jp
dHRlbiBiZWNhdXNlIE1heFJlcG9ydHMgaXMgcmVhY2hlZCBhbHJlYWR5CiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgTm8gYXBwb3J0IHJlcG9ydCB3cml0dGVuIGJlY2F1c2UgTWF4
UmVwb3J0cyBpcyByZWFjaGVkIGFscmVhZHkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgTgpvIGFwcG9ydCByZXBvcnQgd3JpdHRlbiBiZWNhdXNlIE1heFJlcG9ydHMgaXMg
cmVhY2hlZCBhbHJlYWR5CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZWQgeWV0LgoKZHBrZzogZXJyb3IgcHJvY2Vzc2luZyBwYWNr
YWdlIG5pLXAycC1ka21zICgtLWNvbmZpZ3VyZSk6CiBkZXBlbmRlbmN5IHByb2JsZW1zIC0gbGVh
dmluZyB1bmNvbmZpZ3VyZWQKZHBrZzogZGVwZW5kZW5jeSBwcm9ibGVtcyBwcmV2ZW50IGNvbmZp
Z3VyYXRpb24gb2YgbmktcmlvLWRrbXM6CiBuaS1yaW8tZGttcyBkZXBlbmRzIG9uIG5pLWthbCAo
Pj0gMjAuMC4wKTsgaG93ZXZlcjoKICBQYWNrYWdlIG5pLWthbCBpcyBub3QgY29uZmlndXJlZCB5
ZXQuCiBuaS1yaW8tZGttcyBkZXBlbmRzIG9uIG5pLXAycC1ka21zICg+PSAyMC4wLjApOyBob3dl
dmVyOgogIFBhY2thZ2UgbmktcDJwLWRrbXMgaXMgbm90IGNvbmZpZ3VyZWQgeWV0LgoKZHBrZzog
ZXJyb3IgcHJvY2Vzc2luZyBwYWNrYWdlIG5pLXJpby1ka21zICgtLWNvbmZpZ3VyZSk6CiBkZXBl
bmRlbmN5IHByb2JsZW1zIC0gbGVhdmluZyB1bmNvbmZpZ3VyZWQKZHBrZzogZGVwZW5kZW5jeSBw
cm9ibGVtcyBwcmV2ZW50IGNvbmZpZ3VyYXRpb24gb2YgbmktYmRzLWRrbXM6CiBuaS1iZHMtZGtt
cyBkZXBlbmRzIG9uIG5pLWthbCAoPj0gMjAuMCk7IGhvd2V2ZXI6CiAgUGFja2FnZSBuaS1rYWwg
aXMgbm90IGNvbmZpZ3VyZWQgeWV0LgoKZHBrZzogZXJyb3IgcHJvY2Vzc2luZyBwYWNrYWdlIG5p
LWJkcy1ka21zICgtLWNvbmZpZ3VyZSk6CiBkZXBlbmRlbmN5IHByb2JsZW1zIC0gbGVhdmluZyB1
bmNvbmZpZ3VyZWQKZHBrZzogZGVwZW5kZW5jeSBwcm9ibGVtcyBwcmV2ZW50IGNvbmZpZ3VyYXRp
b24gb2YgbmktdXNycC1yaW8tbGliczoKIG5pLXVzcnAtcmlvLWxpYnMgZGVwZW5kcyBvbiBuaS1y
aW8tZGttcyAoPj0gMjAuMC4wKTsgaG93ZXZlcjoKICBQYWNrYWdlIG5pLXJpby1ka21zIGlzIG5v
dCBjb25maWd1cmVkIHlldC4KIG5pLXVzcnAtcmlvLWxpYnMgZGVwZW5kcyBvbiBuaS1wMnAgKD49
IDIwLjAuMCk7IGhvd2V2ZXI6CiAgUGFja2FnZSBuaS1wMnAgaXMgbm90IGNvbmZpZ3VyZWQgeWV0
LgogbmktdXNycC1yaW8tbGlicyBkZXBlbmRzIG9uIG5pLWthbCAoPj0gMjAuMC4wKTsgaG93ZXZl
cjoKICBQYWNrYWdlIG5pLWthbCBpcyBub3QgY29uZmlndXJlZCB5ZXQuCgpkcGtnOiBlcnJvciBw
cm9jZXNzaW5nIHBhY2thZ2UgbmktdXNycC1yaW8tbGlicyAoLS1jb25maWd1cmUpOgogZGVwZW5k
ZW5jeSBwcm9ibGVtcyAtIGxlYXZpbmcgdW5jb25maWd1cmVkCmRwa2c6IGRlcGVuZGVuY3kgcHJv
YmxlbXMgcHJldmVudCBjb25maWd1cmF0aW9uIG9mIGxpYm5pcDJwMToKIGxpYm5pcDJwMSBkZXBl
bmRzIG9uIG5pLXAycC1ka21zICg+PSAyMC4wLjApOyBob3dldmVyOgogIFBhY2thZ2UgbmktcDJw
LWRrbXMgaXMgbm90IGNvbmZpZ3VyZWQgeWV0LgoKZHBrZzogZXJyb3IgcHJvY2Vzc2luZyBwYWNr
YWdlIGxpYm5pcDJwMSAoLS1jb25maWd1cmUpOgogZGVwZW5kZW5jeSBwcm9ibGVtcyAtIGxlYXZp
bmcgdW5jb25maWd1cmVkCmRwa2c6IGRlcGVuZGVuY3kgcHJvYmxlbXMgcHJldmVudCBjb25maWd1
cmF0aW9uIG9mIG5pLXJpbzoKIG5pLXJpbyBkZXBlbmRzIG9uIG5pLXJpby1ka21zICg+PSAyMC4w
LjEpOyBob3dldmVyOgogIFBhY2thZ2UgbmktcmlvLWRrbXMgaXMgbm90IGNvbmZpZ3VyZWQgeWV0
LgogbmktcmlvIGRlcGVuZHMgb24gbmktcDJwICg+PSAyMC4wLjAuNDkxNTIpOyBob3dldmVyOgog
IFBhY2thZ2UgbmktcDJwIGlzIG5vdCBjb25maWd1cmVkIHlldC4KCmRwa2c6IGVycm9yIHByb2Nl
c3NpbmcgcGFja2FnZSBuaS1yaW8gKC0tY29uZmlndXJlKToKIGRlcGVuZGVuY3kgcHJvYmxlbXMg
LSBsZWF2aW5nIHVuY29uZmlndXJlZApkcGtnOiBkZXBlbmRlbmN5IHByb2JsZW1zIHByZXZlbnQg
Y29uZmlndXJhdGlvbiBvZiBuaS1mcGdhLWludGVyZmFjZToKIG5pLWZwZ2EtaW50ZXJmYWNlIGRl
cGVuZHMgb24gbmktcmlvICg+PSAyMC4wLjEpOyBob3dldmVyOgogIFBhY2thZ2UgbmktcmlvIGlz
IG5vdCBjb25maWd1cmVkIHlldC4KCmRwa2c6IGVycm9yIHByb2Nlc3NpbmcgcGFja2FnZSBuaS1m
cGdhLWludGVyZmFjZSAoLS1jb25maWd1cmUpOgogZGVwZW5kZW5jeSBwcm9ibGVtcyAtIGxlYXZp
bmcgdW5jb25maWd1cmVkCmRwa2c6IGRlcGVuZGVuY3kgcHJvYmxlbXMgcHJldmVudCBjb25maWd1
cmF0aW9uIG9mIG5pLWJkczoKIG5pLWJkcyBkZXBlbmRzIG9uIG5pLWJkcy1ka21zICg+PSAyMC4w
LjApOyBob3dldmVyOgogIFBhY2thZ2UgbmktYmRzLWRrbXMgaXMgbm90IGNvbmZpZ3VyZWQgeWV0
LgoKZHBrZzogZXJyb3IgcHJvY2Vzc2luZyBwYWNrYWdlIG5pLWJkcyAoLS1jb25maWd1cmUpOgog
ZGVwZW5kZW5jeSBwcm9ibGVtcyAtIGxlYXZpbmcgdW5jb25maWd1cmVkCkVycm9ycyB3ZXJlIGVu
Y291bnRlcmVkIHdoaWxlIHByb2Nlc3Npbmc6CiBuaS1rYWwKIG5pLXVzcnAtcmlvLWRrbXMKIG5p
LXVzcnAtcmlvCiBuaS1wMnAKIG5pLXAycC1ka21zCiBuaS1yaW8tZGttcwogbmktYmRzLWRrbXMK
IG5pLXVzcnAtcmlvLWxpYnMKIGxpYm5pcDJwMQogbmktcmlvCiBuaS1mcGdhLWludGVyZmFjZQog
bmktYmRzCkU6IFN1Yi1wcm9jZXNzIC91c3IvYmluL2Rwa2cgcmV0dXJuZWQgYW4gZXJyb3IgY29k
ZSAoMSkKCg==

--_004_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_004_BMXPR01MB27609065B58813893BA639F48B979BMXPR01MB2760INDP_--

