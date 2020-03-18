Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FF3189359
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 01:59:56 +0100 (CET)
Received: from [::1] (port=35730 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEN3o-0005Lt-3u; Tue, 17 Mar 2020 20:59:52 -0400
Received: from smtpvmsrv1.mitre.org ([192.52.194.136]:34622)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jplong@mitre.org>) id 1jEN3k-0005HM-CW
 for usrp-users@lists.ettus.com; Tue, 17 Mar 2020 20:59:48 -0400
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
 by localhost (Postfix) with SMTP id 03DD76C0031
 for <usrp-users@lists.ettus.com>; Tue, 17 Mar 2020 20:59:08 -0400 (EDT)
Received: from smtprhmv1.mitre.org (unknown [128.29.154.203])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by smtpvmsrv1.mitre.org (Postfix) with ESMTPS id EE2FB6C0029
 for <usrp-users@lists.ettus.com>; Tue, 17 Mar 2020 20:59:07 -0400 (EDT)
Received: from mwfesmtp-mgt.mitre.org (mwfesmtp-in.mitre.org [192.52.194.235])
 by smtprhmv1.mitre.org (Postfix) with ESMTP id D11EB80B3E9
 for <usrp-users@lists.ettus.com>; Tue, 17 Mar 2020 20:59:07 -0400 (EDT)
