Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 526AB31A1B8
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 16:33:47 +0100 (CET)
Received: from [::1] (port=39398 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAaRy-0004Sq-Pq; Fri, 12 Feb 2021 10:33:42 -0500
Received: from mail-eopbgr110115.outbound.protection.outlook.com
 ([40.107.11.115]:34368 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lAaRv-0004Kb-3H
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 10:33:39 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NmnWvCY2gTHuaPXmQ/BPT1jMP+sffLllkXoHRfCaYFvRm0dsQKQcX9ML070yWVoP1xE40HIB4VNTst4NROnsnpctdJRjnXPYgxWhd1RqXvoW8/KVwEFG8A0SoVJuN95MWfL/cA2oDbEV7BDseGdTo/siWrKHvsfxdzy7qSlxTVj+iLJnk2jR7ZiPHjatSjTl73f7mGvdrJv9QuQlPyzn2hJ+V9VfDJUf3Wkc/SpBcFzgIKil+nIKllb7bqEpiq/g3plyo/ZxZoMFwq6GgBod7XMhZCcPQ/sZLds7132Ky9m3YE0CLEz+GQ4oku180GQwJDIWfU719eUDnhWvuwLWdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqZywszPHv3RIg5eSuSnN/CllDh2N4ZefhZnmPKc0xM=;
 b=CoZDZSw3+pY8lBozisnFxslIJt5BGgBwjTEsSIdMmkTCk1kNAwSn5Fdwf2FwGmIEv5P84rIAvCbnago8gozEfWQdr1zb5mYDkfbjNsOP5/OTNiwqirPkrKZrD1zOHZtZBnxEz+dEXz2Hxh22TOWZloD14T+IA6oCgoBtCtIHx2QKerQyqZUI0RL3iJV3Ij0uCzg1hLA1CvPGc+VrvGOGOrlVWgG6fxQRWlPMXkKr9bNyvCtXnrqcXxc1bZe1xAmaDLmwQRyM9bqHxdXoLN3lk+ht31VuiWYdOWW9vGX828osLM0cWEe0/Sip3wnCEmAh4q90R3d5y33Px82fvdOLqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqZywszPHv3RIg5eSuSnN/CllDh2N4ZefhZnmPKc0xM=;
 b=QGoqBpBNeFTnDxeaR4/15vN7fwl1Nt5lSb2odVHg3W7eO+UCiKfpuaqW8A/e+qXu6TnpnDbT/TZg6z/W4ODEWFKKmJxy0tpVVdXZDnPSTWZh890v/MllgBKbRY3DbV5dGBfErSdnWyw5kySplb+y/ZBVGUUNThP/RnQSV3bTaxs=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO0P123MB3962.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:148::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Fri, 12 Feb
 2021 15:32:56 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3825.030; Fri, 12 Feb 2021
 15:32:56 +0000
To: 'Mike' <mikerd1@verizon.net>
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC OTT Block on E320
Thread-Index: AdcBMbPeiYyrqr/eQbmPfmK6sMotugAEt7AAAAM/DoA=
Date: Fri, 12 Feb 2021 15:32:56 +0000
Message-ID: <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
In-Reply-To: <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: verizon.net; dkim=none (message not signed)
 header.d=none;verizon.net; dmarc=none action=none header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24804101-752f-49f0-ab6b-08d8cf6b78e4
x-ms-traffictypediagnostic: LO0P123MB3962:
x-microsoft-antispam-prvs: <LO0P123MB396229272D87DA0D79A77D32CA8B9@LO0P123MB3962.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qNb1AkFewpT7y2RVktiyk2kbOdYizOSWlAibhR6Dm2/GYWCrgsxkQcdYNyTYD0/tYGSkAoAFwC8URXfA4OfaueAJVW/WyYL83JIU2pGiO4MzOSgS+++jUOOZ28UmPDDS23E+ZYdQyv0b2iqXZ1XO4tK9OKYmz7mpGuX9XGbhGZk5935H3bAcDhHVQHAdBKCvjdjh/xU5XPtMP/pG3ckX0Lmc4ZRU2G5tgYs5bFD8PuzxAX8irAcl6rPfGDss+oq8XzWq6eqVoOtXpc0v7XejQLMFvZpg+EBFGS0IwOVIsK48Iq0CI4vGCXeq3Cf4vnOf3wWYC0ZlY0OzdYkk2WOsOWA/6Jl2pF4TjnrUAY5+lbhLkBuABW+53WKJzEQVjCbdNg5o5Uqba7B0Inc250aXiGMu9fhcP98j+pbnVNI5mcNYRLpnLT60yPQzGgwBxONRgU7RP6N5DmPjXVxxdb1f4TjIFFqf2/aPue4S8MpOJobcgaggpkAqYDJyC6dVZvWDElAN6O8DE5P4xgl7McFDHQU3Sd7JO8jZKhMcPM/NW6z9mwXZHita5tzfgvRcTSEJFv3S8sRZ/zZYi7U4FQPPJTpOhmLvN8GB249cxytGHeE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39840400004)(376002)(136003)(346002)(366004)(86362001)(5660300002)(26005)(8936002)(316002)(6916009)(7696005)(966005)(9686003)(55016002)(83380400001)(66946007)(478600001)(4326008)(186003)(52536014)(2906002)(8676002)(71200400001)(53546011)(76116006)(66476007)(66446008)(66556008)(33656002)(6506007)(166002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?BvAfP9ycMVy+WqXaZf3fwY14ffSqYMSh8NN+MJuz/jrOrobVkGDbPC99Ef?=
 =?iso-8859-1?Q?z+u6iZ9ZN+MNdmnFxybOnSGHzhDIbiOLDP333v7jpjWdfRXiT1utOejkDA?=
 =?iso-8859-1?Q?9+muBwa6JtyQgVPv5qbBD596m4Uql6HSl8Ig1+HgCVUW/FqhbwPi8/dKdM?=
 =?iso-8859-1?Q?H5xPGPd0mbLBoFGSY6+nUrErDvYPEj/IwVMkZRA3YdKjpIX7+aQY/qD1aa?=
 =?iso-8859-1?Q?X+Bgmmqi3Ba7LgRHu5ihSUY9SG66dFI1Fl1HQHS/MBE53bCDMKkTjEA67c?=
 =?iso-8859-1?Q?kdkSr+TScVmUkbUzasS+1R/VkibTbD+OxYLxHuS+NpnjZVoZDIeLzPV9Hz?=
 =?iso-8859-1?Q?r5HmPjZ0iypi3RnesVquuBK+n9MTPVDEhr2q20AH6x0BeZy/X3APRITKsO?=
 =?iso-8859-1?Q?Wjvj5L7BM8iM8FBImP10oFmW9vje+yE95c2KJ7TFajx8tz8eLXDxAyopfP?=
 =?iso-8859-1?Q?65H04F6tT9BcBFJLKcZkKbDjn8PTVX0RyMkDtucuI5MvDdNz+tCauXYpEg?=
 =?iso-8859-1?Q?oeY/R0qjw2zT573QkM9KhdV6O4p9hJpsykQqIC7ieok0htdsxHcC9/PCTa?=
 =?iso-8859-1?Q?1zI2VTlg5bkkSRfUJXcUiS7Jc9HWad1Cg0LuiQiIcU7B9wm+ZyAQ2JmPu2?=
 =?iso-8859-1?Q?CJm9JVk0EZsRvzSjp7WL6Zk5EF4v9bmYtSwGGRxVdDeJQrwLMUAqlCAapF?=
 =?iso-8859-1?Q?9QhkjSfGiX7uKH7iFM18MKoFRQ79ER6TXYWYtuiTPNa1XWcLywPppj+hPr?=
 =?iso-8859-1?Q?BNXMf1m51pIfXZYrtEqZ4BUhAi0aQtCLLzmrD0GmLa5H2r9iIMb7Lyxhsc?=
 =?iso-8859-1?Q?Mvxpod2j0T/goYU5Oh1UDEtRy6si2VtJNjkTUQRaSzhy6ONB9uh16uyQGK?=
 =?iso-8859-1?Q?njcUGkax8BQMlMFGOF2SW1/iCByPVcpmQ5ygeCGuXR8LEpie3H5OmikU/m?=
 =?iso-8859-1?Q?00zZA0uP5sc9yYpf5zfQD1V9ZKkWDxSncyedpn48bYJJSmMq0Etuc3nz4y?=
 =?iso-8859-1?Q?ZYxpK9Vs6fl+DB3MmgxerQu1gG5wNz5PBHltibDdIlL17KzY9OUjmJ6ut1?=
 =?iso-8859-1?Q?q6Rn4epLCb+nFpAvWB9C1YO8JAectUvHNrSnBM+ihyQ8ZB9/gYzf3VAF0F?=
 =?iso-8859-1?Q?ZXVjzxkskmiR7+QTXhZ2Jb9yD+6sXKYS9QkGz8nB9MTWsTEy7XYaUTEmb9?=
 =?iso-8859-1?Q?b/B5GmDLsHFP7roGHs0rB7ITshtyGGeSUaacrP0tpWUabenX2SRDyS9JBj?=
 =?iso-8859-1?Q?QlHVzKaxtBqlZ/yeSIRA97SjYpyiTzxzof1svzARxc7aNuUvlVgQDWyngu?=
 =?iso-8859-1?Q?U8PpPR0iKF3Ehi0fJq0HMrxB8lhq+fpEuUSYiDL0UKvg3kMhk2m5igtv/B?=
 =?iso-8859-1?Q?eoSGbP4+wx?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 24804101-752f-49f0-ab6b-08d8cf6b78e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2021 15:32:56.8910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zbuUQ/uaMfSiBhFiQ78AeYCy3jVq8j8yuB6I+Wjh7stxXGMZs10p0uVJapykwlprPBCkRbOCZ+yxeV5GQy5OYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P123MB3962
Subject: Re: [USRP-users] RFNoC OTT Block on E320
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============5007232470164617272=="
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

--===============5007232470164617272==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB37249BEB2922B21E5A4D6A94CA8B9LNXP123MB3724GBRP_"

--_000_LNXP123MB37249BEB2922B21E5A4D6A94CA8B9LNXP123MB3724GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Mike,

I don't have a much experience of Linux, I've just had to look up what sshf=
s is, so as you can imagine this is becoming a very steep learning curve fo=
r me.

After reading your reply and doing a bit of research I've found AN-315 "Sof=
tware Development on the E3xx USRP" which goes through the cross-compiling =
process. Unfortunately it looks like this was written for UHD 3.14.1. so th=
ere may be some differences for 4.0.

I did initially think that as I wasn't using the USRP in "embedded mode" th=
en the firmware on the unit wouldn't need to be updated, and the RFNoC woul=
d be more or less configured via the host computer. Seems that this isn't t=
he case.

Mark

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Mike via=
 USRP-users
Sent: 12 February 2021 13:40
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RFNoC OTT Block on E320


Mark,

For uhd_usrp_probe to correctly read your fpga block module you need to upd=
ate the XML file in your RFNOC-module/rfnoc/blocks directory.=EF=BF=BD Then=
 you need to cross-compile your module like you would with gr-ettus and ins=
tall it on the E320.=EF=BF=BD I use sshfs to cross-compile on the host and =
make it immediately available on my E310.

It may be that the process on UHD4 is slightly different but that is what I=
 do to make the correct name of my new block show up in uhd_usrp_probe.

I still have the python "attribute error" so hopefully now that two people =
are seeing this on both UHD3.15 and UHD4.0 we can get to the bottom of it.

Mike
On 2/12/21 6:52 AM, Mark D via USRP-users wrote:
Hi,
=EF=BF=BD
I=EF=BF=BDm trying to add an OTT block into the FPGA for an E320. I=EF=BF=
=BDm using version 4.0.0 of the UHD.
=EF=BF=BD
So far I=EF=BF=BDve used rfnocmodtool to create the OOT folder structure an=
d add my new block. My initial plan was to add this block as per the defaul=
t code generated that just passes data through. I wanted see that this was =
instantiated into the FPGA and the system still worked before starting to a=
dd my own code.
=EF=BF=BD
I=EF=BF=BDve been following the =EF=BF=BDGetting Started with RFNoC in UHD =
4.0=EF=BF=BD page on the Ettus website and also the Youtube video =EF=BF=BD=
RFNoC 4 Workshop - GRCon 2020=EF=BF=BD. The .yml file I=EF=BF=BDve created =
connects the OTT block between the radio Rx and stream endpoint (I=EF=BF=BD=
ve removed the DDC / DUC and already had the FPGA working without these).
=EF=BF=BD
So far I=EF=BF=BDve got the FPGA built and uploaded to the FPGA. Uhd_usrp_p=
robe shows that the RFNoC routing as expected, but the name of OTT block ha=
s been replaced with Block#0. The OOT project appears as a folder in GNU ra=
dio with the new block available to be dragged into the project.
=EF=BF=BD
I think the issues I=EF=BF=BDm now having are similar to those reported rec=
ently by Mike with the E310. Trying to run a GNU radio project results in t=
he error =EF=BF=BD AttributeError: module =EF=BF=BDDilbert=EF=BF=BD object =
has no attribute 'dogbert'=EF=BF=BD
=EF=BF=BD
The examples I=EF=BF=BDm following are all based around the X310, is there =
an extra step required for the E3xx USRPs to update the firmware running on=
 the device so that it=EF=BF=BDs aware of the new block type? If so I=EF=BF=
=BDve no idea how I would go about this.
=EF=BF=BD
Any help on this would be much appreciated,
=EF=BF=BD
Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.


_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_LNXP123MB37249BEB2922B21E5A4D6A94CA8B9LNXP123MB3724GBRP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:EN-GB;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-US;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thanks Mike,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I don&#8217;t have a much experience of Linux, I&#82=
17;ve just had to look up what sshfs is, so as you can imagine this is beco=
ming a very steep learning curve for me.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After reading your reply and doing a bit of research=
 I&#8217;ve found AN-315 &#8220;Software Development on the E3xx USRP&#8221=
; which goes through the cross-compiling process. Unfortunately it looks li=
ke this was written for UHD 3.14.1. so there may be
 some differences for 4.0.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did initially think that as I wasn&#8217;t using t=
he USRP in &#8220;embedded mode&#8221; then the firmware on the unit wouldn=
&#8217;t need to be updated, and the RFNoC would be more or less configured=
 via the host computer. Seems that this isn&#8217;t the case.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;
<b>On Behalf Of </b>Mike via USRP-users<br>
<b>Sent:</b> 12 February 2021 13:40<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Mark,<span style=3D"mso-fareast-language:EN-GB"><o:p></o:p></span></p>
<p>For uhd_usrp_probe to correctly read your fpga block module you need to =
update the XML file in your RFNOC-module/rfnoc/blocks directory.=EF=BF=BD T=
hen you need to cross-compile your module like you would with gr-ettus and =
install it on the E320.=EF=BF=BD I use sshfs
 to cross-compile on the host and make it immediately available on my E310.=
<o:p></o:p></p>
<p>It may be that the process on UHD4 is slightly different but that is wha=
t I do to make the correct name of my new block show up in uhd_usrp_probe.<=
o:p></o:p></p>
<p>I still have the python &quot;attribute error&quot; so hopefully now tha=
t two people are seeing this on both UHD3.15 and UHD4.0 we can get to the b=
ottom of it.<o:p></o:p></p>
<p>Mike<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 2/12/21 6:52 AM, Mark D via USRP-users wrote:<o:p=
></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I=EF=BF=BDm trying to add an OTT block into the FPGA=
 for an E320. I=EF=BF=BDm using version 4.0.0 of the UHD.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">So far I=EF=BF=BDve used rfnocmodtool to create the =
OOT folder structure and add my new block. My initial plan was to add this =
block as per the default code generated that just passes data through. I wa=
nted see that this was instantiated into
 the FPGA and the system still worked before starting to add my own code.<o=
:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I=EF=BF=BDve been following the =EF=BF=BDGetting Sta=
rted with RFNoC in UHD 4.0=EF=BF=BD page on the Ettus website and also the =
Youtube video =EF=BF=BDRFNoC 4 Workshop - GRCon 2020=EF=BF=BD. The .yml fil=
e I=EF=BF=BDve created connects the OTT block between the radio Rx and
 stream endpoint (I=EF=BF=BDve removed the DDC / DUC and already had the FP=
GA working without these).<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">So far I=EF=BF=BDve got the FPGA built and uploaded =
to the FPGA. Uhd_usrp_probe shows that the RFNoC routing as expected, but t=
he name of OTT block has been replaced with Block#0. The OOT project appear=
s as a folder in GNU radio with the new
 block available to be dragged into the project.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I think the issues I=EF=BF=BDm now having are simila=
r to those reported recently by Mike with the E310. Trying to run a GNU rad=
io project results in the error =EF=BF=BD AttributeError: module =EF=BF=BDD=
ilbert=EF=BF=BD object has no attribute 'dogbert'=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">The examples I=EF=BF=BDm following are all based aro=
und the X310, is there an extra step required for the E3xx USRPs to update =
the firmware running on the device so that it=EF=BF=BDs aware of the new bl=
ock type? If so I=EF=BF=BDve no idea how I would go
 about this.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Any help on this would be much appreciated,<o:p></o:=
p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"mso-fareast-language:EN-GB">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">This emai=
l and any files transmitted with it are confidential and intended solely fo=
r the use of the individual or entity to whom they are addressed. If you ha=
ve received this email in error please
 notify the system manager. <br>
<br>
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
</div>
</body>
</html>

--_000_LNXP123MB37249BEB2922B21E5A4D6A94CA8B9LNXP123MB3724GBRP_--


--===============5007232470164617272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5007232470164617272==--

