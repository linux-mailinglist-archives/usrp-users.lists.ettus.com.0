Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AEECE5A1
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 16:48:32 +0200 (CEST)
Received: from [::1] (port=37164 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHUJH-0000Xi-Eu; Mon, 07 Oct 2019 10:48:27 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:37538)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1iHUJD-0000S2-HA
 for usrp-users@lists.ettus.com; Mon, 07 Oct 2019 10:48:23 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 22000CC012B
 for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2019 16:47:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.74])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id LIZdkB3mIZtn for <usrp-users@lists.ettus.com>;
 Mon,  7 Oct 2019 16:47:38 +0200 (CEST)
Received: from SRV223.tudelft.net (srv223.tudelft.net [131.180.6.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx3.tudelft.nl (Postfix) with ESMTPS id 683EACC012A
 for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2019 16:47:38 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV223.tudelft.net
 (131.180.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Mon, 7 Oct
 2019 16:47:35 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.009; Mon, 7 Oct 2019 16:47:35 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: One sample - 5 ns delay between the two RF signals/ X310
Thread-Index: AQHVfRxPXO3m+ZUVpUS457+IkJr/Ig==
Date: Mon, 7 Oct 2019 14:47:35 +0000
Message-ID: <73ac263040924ec2b4166725b481be2d@tudelft.nl>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
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
From: Cherif Diouf via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Content-Type: multipart/mixed; boundary="===============6206190901471274735=="
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

--===============6206190901471274735==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_73ac263040924ec2b4166725b481be2dtudelftnl_"

--_000_73ac263040924ec2b4166725b481be2dtudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Daniel,


The problem was finally solved. It was from both my software and my hardwar=
e development.

-> in fact in the software I used the set_time_next_pps() call from the dev=
ice3 object to synchronize the vitatime counter with the PPS signal, but la=
ter on I would also create a rfnoc_streamer object to be able to use the rf=
 frontend. This would somewhat modify the vitatime value and desynchronize =
my local counter with the  vitatime counter causing random offset between t=
he two counters.

-> The second problem was linked to the cvita_hdr_encoder  which was not pr=
operly set, Leading the frontend to transmit asap, I guess.


So from both these issues I could be from time to time off by one sample/5 =
ns at the transmitter.

Now that's old story !


Many thanks


Cherif




__________________

Fabian, I had a hunch it was just the 3.3V part--thanks for clarifying!

Cherif, the DAC interface timing (and for that matter, the ADC timing)
should be fairly tight. What you're seeing is expected and matches the
numbers we designed it to. The FPGA constraints are intentionally tight to
provide some extra margin at the DAC. Since this is all in the same X310,
you could start by isolating the various components of the design using the
front-panel GPIO connector. Run a trigger from each of your custom blocks
to the GPIO and see if they line up on a scope. If they don't, then you
might have a baseband timing issue (with how timed commands are interacting
with your blocks). If they line up, then it points to a timing failure in
the DAC.

-Daniel

--_000_73ac263040924ec2b4166725b481be2dtudelftnl_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Daniel, <br>
</p>
<p><br>
</p>
<p>The problem was finally solved. It was from both my software and my hard=
ware development.</p>
<p>-&gt; in fact in the software I used the set_time_next_pps() call from t=
he device3 object to synchronize the vitatime counter with the PPS signal, =
but later on I would also create a
<span>rfnoc_streamer</span> object to be able to use the rf frontend. This =
would somewhat modify the vitatime value and desynchronize my local counter=
 with the&nbsp; vitatime counter causing random offset between the two coun=
ters.</p>
<p>-&gt; The second problem was linked to the <span>cvita_hdr_encoder</span=
>&nbsp; which was not properly set, Leading the frontend to transmit asap, =
I guess.</p>
<p><br>
</p>
<p>So from both these issues I could be from time to time off by one sample=
/5 ns at the transmitter.
<br>
</p>
<p>Now that's old story !</p>
<p><br>
</p>
<p>Many thanks<br>
</p>
<p><br>
</p>
<p>Cherif<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>__________________<br>
</p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">Fabian, I had a hunch i=
t was just the 3.3V part--thanks for clarifying!<br>
<br>
Cherif, the DAC interface timing (and for that matter, the ADC timing)<br>
should be fairly tight. What you're seeing is expected and matches the<br>
numbers we designed it to. The FPGA constraints are intentionally tight to<=
br>
provide some extra margin at the DAC. Since this is all in the same X310,<b=
r>
you could start by isolating the various components of the design using the=
<br>
front-panel GPIO connector. Run a trigger from each of your custom blocks<b=
r>
to the GPIO and see if they line up on a scope. If they don't, then you<br>
might have a baseband timing issue (with how timed commands are interacting=
<br>
with your blocks). If they line up, then it points to a timing failure in<b=
r>
the DAC.<br>
<br>
-Daniel</span></font><br>
</p>
</div>
</body>
</html>

--_000_73ac263040924ec2b4166725b481be2dtudelftnl_--


--===============6206190901471274735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6206190901471274735==--

