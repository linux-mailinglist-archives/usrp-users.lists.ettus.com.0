Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E540523B7AD
	for <lists+usrp-users@lfdr.de>; Tue,  4 Aug 2020 11:28:19 +0200 (CEST)
Received: from [::1] (port=55516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2tF4-0007A5-7w; Tue, 04 Aug 2020 05:28:18 -0400
Received: from mail-eopbgr1390138.outbound.protection.outlook.com
 ([40.107.139.138]:40736 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k2tF0-00073M-C2
 for usrp-users@lists.ettus.com; Tue, 04 Aug 2020 05:28:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MiOHnjaGmuqttiJryubjYZIva5Oz3ZwB0JPV13GpfjUC1Yhz3VWhQLylDsm5WQKoIhu7Loqon0YwkrpF//dxiEl/nQS0CjfB2hzK9CYooeUYHRZmA1ek5xKYH8hv3qOGXaaFPZ76WMdUtcsNnKmGOX+aJ8D0GjDPm6y7ATr1mu3EdKHKV9quDK3rslc881IbO2WLV+WXGO+mMsglpONmV/Zn+Z6hLwekTfZ8vMOl176rP+X0F8MYrqqIQkbOrvHVbjp6++7OrLLNoqT9Ap7H9SmYuvCKJ9vXRg3Q1tMN1JUBAY8IA0vQq4cjl2NbzXmFft+CuarZQbi173M1faFn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zVwhsqXTeYdZxqwJS/J/4A8/UhMnwjl8vByr24PG8DI=;
 b=HNKt2SAOzKQIL+xyuTGLvJRy9mnbGfdlPXtOqFxplpIPGBBklMFJUIXlUPQz37pc3ESxPT9v+Q5MlJoEPo+rsAv3CUVw6bB1uLEIRsJb6PwYSbtwiBBtiHgL7uFkDks13DU33PG3bIy1ODUbwkS2dPA4mNAztDdATINK/+GwGMuec9PC6H4AaCeq+OndXoxRF2Nkvdft4MC6Yg/aGg6J3dYYo7V1XQgaByM1X5fD+7VRRERt0nxPOI+Iwl0JTJB2w6riw8u0dD/x+lGFxMQXgGf7o7DZRUSRn5rd5fMcIUB6V9j5OHZ9JnAvSKmUMr9eMRFjhT0sBNdmpz5n5IUDGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zVwhsqXTeYdZxqwJS/J/4A8/UhMnwjl8vByr24PG8DI=;
 b=OMU4G2JMmzA+c3iAHIuMpit9YL7d9BxV4tg3Kd3gdz9PUgu1D86+b3PkHHzlTDnHB5UPH7GsM/Q6CKM4ZiUSXel5GmOtGzlQBFahdq1gGJUZZUgTgDEgWWhn3oTQxCxdqdnMKz6lBpkohJd6M+6OIga570NzxESUa9SxirPKd8M=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB2928.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:55::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.21; Tue, 4 Aug
 2020 09:27:27 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3239.022; Tue, 4 Aug 2020
 09:27:26 +0000
To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Automatically stop executing grc after acquiring
 required number of samples
Thread-Index: AQHWajlQjZDZX0KYNkec/DrXtUOnCqknpgyAgAAIV+k=
Date: Tue, 4 Aug 2020 09:27:26 +0000
Message-ID: <MA1PR01MB2588787F69AE25044C27406C904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25886B9CD23670257F42D479904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <CAN-A3_u_Sh12CTK7Ta+nnDJ03CR+XbcXDPz7AWG+DrOVYnvmRA@mail.gmail.com>
In-Reply-To: <CAN-A3_u_Sh12CTK7Ta+nnDJ03CR+XbcXDPz7AWG+DrOVYnvmRA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.155.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3a58302-135a-4d05-3274-08d838589a3f
x-ms-traffictypediagnostic: MAXPR01MB2928:
x-microsoft-antispam-prvs: <MAXPR01MB2928A1A25DF6949658DE6CA9904A0@MAXPR01MB2928.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XMbKtknigrl3VfYHchmu+5Xci58ez0BWzqjsGs2R0lyd55ZpEf70y6ZdVBen6uGPdaEeU+GGQeCwPqBNNpm3UxPRV+LT7FcfF54e7ilBMXnxzwQmodAN4lVOcklmexGj35Lz6GS5heiAMfh538+/otfpljSy61gSJkr1bZTMH272X+kOtFnnVZK0l3kmJauycMy4JNp6Bty3kdzxJ4grOQedRiTeySvulHrBFQN7ehcjg8A+5H8V6+RUXDtQO5QxbullYb5wffCVVsx6KQ5o9rKMrqXYdd8rRiXPJ/IgUAsNb+KWpVj/t95I0EMfMpuJQ/rq8mLlDazUkOEjkcKVlEsfi2goybNUrlkqjSwhyOpcVS4JKFLlDccAkqG+Jud1/vBni5QnLNMxRvpC71SLWQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(39840400004)(136003)(316002)(2906002)(8676002)(8936002)(5660300002)(52536014)(966005)(26005)(4326008)(7696005)(186003)(45080400002)(6916009)(86362001)(66946007)(66556008)(76116006)(33656002)(6506007)(53546011)(71200400001)(55016002)(9686003)(66446008)(83380400001)(66476007)(508600001)(166002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: S+Dg0ufLlxTSUrc2eLimcWb6HaKRYVZ6ecS5BMIvQhoLnmC0CiBZW7VLoHfWEeTycFHmM7eF1qouwikZg/PRp6tI27avdNuc9jnSeuAwUxUpRhJq0hMusr2dK8iC2wc+SaJUUPAJwMmFZtIO6DqtI7rxxDIhBvmOwcQkYf5C14CSnTu2CiMSB4G6u8T7z10gpgTX7Zsc5q9P/XR9nrYB+bq0GW/voxCF6fcR1/nfwXzuRQmPKyJ62ZVJDCizUSt1ZuRwcCLrLKTQVaXLvQuzMCFr/35rsihJ+0MeubcO6DW6gll+qlBFYA2j3OkAl/po1MADd+1qiSv8B0HO+THuf9ymLxcaL03HiXrb+zm86a/2qjchgF0HfYHYnO6d/rb/5xz9kUhHph2KKIF3t4C0KZjtaiIv7bmOlZ6zoHAgAK20p5fIYwTltD6x1y+zHrcCLnJ+Q45YeaEFUyFufMmcrgf5mFzaQ9/2A7WnkFSqrkrmPtCfVoehgVuAcZSCQaLtilaTiaElg6y4CDF9fnRZ/Ll6dCRlqfxcil9utGiQLJIvg5we+el9lwILViD5BS/T0Bl1E1QYBcJHamfukfvNb1vfVadWHhrIC3Nzo9NAt5JUPxCcu3WRwWORJ5Iccv2IY5Fn5gO+89tkGcy1MlSKbQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a3a58302-135a-4d05-3274-08d838589a3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2020 09:27:26.7896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1dKIvL8gNGFIyLyvqpBWIIHmtt9NHJXrR2q+OH21LAyuU51aryvbqng0NeouxLEa339NEn7WL3zdZAhNSmEPMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2928
Subject: Re: [USRP-users] Automatically stop executing grc after acquiring
 required number of samples
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
Content-Type: multipart/mixed; boundary="===============5685705238502075291=="
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

--===============5685705238502075291==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588787F69AE25044C27406C904A0MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588787F69AE25044C27406C904A0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Mohamed,

Ok thanks for the information.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Sent: Tuesday, August 4, 2020 2:27:15 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Automatically stop executing grc after acquiring =
required number of samples

Hello Koyel,

you can do this by modifying the python script that grc generates.
there will be variable called tb in the python file, which is basically the=
 top block from the gnuradio

tb.start()

this line will start the flowgraph, once it is started by default the pytho=
n code will wait for some keyboard event(in case of no gui) or gui event (i=
n case if you are use a gui window)
Here is the default code for no gui case
    try:
        input('Press Enter to quit: ')
    except EOFError:
        pass
    tb.stop()
    tb.wait()


you can change this to some like below which,  making the main thread to en=
d after some fixed time.

    time.sleep(5)
    tb.stop()
    tb.wait()
    sys.exit(0)

You can get number of seconds you want to run the flowgraph from the sample=
 rate of your usrp and how much total samples you need to capture
Hope this helps !

Regards,
Mohamed Yaaseen


On Tue, 4 Aug 2020 at 10:38, Koyel Das (Vehere) via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi,

Can grc be made to run for a predefined fixed amount of time and number of =
samples and made to stop automatically after acquiring this many number of =
samples  from usrp? If so what parameters need to be set in usrp source blo=
ck and others if any to serve the purpose?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MA1PR01MB2588787F69AE25044C27406C904A0MA1PR01MB2588INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi Mohamed,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Ok thanks for the information.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mohamed Yaaseen &lt;m=
dyaaseen1995@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, August 4, 2020 2:27:15 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Automatically stop executing grc after acq=
uiring required number of samples</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hello Koyel,</div>
<div><br>
</div>
<div>you can do this by modifying the python script that grc generates.&nbs=
p;</div>
<div>there will be variable called tb in the python file, which is basicall=
y&nbsp;the top block from the gnuradio&nbsp;</div>
<div><br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
tb.start()</blockquote>
<div><br>
</div>
<div>this line will start the flowgraph, once it is started by default the =
python code will wait for some keyboard event(in case of no gui) or gui eve=
nt (in case if you are use a gui window)</div>
<div>Here is the default code for no gui case</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
&nbsp; &nbsp; try:<br>
&nbsp; &nbsp; &nbsp; &nbsp; input('Press Enter to quit: ')<br>
&nbsp; &nbsp; except EOFError:<br>
&nbsp; &nbsp; &nbsp; &nbsp; pass<br>
&nbsp; &nbsp; tb.stop()<br>
&nbsp; &nbsp; tb.wait()</blockquote>
<div><br>
</div>
<div><br>
</div>
<div>you can change this to some like below which,&nbsp; making the main th=
read to end after some fixed time.</div>
<div></div>
<div><br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
&nbsp; &nbsp; time.sleep(5)<br>
&nbsp; &nbsp; tb.stop()<br>
&nbsp; &nbsp; tb.wait()<br>
&nbsp; &nbsp; sys.exit(0)</blockquote>
<div><br>
</div>
<div>You can get number of seconds you want to run the flowgraph from the s=
ample rate of your usrp and how much total samples you need to capture&nbsp=
;&nbsp;<br>
</div>
<div>Hope this&nbsp;helps !</div>
<br clear=3D"all">
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Regards,
<div>Mohamed Yaaseen</div>
<div><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, 4 Aug 2020 at 10:38, Koyel =
Das (Vehere) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Can grc be made to run for a predefined fixed amount of ti=
me and number of samples and made to stop automatically after acquiring thi=
s many number of samples &nbsp;from usrp? If so what parameters need to be =
set in usrp source block and others if
 any to serve the purpose?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div id=3D"x_gmail-m_375400170817579731ms-outlook-mobile-signature">Get <a =
href=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
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
</body>
</html>

--_000_MA1PR01MB2588787F69AE25044C27406C904A0MA1PR01MB2588INDP_--


--===============5685705238502075291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5685705238502075291==--

