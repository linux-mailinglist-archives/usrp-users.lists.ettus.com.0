Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AD53583A7
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 14:51:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3E0C384073
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 08:51:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="IRjcfVv6";
	dkim-atps=neutral
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E50F383A81
	for <usrp-users@lists.ettus.com>; Thu,  8 Apr 2021 08:50:28 -0400 (EDT)
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id D496F6FEE3_6EFC12B;
	Thu,  8 Apr 2021 12:50:26 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id B978B11C6A0_6EFC11F;
	Thu,  8 Apr 2021 12:50:25 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-02.tubit.win.tu-berlin.de (130.149.6.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.5;
 Thu, 8 Apr 2021 14:50:25 +0200
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0858.002;
 Thu, 8 Apr 2021 14:50:25 +0200
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: Vladica Sark <vladicasark@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Timed samples overflow
Thread-Index: AQHXLHU3MDZxUozV/0m3uHcTVF/rs6qqka0S
Date: Thu, 8 Apr 2021 12:50:25 +0000
Message-ID: <c4ea86fee2e34c2fa6b81010725c1d8a@campus.tu-berlin.de>
References: <42456a74-0a88-a74a-5e21-459680557d46@gmail.com>
In-Reply-To: <42456a74-0a88-a74a-5e21-459680557d46@gmail.com>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=L6np1HtJo7u4z/vEAiqw8+dDN7wbHsC+kZUbOe+cz38=; b=IRjcfVv6PUdrxoElyGd1koFPexrDVC+GCOC5a+qhHRkreDqUZmgFKPFRjNM9YiBJdTAf5kCLLgdBccTQcr4lbx6GmoBRHIeeND6OrpDNZV0Bo1xvrRUQr865LjqUNMN/MMM980uZnm+lUZgTCwWra13E16nH0YXrUF6InXSMCNQ=
Message-ID-Hash: B64CRT3JHN34G6GGY5COHE72NROWCHGQ
X-Message-ID-Hash: B64CRT3JHN34G6GGY5COHE72NROWCHGQ
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed samples overflow
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B64CRT3JHN34G6GGY5COHE72NROWCHGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1916305290170876306=="

--===============1916305290170876306==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_c4ea86fee2e34c2fa6b81010725c1d8acampustuberlinde_"

--_000_c4ea86fee2e34c2fa6b81010725c1d8acampustuberlinde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Vladica, I think the overflow means that the host pc cannot process the =
data flow fast enough or you might need to set the parameter timeout of

recv(buff_ptrs, num_rx_samps, md, timeout)
a bit longer?


Sincerely


Kasim

________________________________
From: Vladica Sark <vladicasark@gmail.com>
Sent: 08 April 2021 14:46:08
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Timed samples overflow

Hello folks,


I would like to receive a relatively short burst of timed samples (eg.
100k) on a N321 and get them over 1 Gbps Ethernet on the PC. The problem
is that I get an overflow condition every time I try to receive more
than 10k samples. According to the data for the N321, it has 1 or 2 GB
memory, enough for 100k samples, so this number of samples can be stored
in the RAM and than sent to the PC. Unfortunately, this is not
happening. Is there a workaround for this issue?

I use rx_timed_samples for this. With 10 Gbps Ethernet everything is OK.


Also, I want to ask if it is possible to trigger the sample acquisition
on a given input signal level, i.e. threshold?


Best regards,

Vladica



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_c4ea86fee2e34c2fa6b81010725c1d8acampustuberlinde_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Hi Vladica, I think the overflow means that the host pc cannot process t=
he data flow fast enough or you might need to set the parameter timeout of<=
/p>
<div style=3D"color:#d4d4d4; background-color:#1e1e1e; font-family:'Droid S=
ans Mono','monospace',monospace,'Droid Sans Fallback'; font-weight:normal; =
font-size:14px; line-height:19px; white-space:pre">
<div><span style=3D"color:#dcdcaa">recv</span><span style=3D"color:#d4d4d4"=
>(</span><span style=3D"color:#9cdcfe">buff_ptrs</span><span style=3D"color=
:#d4d4d4">,
</span><span style=3D"color:#9cdcfe">num_rx_samps</span><span style=3D"colo=
r:#d4d4d4">,
</span><span style=3D"color:#9cdcfe">md</span><span style=3D"color:#d4d4d4"=
>, </span>
<span style=3D"color:#9cdcfe">timeout</span><span style=3D"color:#d4d4d4">)=
</span></div>
</div>
a bit longer?
<p></p>
<p><br>
</p>
<p>Sincerely</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Vladica Sark &lt;vl=
adicasark@gmail.com&gt;<br>
<b>Sent:</b> 08 April 2021 14:46:08<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Timed samples overflow</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hello folks,<br>
<br>
<br>
I would like to receive a relatively short burst of timed samples (eg. <br>
100k) on a N321 and get them over 1 Gbps Ethernet on the PC. The problem <b=
r>
is that I get an overflow condition every time I try to receive more <br>
than 10k samples. According to the data for the N321, it has 1 or 2 GB <br>
memory, enough for 100k samples, so this number of samples can be stored <b=
r>
in the RAM and than sent to the PC. Unfortunately, this is not <br>
happening. Is there a workaround for this issue?<br>
<br>
I use rx_timed_samples for this. With 10 Gbps Ethernet everything is OK.<br=
>
<br>
<br>
Also, I want to ask if it is possible to trigger the sample acquisition <br=
>
on a given input signal level, i.e. threshold?<br>
<br>
<br>
Best regards,<br>
<br>
Vladica<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font>
</body>
</html>

--_000_c4ea86fee2e34c2fa6b81010725c1d8acampustuberlinde_--

--===============1916305290170876306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1916305290170876306==--