Received: by mwfesmtp-mgt.mitre.org (Postfix, from userid 600)
 id 48hsB35RGcz3DYhM; Wed, 18 Mar 2020 00:58:42 +0000 (UTC)
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
 (mail-bl2gcc02lp2101.outbound.protection.outlook.com [104.47.64.101])
 by mwfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 48hs9T16Pkz3DYmG
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 00:58:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciLgfBx+LlgfPkIJ1q9GZ7MaBdoSGH5B6bwHXFl/b/ae2ogDSPcnuuFf962kVVLnbWOkcWixdzBeN1GkLOcsYfEatszvG8jg7e+uzL/K5iFJu8rmqmQxGIYE9miaRHigQvrw0CYtpDLiL9qOiUyZ9Li362RrAWx8y2hnFLNtsdjr/Jmt2Il6EQREfK+us2SzU8aElQMxoHAaEWOAwmlHN/LsniQOJcAbmSe8rj5vHHt7vm4W7xIApgNOFFaQhU/nr5pmn8kwAQntEWCglb/Po2uJVVXPs4UCmuBn9S3fMX1zBTRxWUrbPngRTs92dqi+r+X1vpAzG49JFpuWDo3eMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LJmfyFusc5xFciKnZXar8EMqK3ggtf5G2n6cVKx0hw=;
 b=HKVHjHWaklLwsJvbJN8UW7gLV3O3osr6kfYiQTVX/SKgZHg0bHwni41o4O4gHg+jyUu56irCK6EE2BTeEcS95SLZa35S6iXBAHy8cmxXNTv+1ls0mhjpdw8KckwxRMwfU7Yk0YUsOt92ubvkpzGAitLAtINlQdqZovRfRM+Pr8flxVwZnorj/k8nvDgf/CRLmc7enz2eDO0zwSHfFBOSzvZExkF/PosCnQmvcFfaeGyxTv0SccrB2Vl8srjyvkkcXgIXIb4kR3xQtUnvHpXQN+CeFqnuLSa50rEURueoDVFPr4RxuSoN7UaEmrtSRIR8TXOinvOqsbAvMJiXtXTIOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from MN2PR09MB4077.namprd09.prod.outlook.com (2603:10b6:208:1b8::12)
 by MN2PR09MB5514.namprd09.prod.outlook.com (2603:10b6:208:221::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Wed, 18 Mar
 2020 00:58:34 +0000
Received: from MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::d011:291a:11f9:82df]) by MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::d011:291a:11f9:82df%5]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 00:58:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC uhd api vs traditional
Thread-Index: AdX8qxOMoOfpJvefSkuMz0QXUHsk/w==
Date: Wed, 18 Mar 2020 00:58:34 +0000
Message-ID: <MN2PR09MB40771E0415D6D2E283CB54B7D9F70@MN2PR09MB4077.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jplong@mitre.org; 
x-originating-ip: [192.160.51.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e4957494-640c-44ae-6d22-08d7cad77c51
x-ms-traffictypediagnostic: MN2PR09MB5514:
x-microsoft-antispam-prvs: <MN2PR09MB5514F7E51AB10C015A2894B8D9F70@MN2PR09MB5514.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(366004)(376002)(136003)(199004)(5660300002)(76116006)(52536014)(316002)(86362001)(186003)(66446008)(66476007)(64756008)(66946007)(66556008)(478600001)(33656002)(71200400001)(8676002)(9686003)(8936002)(81166006)(7696005)(55016002)(81156014)(6916009)(26005)(6506007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR09MB5514;
 H:MN2PR09MB4077.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: mitre.org does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Wu0j5an2NaocJ+OLK+TP3A/E/85vY4RhUsnnDfbPf8iNLzG/hTzV0hmcs9sHXl7RrJ2Fpe3u+EVE1fuDpSmp2jpQJnw/6UfnBrEEYFxmYkBwk6pYmC2BHaaTyK5gmOaBVwm3EtSL0KNUj9vMFnjFrvFqgJI+tqjbApBJeqXGvIHDGAZeYjN2IP8++KH6Sw2DuAQRUue8IJaXDTBm2BmHDRvlRkq8o53zyhwtXy/GEME4vXq1a0O9yUZtMwtWdd9Q3j7zTpOr+e9lrKtLOMpyR8uOXkYRPcjL6CYCayYrheVDZBni30cUvHT15+qQ5JLZeZCBSRAM+ArqlRxZuS1JCJQe0dBCQDii8yGP2cqhIGgS7zBmohDGpkMB7YtAJUtdNxNDdF8hiztgjiHdjBC4w6on8Pc0WU+p0ja+Hw9S4bV/wuT6g9ddpmjjRRQLDzL
x-ms-exchange-antispam-messagedata: xeuQbRdjekAAV2R3shdztu7GVXODXroWNpmSZwdulVsO+dOSt2tR5IqoVjGZEiDnDU/fQI+Te7pUzYAEt8sO7saFRA7+Ad4MDgHYszeH/MH3lAEyz31qgr5cotyGTYlg5KUbxfLfQEj6hWHPk+OaEg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-Network-Message-Id: e4957494-640c-44ae-6d22-08d7cad77c51
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 00:58:34.7145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uRIDES24qwLABLq1hp44wCsT5Pbr8C5SJ2kcWst8F/T2fdImMJGiHdTLD/3IQAabeKpxtmJtUu+RYFL62hFADA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB5514
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org;
 h=from:to:subject:date:message-id:content-type:mime-version; s=selector1;
 bh=8LJmfyFusc5xFciKnZXar8EMqK3ggtf5G2n6cVKx0hw=;
 b=kc4om79Br2xiQ6LkBN5yibUQ0nAywDKr5l7oern5RbLqnqfeU12aFmFeNR3y69+LFJl1OyGUgE+lam0hwZcxEPBZv0XzcxULdwYGdaQsuym2pByuOar7OFrD2k4PnNR4NaNfnE8BRrOLoj2Z2Phkj8UwYNRxmqnAtsidQballcw=
Subject: [USRP-users] RFNOC uhd api vs traditional
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Long, Jeffrey P. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Long, Jeffrey P." <jplong@mitre.org>
Content-Type: multipart/mixed; boundary="===============6081561963119511414=="
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

--===============6081561963119511414==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR09MB40771E0415D6D2E283CB54B7D9F70MN2PR09MB4077namp_"

--_000_MN2PR09MB40771E0415D6D2E283CB54B7D9F70MN2PR09MB4077namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have been working on applications to control a N310 directly using the uh=
d api. As I work with the code I am noticing there is a difference in the w=
ay you bring up a usrp in what I will call the traditional (legacy) uhd::mu=
lti_usrp::make() approach vs the newer uhd::device3::make approach which se=
ems to only appear in the examples that are specifically rfnoc. I realize y=
ou can use the legacy approach and examples to run on the N310 but as soon =
as I start modifying the FPGA image and manually take out the DDC and DUC f=
or example it does not like that and seg faults. I am guessing it is lookin=
g for those blocks and doing a whole rfnoc block enumeration thing under ho=
od and getting mad? I have been successful using the rfnoc (device3) exampl=
es on my tweaked FPGA image and I am currently using 3.15 LTS.

So I would like to do the following and am asking how best to proceed?

-I want to remove DDC and DUC blocks from the FPGA build to make room for m=
y own stuff.

-I would like to have full uhd api capability and it appears some things ar=
e missing like the sensor query that seems to be available only via multi_u=
srp using the traditional approach. If you look at the rfnoc examples they =
have TODOs in those sections.

I did notice that in the latest master branch there is a mb_controller clas=
s that looks like it might make that stuff available. It makes sense to me =
that the radio_ctrl would not have that motherboard type stuff but in the l=
astest release branch it only seems to be available via the traditional mul=
ti-usrp approach.

So do I need to use the master branch if I want full capability using the n=
ewer api or is there some other way to get to things like the sensor query?=
 Or should I use the rfnoc dev branch? It seems master has more than even r=
fnoc at this point.

Thanks
Jeff Long



--_000_MN2PR09MB40771E0415D6D2E283CB54B7D9F70MN2PR09MB4077namp_
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
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
<p class=3D"MsoNormal">I have been working on applications to control a N31=
0 directly using the uhd api. As I work with the code I am noticing there i=
s a difference in the way you bring up a usrp in what I will call the tradi=
tional (legacy) uhd::multi_usrp::make()
 approach vs the newer uhd::device3::make approach which seems to only appe=
ar in the examples that are specifically rfnoc. I realize you can use the l=
egacy approach and examples to run on the N310 but as soon as I start modif=
ying the FPGA image and manually
 take out the DDC and DUC for example it does not like that and seg faults.=
 I am guessing it is looking for those blocks and doing a whole rfnoc block=
 enumeration thing under hood and getting mad? I have been successful using=
 the rfnoc (device3) examples on
 my tweaked FPGA image and I am currently using 3.15 LTS.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I would like to do the following and am asking ho=
w best to proceed?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-I want to remove DDC and DUC blocks from the FPGA b=
uild to make room for my own stuff.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-I would like to have full uhd api capability and it=
 appears some things are missing like the sensor query that seems to be ava=
ilable only via multi_usrp using the traditional approach. If you look at t=
he rfnoc examples they have TODOs
 in those sections.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did notice that in the latest master branch there =
is a mb_controller class that looks like it might make that stuff available=
. It makes sense to me that the radio_ctrl would not have that motherboard =
type stuff but in the lastest release
 branch it only seems to be available via the traditional multi-usrp approa=
ch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So do I need to use the master branch if I want full=
 capability using the newer api or is there some other way to get to things=
 like the sensor query? Or should I use the rfnoc dev branch? It seems mast=
er has more than even rfnoc at this
 point. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff Long<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MN2PR09MB40771E0415D6D2E283CB54B7D9F70MN2PR09MB4077namp_--


--===============6081561963119511414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6081561963119511414==--

