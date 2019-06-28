Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 927735A094
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 18:13:01 +0200 (CEST)
Received: from [::1] (port=50620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgtUe-0004iR-0r; Fri, 28 Jun 2019 12:12:56 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:59096)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hgtUZ-0004d5-HM
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 12:12:51 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id 68294B63E3D;
 Fri, 28 Jun 2019 18:12:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id e8NZcLN5nz2F; Fri, 28 Jun 2019 18:12:08 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id B272BB63E0B;
 Fri, 28 Jun 2019 18:12:08 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Fri, 28 Jun 2019 18:12:07 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Fri, 28 Jun 2019 18:12:07 +0200
To: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: gr-ettus and GNU radio v3.8
Thread-Index: AQHVLcldqnk5+pB9WUyNRXT94e8lAg==
Date: Fri, 28 Jun 2019 16:12:07 +0000
Message-ID: <1561738327024.98021@supracon.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.3.1.20]
MIME-Version: 1.0
Subject: [USRP-users] gr-ettus and GNU radio v3.8
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Erik Heinz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erik Heinz <erik.heinz@supracon.com>
Content-Type: multipart/mixed; boundary="===============9086564643351156855=="
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

--===============9086564643351156855==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_156173832702498021supraconcom_"

--_000_156173832702498021supraconcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Have there been any efforts yet to port gr-ettus to the gnuradio master bra=
nch?

I made some trials today with gr-ettus under gnuradio-master and at least w=
as able to compile and install it (except for fosphor which seems to need Q=
t4).
Automatic conversion of the grc xml files to the yml format was not possibl=
e, so I converted one by hand (uhd_rfnoc_dma_fifo).

I got so far that the block shows up in grc and most error messages went aw=
ay.
There are still errors, however, about 'Domain key "rfnoc" is not registere=
d' for the input and output ports. This is probably the reason as well why =
I cannot connect anything to this block (red arrows).

Any ideas? How do I register the rfnoc domain? Are there any serious reason=
s preventing the rfnoc blocks from working under v3.8?

Best regards,
Erik


--_000_156173832702498021supraconcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<div><br>
</div>
<div>Have there been any efforts yet to port gr-ettus to the gnuradio maste=
r branch?</div>
<div><br>
</div>
<div>I made some&nbsp;trials&nbsp;today with gr-ettus under gnuradio-master=
 and at least was able to compile and install it (except for fosphor which =
seems to need Qt4).</div>
<div>Automatic conversion of the grc xml files to the yml format was not po=
ssible, so I converted one by hand (uhd_rfnoc_dma_fifo).</div>
<div><br>
</div>
<div>I got so far that the block shows up in grc and most error messages we=
nt away.
</div>
<div>There are still errors, however, about 'Domain key &quot;rfnoc&quot; i=
s not registered' for the input and output ports. This is probably the reas=
on as well why I cannot connect anything to this block (red arrows).</div>
<div><br>
</div>
<div>Any ideas? How do I register the rfnoc domain? Are there any serious r=
easons&nbsp;preventing the rfnoc blocks&nbsp;from working&nbsp;under v3.8?<=
br>
</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Erik</div>
<div><br>
</div>
</body>
</html>

--_000_156173832702498021supraconcom_--


--===============9086564643351156855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9086564643351156855==--

