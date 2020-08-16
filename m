Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B8324559A
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 06:00:39 +0200 (CEST)
Received: from [::1] (port=40264 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k79qV-0005hi-Jh; Sun, 16 Aug 2020 00:00:35 -0400
Received: from mail-eopbgr1380105.outbound.protection.outlook.com
 ([40.107.138.105]:49664 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k79qR-0005Jt-Lr
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 00:00:31 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RODtZgloAJx6bdWS4Br1zRGBRfXPGA7Z2bIjgbz1AESisO65q53Zjbjy5OVxKQadTcIcWHe0NbqaKlmpDW3NHN9pjWDf0d+kdyQC/48+acJ3BFsJqo10eDWHReyu4O0I7Kbq70cQUDWB3Xr0gIpd3r+k9qyh3rtn4EFjlqHLDUQdO386IwV7MztH57Ae6Cfbnp1CkpKgXVDMfG2pn5cxJdiRmydMCzQHtPYaHFAFKiqW2TVFb3j+ydNox3wd5Q6ctwHbBsoUFBIq5sD/8ewUTLOYFN/Af0dartMl/ZRSXXilIxCN7Wl9lgfJFqFfW5jtlxKqyklTe0KfeYlSiVgPUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o98YXZjqrThLL7XVN+5q9pdGY//grEdAjohKMpLAnac=;
 b=j06NYkT+FqwqYmKTtqdiL91tTlIWYuA21Nlhm6LdB7hEYLOONDkOK7eO8LF0KEvZfY4FRJvBAY/irXo6OupxrATyDWdug9tE4BBVnhSzv08Cz6ZSLM0FCBVi9j0Lqmc25r70RDl+xBzJEp7ZjQxunaGmlcHPKqwdd5QziI7r10jrtJX4dA1U3RT7VtbFo+nJdaS94r+WKm20yicvKTx9vdqEejIzvrRsGcQCgEMR/JOgtjWZxdk/KiWzjR9eNmQqxGk301on3Sza5t2/giU0U44XPxbxa7UH4Aqdr9bTw7ZtVKQ7jNX07L1rgk45YptfVUyuweuIMk9zswhQmArY2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o98YXZjqrThLL7XVN+5q9pdGY//grEdAjohKMpLAnac=;
 b=k50JwBL0Dnev15akdM4utDyaUCB1/a/fY+Mc2iZE7iFpmwkFIN93kEn7hFTFphb/PJk+IjTDgFXD4jFvgPD5iIKRNchDR+rJB9s69CFU91MwHrY5ipAWLn0JPee7ARkyRqY65EwKBKZjBea1aIH944G3ZjXiO+vJIJhs0dK9fSw=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB2334.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:55::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16; Sun, 16 Aug
 2020 03:59:38 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.026; Sun, 16 Aug 2020
 03:59:38 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7Gs=
Date: Sun, 16 Aug 2020 03:59:38 +0000
Message-ID: <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
In-Reply-To: <5F382FA9.60900@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.155.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9f13aa5-8c0c-4468-8f70-08d84198cc2f
x-ms-traffictypediagnostic: MAXPR01MB2334:
x-microsoft-antispam-prvs: <MAXPR01MB2334843BD7A6802619A05610905E0@MAXPR01MB2334.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N0u3kpphDxfWeRB0IcfyHLa1R48pdKh1pAlJiRzkGsuExtreLVedkcn4y+EDp8E+0Zf3yOgQv3SC1XvaxIam5cg42U9FxdUe3xUUNE66/1YHpKza8XkqnOxLEkJmWNAkExhIsd15NxNvpeX0KlJYaR/RmoLxml2MeaTaskmonIRMSTJ4jXlMoSVmJw4OpNAadS9ROswgCCApSS53epW62HKeZsMVk0bMdmDs4dQKvhuOMzmVZTaw2TYQTqrDN7Iny8iJbJy2DUxarKleIokzVcFc81bDms8aZvdW100M79rVYy1YHLaERZUzQVp8aLfOEZYp0kmfChzFXNThFis+6Cgcwl4qp9x+Mq9OC03tV8czJVN8S6luHxiDbwCcwF66UFySM7+1iZ3nayyuixn/kg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(136003)(39830400003)(396003)(346002)(366004)(376002)(2906002)(478600001)(86362001)(966005)(8676002)(71200400001)(45080400002)(7696005)(316002)(33656002)(26005)(110136005)(166002)(186003)(6506007)(53546011)(55016002)(5660300002)(52536014)(76116006)(66946007)(8936002)(83380400001)(66476007)(66446008)(64756008)(66556008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: tdwNVISBShx0mPxkrpl4N6NPYJLJGe11+xUnY0hP8MppKLZJP+Ni2nPeXDajt2CuljP6q2NW3eOPHwN2CFbog2EXhXNQAU7c35moElUUXKVqCSYhxdnaFQdUxlcDBXslCGdTX632bQp6SDKUMOjgjVQyqGhe2l2TbcKLQfn+Ap/ka/hdwCNsaCZitsCAXFQeKFpoTZ1Er7kfUPb/W3tSvzC5SqV0s8eSAH4H2oo8boNnWZBBWXOKQlJvjI1uZvY/X5Cf0R4E9Ltzm7L+rwUu0LCo6ZSEUXq+RYhYlEBilZAu8BZARDAk4kEDllyKwm6HmNrzb/POV38Cc+qZbYl5ZG4Ur06CjCZUTR2cf//86Gj6XL0ke3psEKzqb1JTfb34u3ysBeXZlqfe64Geag+PR5lO+6iUhtu8uDgj9QJxvPCnEi96EPVqmWP2PTkUpY8y14BtTwp8rzN2tZpBn+0D0v5a2VM68jszTQa/p/0b9TqjijDEmmJLrmcg/Jnx3zvPZQozaVjCqkHmlKqOEUZOFeoL++ik34L/1fKdo42Xrj7zCXt5WgKNUZVHN14aP2RRRpYYBCz6nX+wonPK/xIf1lNq4+0dyE5UPagw71bDg1TVoMt1i67hDfjTsY7EamCRDhjKe66UI25DtxGl7aD+FQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f13aa5-8c0c-4468-8f70-08d84198cc2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2020 03:59:38.8299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IYIl18FXa9BXmyP811be8OM+bs1gIqg8OY+C00a/IagMxGAQRhN85Pgv3ETM/YIsujL8ZvOnUIwqCyYkMCuKZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2334
Subject: Re: [USRP-users] Incorrect data from usrp 2955
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
Content-Type: multipart/mixed; boundary="===============0623282015764921631=="
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

--===============0623282015764921631==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB258848062639094C9A33858A905E0MA1PR01MB2588INDP_"

--_000_MA1PR01MB258848062639094C9A33858A905E0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

No it doesn=92t look better again after reducing gain. Sometimes the phase =
differences are closeby but not so same as we were getting before and most =
of the times they are totally incorrect. Strength of the signal when we tri=
ed with maximum gain was near -40 dbm.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Sunday, August 16, 2020 12:25:37 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

We are using USRP 2955. Something has gone wrong. Before we were getting co=
nstant phase difference across channels for limited bandwidth and with time=
 when we split single antenna signal using splitter and fed two channels of=
 USRP but now it is not doing so. This happened on Friday that after gettin=
g a series of correct results : constant phase difference across channels b=
y feeding signal using splitter as mentioned above, we suddenly started to =
receive wrong data: random phase  across channels and with time using the s=
ame setup with splitter. The thing we did was setting gain to near maximum =
and receiving 100 MHz sample rate. But I don't think amplifier has damaged =
because in this usrp we have four independent channels and when we connecte=
d the splitter to unused channels then also we got wrong data. What can go =
wrong that USRP is streaming data but phases are wrong? What do you think? =
Please let me know.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


Does it look better again when you reduce the gain?

What is the magnitude of the signals going to the RX ports?



--_000_MA1PR01MB258848062639094C9A33858A905E0MA1PR01MB2588INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>No it doesn=92t look better again after reducing gain. Sometimes the p=
hase differences are closeby but not so same as we were getting before and =
most of the times they are totally incorrect. Strength of the signal when w=
e tried with maximum gain was near
 -40 dbm.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div><span>Hi,<br>
</span>
<div dir=3D"ltr"><br>
</div>
<span>We are using USRP 2955. Something has gone wrong. Before we were gett=
ing constant phase difference across channels for limited bandwidth&nbsp;an=
d with time when we split single antenna signal using splitter and fed two =
channels of USRP but now it is not doing
 so. This happened on Friday that after getting a series of correct results=
 : constant phase difference across channels by feeding signal&nbsp;using s=
plitter as mentioned above,&nbsp;we suddenly started to receive wrong data:=
 random phase &nbsp;across channels and with time
 using the same setup with splitter.&nbsp;The thing we did was setting gain=
 to near maximum and receiving 100 MHz sample rate. But I don't think ampli=
fier has damaged because in this usrp we have four independent channels and=
 when we connected the splitter to unused
 channels then also we got wrong data. What can go wrong that USRP is strea=
ming data but phases are wrong? What do you think? Please let me know.</spa=
n><br>
</div>
<div dir=3D"ltr"><span><br>
</span></div>
<div dir=3D"ltr"><span>Regards,</span></div>
<div dir=3D"ltr"><span>Koyel&nbsp;</span></div>
<div><br>
</div>
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>
</pre>
</blockquote>
Does it look better again when you reduce the gain?<br>
<br>
What is the magnitude of the signals going to the RX ports?<br>
<br>
<br>
</div>
</body>
</html>

--_000_MA1PR01MB258848062639094C9A33858A905E0MA1PR01MB2588INDP_--


--===============0623282015764921631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0623282015764921631==--

