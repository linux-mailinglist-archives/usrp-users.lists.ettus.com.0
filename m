Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2372C3162CF
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 10:55:03 +0100 (CET)
Received: from [::1] (port=43956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9mD4-00057g-Ef; Wed, 10 Feb 2021 04:54:58 -0500
Received: from mailgw04.it.ntnu.no ([129.241.56.34]:57304)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <elisebsm@stud.ntnu.no>)
 id 1l9mCz-00053Z-97
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 04:54:53 -0500
Received: from localhost (localhost [127.0.0.1])
 by mailgw04.it.ntnu.no (Postfix) with ESMTP id 567D91382433
 for <usrp-users@lists.ettus.com>; Wed, 10 Feb 2021 10:54:11 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mailgw04.it.ntnu.no
Received: from mailgw04.it.ntnu.no ([127.0.0.1])
 by localhost (mailgw04.it.ntnu.no [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rXFGFEp-FX_2 for <usrp-users@lists.ettus.com>;
 Wed, 10 Feb 2021 10:54:10 +0100 (CET)
Received: from NOR01-SV0-obe.outbound.protection.outlook.com
 (mail-sv0nor01lp2041.outbound.protection.outlook.com [104.47.30.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgw04.it.ntnu.no (Postfix) with ESMTPS id A458B138215F
 for <usrp-users@lists.ettus.com>; Wed, 10 Feb 2021 10:54:10 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KevBb9mHMfKR/TyCUR92ouPdxtb7/9X3VykkeCrU+ji2o/msSqOs3B5Tlnutveojr7p3jsUE+J8opQFOuaZn+ftLD1GEKMniJxxvnaOr2AT3eLIzJ5SsmgVu+vACQcAf/tcomAZ7Mq2tHs0vWlo0/0y1yQwqtZ13Q4gyUpnl1V9Z0YTI1Two5Smk8QPrsILXsvVs1X2yVRylRFvGUqBs5PBTsjNgmukfI+F32szu2vcTt+N07vZkgCZZdRCgmtEBSJUc2CneQ2gqlAI7KLA6tIAdSTeXFUE0cpzYcA0dCbhimIMjl4LA1b2yFIJLjh2uBjb8tCm/MGaWxk9Z4Zvg1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+23K9skEcdchEeeciT74KFnd6WCaALrr8KwWGQl0TZA=;
 b=CCRCfZpltJl24bLMQgNnckg6D0KPYiWB18wHhUkckB5mUEOgIwIP+rDAtYpkALiKHX2E7w7F5tCgTaGVAEmyUzKI+a4vm3B8rBcx5Otjhhomm+R92Dc9q8RBPQLWE71gMpzA0L38z4d8pQ8sZY5ZequCO3OfkYk+Fmg0yiLhmXCSNTd4SKJmmEuHSFslqYpBL8Y37Ivi65L2kfkHrTRHOWpFE45ZdPtHvftXjKiPirPBtI8A2+mhlFTIt1FELAKV0IZqaKDxVevyVKFZzFF7exlDVAN6ZFThqiHIiFnizyKfBoIrNXUdBvEuI7LfBAPW+3Tei5mJmuMSJktLiT3OUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=stud.ntnu.no; dmarc=pass action=none header.from=stud.ntnu.no;
 dkim=pass header.d=stud.ntnu.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=studntnu.onmicrosoft.com; s=selector2-studntnu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+23K9skEcdchEeeciT74KFnd6WCaALrr8KwWGQl0TZA=;
 b=NI3FSSXjDOxl2z6vjGeOGYMoQfYPtXFCe5ZWNlrNgyqd3a8PXDkZDuZeRLmGA+pmJDxSB9bJkYRmxDZ9395QzbEs275AGNABCF/OuE4gTpZaHk2iAkZZR/tMFSk6APyK1XROTcuL/HwkiIBcX3BN4DPjA4vIezToxFStVo3jPVk=
Received: from OLAP279MB0104.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:5::12) by
 OL1P279MB0274.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:11::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.25; Wed, 10 Feb 2021 09:54:09 +0000
Received: from OLAP279MB0104.NORP279.PROD.OUTLOOK.COM
 ([fe80::fdda:e26b:b399:96c1]) by OLAP279MB0104.NORP279.PROD.OUTLOOK.COM
 ([fe80::fdda:e26b:b399:96c1%3]) with mapi id 15.20.3846.026; Wed, 10 Feb 2021
 09:54:09 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Ettus USRP B200 mini - FPGA compatibility number
Thread-Index: AQHW/5JUn+40NQGfXUmipz7M06IHCw==
Date: Wed, 10 Feb 2021 09:54:09 +0000
Message-ID: <OLAP279MB0104011D702BCCAC5BB528F6E68D9@OLAP279MB0104.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=stud.ntnu.no;
X-Ntnu-xOriginatingIp: [2001:700:300:4109:69ff:4c03:2cfb:77a6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a905f343-0d05-4a32-514d-08d8cda9d01c
x-ms-traffictypediagnostic: OL1P279MB0274:
x-microsoft-antispam-prvs: <OL1P279MB0274129439C7BF39D8B03B7BE68D9@OL1P279MB0274.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zDK0p2p9ubI0aJta0bIT8FKzvOTTYJ+ER06cwGk+H7TYV8K6okO8XUfwqq/IAWEEqgr5Gjnp8uyrX0NH1HuyjgW4jYtNTvnYPJcQ8nwK9Z5sMphQFnAu+tNyBjES1npSeaKmhmfdOyRupVsMNFQBejNtAuA0rwI/YoEe0XOw50To2lRxkFUR9FJ6DpaGM4Bmvi39SDDK2DEDUn+hs5FADFufRasVxshhfQqdfUMPAtEFDaosvKpS1a+FCJplRhUfEsrcJkknoftuKJ64shOtCu5Uj07fUp4mWSxAxKBDL5ApJl18OZVVoC3siZI2bMEhHDt8UXIpjdU2z9eWiUoQeg4BWaqR7RgRG/2snEYkKUJ3WpH5dzQOt9q6ZDiQjI0ZTkQk8UUt72RY8gkWlRWABoTLwVk+GTV3TF+fHQ+tBKNfSTyG+q6I5s+OUrmLaZhws5wZXLhzZutRqQ8jOJDCNN1wah5pChgQSPecrswQD3+3O6r17HfOxmyBx0AuoAqmzQKP+xkgUOnRnlIZWMBlfIGd1PrKMbKdQH3fgY03s8yxVNxXjcN20N5mDVyRBgNRZAe6O94YufxHOTQvzexf8aNX1jtHXF05QIcE8jQdpiI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OLAP279MB0104.NORP279.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(396003)(39850400004)(136003)(66946007)(8936002)(66476007)(166002)(8676002)(5660300002)(966005)(66446008)(64756008)(66556008)(76116006)(33656002)(71200400001)(86362001)(7696005)(186003)(4744005)(19627405001)(316002)(2906002)(9686003)(6506007)(786003)(6916009)(55016002)(52536014)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?2gt94VFOxLZ09DjPTAclVSkjhAPYJRJPesp5JtaPmEawJnl7cVkE/Z5Ifl?=
 =?iso-8859-1?Q?TvzguWmdAQcAIxdZWYdXaa/MzYI1bpTTEdKXYpvpTUkKBNGsXv5Yes29RZ?=
 =?iso-8859-1?Q?YHqXdk7XAEUbd70dbvg8cFMRsuzGu3Ipey1YltEstqMpscr7oECWRHM2Bd?=
 =?iso-8859-1?Q?cwz1vQQLOdY55zoYiHbgJR8xkDOEkQlvqVOj2UC9hBq1xReq5usBfEAuPj?=
 =?iso-8859-1?Q?CQMNMhHcjzjz7AxV3tbqzBQI95qOaQeTtITy1hxaqEgGD/eonb/9cnMX1z?=
 =?iso-8859-1?Q?BRcURHdkiF6MnJQ+yKW5rCqouarybNNksGHMmQGcKsgvAnccpIQl9ONz+J?=
 =?iso-8859-1?Q?NS5dg6Hhjqv2nLMWS9NpXj4QoQaeYQFa5l9F1ehKLb2COWKt2u2JWW+YGC?=
 =?iso-8859-1?Q?OHt+KCtHEvXZpx2L+y3iyFDq1cfSCI3YtvD9ivunJ9cloY4p1O8sq582Fg?=
 =?iso-8859-1?Q?XIA2lI2j+N8EK+Fjq0l3IFLrnTOs460cPLkWGsrNSW1SVOORRp7uZituqi?=
 =?iso-8859-1?Q?1h6aajJZ/lRGGzvt+nhH6SzrgWtQ3alZS8p6fKIzjK3uHJn6vd6miDcq0L?=
 =?iso-8859-1?Q?vCKlSI0Nv6V0ZjS0qK8fXhllLWT4JtTFBKKMWqeoBgQJfsfeYiLv2GVzfE?=
 =?iso-8859-1?Q?1pdKQZItQ0LdPMXC3SqVasUB4P19CpeSFeGDdPR9xa8Et3I3XFAe88jAkB?=
 =?iso-8859-1?Q?zZxe7kRCiZYatFmsgLuFRuL5EQWybuDO+xr2GL3/eyceo/lqy/7GngtQwp?=
 =?iso-8859-1?Q?+D9XnO5nmgVcBIiHDulLyJRr22lkn5hV/hJML42x7g+5M6+QnXGPf+uoEe?=
 =?iso-8859-1?Q?3y36rffz6FbQKW7Sn3mICmSsxRICxlFwOgGW+zBzavvnkE+WVPxLcC2vpk?=
 =?iso-8859-1?Q?N4Fj5ajOBrJjJtJQmT4pSY+46frMLdjEKkvQLy8HfqBK7FhWjssFHQsYy3?=
 =?iso-8859-1?Q?pum6yKsNLCSJ8B6HTKrotO5vebWajcPAy1nbcfuPUX3W28ZBlrR/nU+rh7?=
 =?iso-8859-1?Q?uMi1QJQJphnMom6gsnyFqqTZluPmaZGI4yl9nGmGqjRyXyVR8THaW+4RMG?=
 =?iso-8859-1?Q?2SsdIdBDI1vm8yCcgGjytm0pkKouvGTqB3SzndUUFeyxnQOpvb4fRITqPm?=
 =?iso-8859-1?Q?OqMDnNsu1rm6NavluL4+vVsAKa7CaxRzMWzwnQACWeVctodrusVuF/AW7W?=
 =?iso-8859-1?Q?45kzuzFvPchCZB6Yrztww5T7M0OiYHw/V2uXf9ACR7Q8IHq0HT6vJmC6T7?=
 =?iso-8859-1?Q?Zd6Mieqpnf/vls7vkCQy6N98LGfQFAWn3nd+A/XeTN62kgvEl9Z/O4sCh+?=
 =?iso-8859-1?Q?ZNrNo23K0hds6WAWUrLcLu+xkz/1emg8NG8kvUELAnkyqMbb8eqBbfGDg2?=
 =?iso-8859-1?Q?pg+EEIt3USqSFoRZPVy4trk8Q3N7KWmJ5IdTBVUE+ZFuG1UaYKah8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: stud.ntnu.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OLAP279MB0104.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a905f343-0d05-4a32-514d-08d8cda9d01c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2021 09:54:09.6882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09a10672-822f-4467-a5ba-5bb375967c05
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aEJ62RUpBl5GYSwM4szw7yMT2LxA5PI+7Gc9AJelHab14VTYzeU4ki0CgZd5RAtdgGFvhcMXuajKm+cTm+lINg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OL1P279MB0274
Subject: [USRP-users] Ettus USRP B200 mini - FPGA compatibility number
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
From: Elise Breivik Smebye via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Elise Breivik Smebye <elisebsm@stud.ntnu.no>
Content-Type: multipart/mixed; boundary="===============3996760975477360194=="
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

--===============3996760975477360194==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OLAP279MB0104011D702BCCAC5BB528F6E68D9OLAP279MB0104NORP_"

--_000_OLAP279MB0104011D702BCCAC5BB528F6E68D9OLAP279MB0104NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, I am new to UHD, USRP and FPGA.

I am trying to use a Ettus USRP B200 mini to monitor the network traffic be=
tween two android phones with GNU radio with this guide https://github.com/=
bastibl/gr-ieee802-11.<https://github.com/bastibl/gr-ieee802-11>

When running the example file "wifi_tx_grc" I get a FPGA compatibility numb=
er error.



[Screenshot from 2021-02-10 09-55-57.png]GNU Radio test



I have also tried to follow this guide https://github.com/srsLTE/srsLTE

and get the same error. I have run "uhd_images_donwloader" and get that all=
 images are up to.



[Screenshot from 2021-02-10 09-29-25.png]

































Hope anyone can help.


--_000_OLAP279MB0104011D702BCCAC5BB528F6E68D9OLAP279MB0104NORP_
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
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
Hi, I am new to UHD, USRP and FPGA.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
I am trying to use a Ettus USRP B200 mini to monitor the network traffic be=
tween two android phones with GNU radio with this guide<span>&nbsp;</span><=
a href=3D"https://github.com/bastibl/gr-ieee802-11" target=3D"_blank" rel=
=3D"nofollow noopener noreferrer" style=3D"box-sizing:border-box;color:rgb(=
4, 65, 35);text-decoration:underline">https://github.com/bastibl/gr-ieee802=
-11.</a></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
When running the example file &quot;wifi_tx_grc&quot; I get a FPGA compatib=
ility number error.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<span class=3D"lia-inline-image-display-wrapper lia-image-align-inline" sty=
le=3D"box-sizing:border-box;display:inline-block;max-width:100%;width:958px=
"><span class=3D"lia-message-image-wrapper lia-message-image-actions-narrow=
 lia-message-image-actions-below" style=3D"box-sizing:border-box;display:in=
line-block"><span class=3D"custom-image-new-tab" data-link=3D"https://ni.i.=
lithium.com/t5/image/serverpage/image-id/281803i304FC834DE46FE09?v=3D1.0" s=
tyle=3D"box-sizing:border-box"></span><img title=3D"Screenshot from 2021-02=
-10 09-55-57.png" alt=3D"Screenshot from 2021-02-10 09-55-57.png" class=3D"=
lia-media-image" tabindex=3D"0" style=3D"box-sizing:border-box;vertical-ali=
gn:middle;cursor:zoom-in;display:block;max-width:100%;height:auto" src=3D"h=
ttps://ni.i.lithium.com/t5/image/serverpage/image-id/281803i304FC834DE46FE0=
9/image-size/large?v=3D1.0&amp;px=3D999"></span><span class=3D"lia-inline-i=
mage-caption" style=3D"box-sizing:border-box;color:rgb(102, 102, 102);curso=
r:text;display:block;font-size:13px;font-style:italic;height:auto;margin:10=
px 0px 20px">GNU
 Radio test</span></span></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
I have also tried to follow this guide<span>&nbsp;</span><a href=3D"https:/=
/github.com/srsLTE/srsLTE" target=3D"_blank" rel=3D"nofollow noopener noref=
errer" style=3D"box-sizing:border-box;color:rgb(4, 65, 35);text-decoration:=
underline">https://github.com/srsLTE/srsLTE</a></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
and get the same error. I have run &quot;uhd_images_donwloader&quot; and ge=
t that all images are up to.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<span class=3D"lia-inline-image-display-wrapper lia-image-align-left" style=
=3D"box-sizing:border-box;display:inline-block;max-width:100%;float:left;ma=
rgin-right:10px;width:999px"><span class=3D"lia-message-image-wrapper lia-m=
essage-image-actions-narrow lia-message-image-actions-below" style=3D"box-s=
izing:border-box;display:inline-block"><span class=3D"custom-image-new-tab"=
 data-link=3D"https://ni.i.lithium.com/t5/image/serverpage/image-id/281797i=
EAD9FCD6816778AF?v=3D1.0" style=3D"box-sizing:border-box"></span><img title=
=3D"Screenshot from 2021-02-10 09-29-25.png" alt=3D"Screenshot from 2021-02=
-10 09-29-25.png" class=3D"lia-media-image" tabindex=3D"0" style=3D"box-siz=
ing:border-box;vertical-align:middle;cursor:zoom-in;display:block;max-width=
:100%;height:auto" src=3D"https://ni.i.lithium.com/t5/image/serverpage/imag=
e-id/281797iEAD9FCD6816778AF/image-size/large?v=3D1.0&amp;px=3D999"></span>=
</span></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
 51, 51);font-family:Helvetica, Arial, sans-serif;text-align:left;backgroun=
d-color:rgb(255, 255, 255)">
Hope anyone can help.</p>
<br>
</div>
</body>
</html>

--_000_OLAP279MB0104011D702BCCAC5BB528F6E68D9OLAP279MB0104NORP_--


--===============3996760975477360194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3996760975477360194==--

