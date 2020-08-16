Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB192458AB
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 19:09:33 +0200 (CEST)
Received: from [::1] (port=45650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7M9x-0002CQ-IF; Sun, 16 Aug 2020 13:09:29 -0400
Received: from mail-eopbgr1390137.outbound.protection.outlook.com
 ([40.107.139.137]:29375 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k7M9t-00025C-KY
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 13:09:26 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9tF6SOxYXA0fg+ly/Ga+nl7Q6L3svyk590506pOt5pwsMRE95P6m3ujmTdOvBBCELfKdozYWBCrDVZxttOP8ygLFwZhstrxjzNirSsl7OtiOtQfgL8Tm4KS8p2K3yeJgPwydqOP2pHpvu2zBuIIzdNwlryPODre/F6A0U+mXATIxh/caOje81/X+OAQ2esHEN7SPZKYkkf5SgsHmrW7pPgsx8yGPPBFJZ1h2za1sOP/5TMwo1IyUcYvrh9kZkSM3xVj+qTqGCakn6CEi6hP3L0/unyx50Kmyekr8MC1WVjnku/P2s+5C8ymWLib97PF8sH75RlnPIqDJtEW1g3u8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TDQxSTPUNJkfLr4I2n73P3nVVAxOLnnhbY3ve3pyRS0=;
 b=SFvWThLL9bllY6gI35OS3M2agYdlV0xK+gKEptpxEEVa+XpzL9dvrf136hO1R0opsrk1x4k7vpQfztDzpcWprDkDiy6dRD6G3rf7jvI8Wl3ZKHl4PFGT5a+c4q0xLw13NyGDwMXTPYnjxIMObms0gpLBQbTHrsnO13ujms9FzZumNlMA7fjF53XMen90c3iqn+oG2YiD4f7J8XzYcMR38YPWVZ+Ga1KpMxII+B3N/tES1BuWgZCTODsYyFR+/IQDx2TdRUJjMGyIoUj7Fg5Ngd5r9ECCqSjKX+asZQwGpSle2qDwhLdUjrzmWniO0lT9Lv6GV4BXkOIx/elkXkti7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TDQxSTPUNJkfLr4I2n73P3nVVAxOLnnhbY3ve3pyRS0=;
 b=RZ0cx1dt/cow0kZUOBqlCKSSnQ5D/w629A5pX2W6Ee99n04FZOkdrFrjQgDppgdfzgzKPBhjWt05ReY+ykbTqK/SmDynEFyYnT1M/S29OPImdSi3UI1LqwNsB87uGxhze3IHSvSjzqFUBLYa3qpuFA3QEPfaoq1gLVxbax6P9j8=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2985.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15; Sun, 16 Aug
 2020 17:08:42 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.027; Sun, 16 Aug 2020
 17:08:42 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7GuAANQ9gIAAAHiPgAACmfWAAASMrw==
Date: Sun, 16 Aug 2020 17:08:42 +0000
Message-ID: <MA1PR01MB258886E81DC683CA9DF30592905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21d87aca-f86b-4b32-de49-08d8420706ff
x-ms-traffictypediagnostic: MA1PR01MB2985:
x-microsoft-antispam-prvs: <MA1PR01MB2985187704727BD38CC3C3D1905E0@MA1PR01MB2985.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /YOyFNb4rMhSLFqZsHkDMmlf5hecIcISzgzGYB2WH7f3MtDrJ/QY5E4eDX9jCWgQvzqEgXwho+BXRQSACMiySMQ6p2Ae/MOiYq1sSpdUMy1wCFTNFhOKcXJeypL7WkB9LBDGbUrHYXUfF5kPl2sUdRnNaKW76f7AfVPaniPiueotu2HHZbk/WHXKhY5llM6KJBiGcOhszqGQ+ckvNeeN576KKGtiM13fJc/qy+y0RROcxBCAp9AM91EB0IMSZ+80PKy3Ga73vnhhByIWn6dS33282HPinGthL6Pj4zXOj1DWirwkgQaDEP8iifN4RmdQz1UDobr8y71A83kT+O52lw4K3s/X4cJAgSCkOtde5yRlTp/86B3yrRwb13d50y7hUmCK1Fkn6bXWSy3u9K2Yfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(39830400003)(396003)(376002)(5660300002)(64756008)(33656002)(8936002)(66446008)(66556008)(66476007)(66946007)(76116006)(8676002)(2940100002)(52536014)(9686003)(71200400001)(478600001)(55016002)(45080400002)(2906002)(966005)(86362001)(110136005)(186003)(26005)(316002)(7696005)(83380400001)(53546011)(6506007)(166002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2kGENV8tqzis/nZllC3KPQGl2nHYkhupBpwWfBh+hj0paAPxW/FsUQdVrnRy1BLJuTJrjKNgazuchZISgvhRaJS1bmA6eP5KGtueaj3+DDuctHobuonjWIDWbQxCpN+z9zDylb8FcPSv33Yso6KbvlsUTKWF7VyFzbekKwZzZeKhNya0lw93Nrz4WCG1UEqpdVDY+ZaZeOJVhQYBQSdzqDET6ycdguL9YJGslznv9SeogohpCUaaCE9k1ZIuN8PGsr3IkfSTOtLz3klFkX86KYv8fsjkMIenLSzHHwpH7CZF6Y79n8B5VLtDgZtYgxEBO/PgfJZiUhkIU4l6CJXALPIXeYkIUpKV+n5Ab6v4ZsTl+m8DrOWzUo33J8irAwgnBXrwXvt02e3LK+ZkYtKZii1jUORSTkSl7po6RdbWTXZIp8sMSAj+Hw0D2DN7LkfZpC4ousU8xRuuJjkQDisQ4GE2rIYY30+nucZJIWMHaZTyzvvJltaTBX77tSzd841gsX6AG1X51q2ZtVZuH1zlF82kBG8XNXMlnk7UYprv/Bi6Tl8na6xbMja4+/QVeiLo5XMwY9ioE7gZVqcyu1XBpZhylQlXsthFHWtQRERWADScLtYnGiTFiNwhBgJva7aOQENQyiBp5mNE7u6dqttZQA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d87aca-f86b-4b32-de49-08d8420706ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2020 17:08:42.1591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQ13vdKm/KUn9QqQRQP+XeqQEXs++ra8vohexKeaduxl3yvz5r6tESGsjt2GW8+iuWl7tYt1CBkyBxvL5XDRuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2985
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
Content-Type: multipart/mixed; boundary="===============4410078881485649791=="
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

--===============4410078881485649791==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB258886E81DC683CA9DF30592905E0MA1PR01MB2588INDP_"

--_000_MA1PR01MB258886E81DC683CA9DF30592905E0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

If you want I can send you the matlab code. You just have to capture two ch=
annels of usrp better with grc and save those as .bin files. Then you can r=
un my matlab code. You just have to change the file names in the code with =
the names that you give in your .bin files. You should be getting same phas=
e differences across frequency and channels and the values are stored in on=
e vector in the code that you can see

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Koyel Da=
s (Vehere) via USRP-users <usrp-users@lists.ettus.com>
Sent: Sunday, August 16, 2020 10:16:54 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

The measurement is not initial phase but the phase difference between two c=
hannels

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Koyel Das (Vehere) <koyel.das@vehere.com>
Sent: Sunday, August 16, 2020 10:15:48 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

the phase difference between two channels of USRP as a function of frequenc=
y and time,  when measured by splitting the same signal and feeding two cha=
nnels of usrp, are wandering around wrt one another which was not happening=
 before. I had given demo more than 30 times based on this principle and te=
sted previously more than 50 times and I got correct result every time. Now=
 only suddenly it started happening. The frequency is 2.4 GHz and bandwidth=
 I tried from 1 MHz to 100 MHz. Previously the whole bandwidth was showing =
similar values but then suddenly started behaving abnormally giving near to=
 correct result sometimes and sometimes junk.

Regards,
Koyel
Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, August 16, 2020 10:05 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/15/2020 11:59 PM, Koyel Das (Vehere) wrote:
No it doesn=92t look better again after reducing gain. Sometimes the phase =
differences are closeby but not so same as we were getting before and most =
of the times they are totally incorrect. Strength of the signal when we tri=
ed with maximum gain was near -40 dbm.

Regards,
Koyel
To clarify some things.

(A) The phase errors are just the initial phases--they don't wander around =
with respect to one another during a run?
(B) What frequency range?



Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> on behalf of Marcus D. Leech via USRP-users <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Sent: Sunday, August 16, 2020 12:25:37 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
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




--_000_MA1PR01MB258886E81DC683CA9DF30592905E0MA1PR01MB2588INDP_
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
<div>If you want I can send you the matlab code. You just have to capture t=
wo channels of usrp better with grc&nbsp;and save those as .bin files. Then=
 you can run my matlab code. You just have to change the file names in the =
code with the names that you give in
 your .bin files. You should be getting same phase differences across frequ=
ency and channels and the&nbsp;values are&nbsp;stored in one vector in the =
code that you can see&nbsp;</div>
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
sers-bounces@lists.ettus.com&gt; on behalf of Koyel Das (Vehere) via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:16:54 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div dir=3D"ltr">The measurement is not initial phase but the phase differe=
nce between two channels&nbsp;</div>
<div><br>
</div>
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Koyel Das (Vehere) =
&lt;koyel.das@vehere.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:15:48 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div dir=3D"ltr"><span style=3D"font-size:inherit">the phase difference bet=
ween two channels of USRP as a function of frequency and time,&nbsp; when m=
easured by splitting the same signal and feeding two channels of usrp,&nbsp=
;are wandering around wrt one another which was
 not happening before. I had given demo more than 30 times based on this pr=
inciple and tested previously more than 50 times and I got correct result e=
very time. Now only suddenly it started happening. The frequency is 2.4 GHz=
 and bandwidth I tried from 1 MHz
 to 100 MHz. Previously the whole bandwidth was showing similar values but =
then suddenly started behaving abnormally giving near to correct result som=
etimes and sometimes junk.</span><br>
</div>
<div dir=3D"ltr"><span style=3D"font-size:inherit"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size:inherit">Regards,</span></div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div class=3D"x_x_ms-outlook-ios-signature" id=3D"x_x_ms-outlook-mobile-sig=
nature">Get
<a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
<div id=3D"x_x_id-d2ed923a-74ce-4157-8a68-f15a06251364" class=3D"x_x_ms-out=
look-mobile-reference-message">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%; font-size:12p=
t; color:rgb(0,0,0)">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
"><b>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
<b>To:</b> Koyel Das (Vehere); usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"x_x_moz-cite-prefix">On 08/15/2020 11:59 PM, Koyel Das (Veher=
e) wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>No it doesn=92t look better again after reducing gain. Sometimes the p=
hase differences are closeby but not so same as we were getting before and =
most of the times they are totally incorrect. Strength of the signal when w=
e tried with maximum gain was near
 -40 dbm.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel <br>
</div>
</div>
</div>
</blockquote>
To clarify some things.<br>
<br>
(A) The phase errors are just the initial phases--they don't wander around =
with respect to one another during a run?<br>
(B) What frequency range?<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div><br>
</div>
<div class=3D"x_x_ms-outlook-ios-signature" id=3D"x_x_ms-outlook-mobile-sig=
nature">Get
<a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> USRP-users
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounces@li=
sts.ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Marcus D. Leech=
 via USRP-users
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettu=
s.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
<b>To:</b> <a class=3D"x_x_moz-txt-link-abbreviated" href=3D"mailto:usrp-us=
ers@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_x_moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_x_moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das (Veh=
ere) via USRP-users wrote:<br>
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
<div class=3D"x_x_x_ms-outlook-ios-signature" id=3D"x_x_x_ms-outlook-mobile=
-signature">
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<br>
<fieldset class=3D"x_x_x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________=0A=
USRP-users mailing list=0A=
<a class=3D"x_x_x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists=
.ettus.com">USRP-users@lists.ettus.com</a>=0A=
<a class=3D"x_x_x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mai=
lman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com</a>=0A=
</pre>
</blockquote>
Does it look better again when you reduce the gain?<br>
<br>
What is the magnitude of the signals going to the RX ports?<br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB258886E81DC683CA9DF30592905E0MA1PR01MB2588INDP_--


--===============4410078881485649791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4410078881485649791==--

