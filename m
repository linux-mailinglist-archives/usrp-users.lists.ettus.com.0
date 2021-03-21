Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58867343557
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 23:13:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22408383AD2
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 18:13:04 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 039E6383748
	for <usrp-users@lists.ettus.com>; Sun, 21 Mar 2021 18:12:13 -0400 (EDT)
Received: from SPMA-02.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 3A6C5387A7_57C4BCB;
	Sun, 21 Mar 2021 22:12:12 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-02.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id C8D5B383BC_57C4BBF;
	Sun, 21 Mar 2021 22:12:11 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-02.tubit.win.tu-berlin.de (130.149.6.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Sun, 21 Mar 2021 23:12:11 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Sun, 21 Mar 2021 23:12:11 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "jcasallas2019@gmail.com" <jcasallas2019@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Disabling property_propagation_active - [ERROR]
 [RFNOC::GRAPH::DETAIL]
Thread-Index: AQHXHCSLGDt9wFjzbkaAogWLUEKrRKqLFhUL
Date: Sun, 21 Mar 2021 22:12:11 +0000
Message-ID: <22dcb43952ff4de9a60bae8f12217cb5@campus.tu-berlin.de>
References: <CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04@lists.ettus.com>
In-Reply-To: <CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04@lists.ettus.com>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [149.233.61.25]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=Bl4vQwqKe5RZ4Ei3Pj2d4thxsocnH1ImdbvN/Mwmdmo=; b=Ioa0d0EBudrwc/EMMpO6yh0ULHdpmyqZGHRECE2zXZP0qFxx0ooq8+MWM0I3jgO44uH4Bfriyz2V0QZakTMDlcDGp4/32IJCe6FNuRP+NjdvDjW0B7U7MhO1DFmpM+jnoRbFTlrGFDTkMO32wGJh+IgrnNtXgJqUdi+PusHXptw=
Message-ID-Hash: RU2FJH6TI7SB73B3UGEZE6QK5LVRTDT6
X-Message-ID-Hash: RU2FJH6TI7SB73B3UGEZE6QK5LVRTDT6
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disabling property_propagation_active - [ERROR] [RFNOC::GRAPH::DETAIL]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RU2FJH6TI7SB73B3UGEZE6QK5LVRTDT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0395120317504947164=="

--===============0395120317504947164==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_22dcb43952ff4de9a60bae8f12217cb5campustuberlinde_"

--_000_22dcb43952ff4de9a60bae8f12217cb5campustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I have the same error with c++ example rfnoc_radio_loopback.cpp, if I set

   --tx-blockid=3D'0/Radio#0' --tx-chan=3D0 --rx-blockid=3D'0/Radio#0 --rx-=
chan=3D1
when I want to use RF-A Tx/Rx and RF-A Rx2 ports on one single daughter boa=
rd, then I have to build the graph manually and disable this property_propa=
gation_active at connecting nodes.

sincerely

Kasim
________________________________
From: jcasallas2019@gmail.com <jcasallas2019@gmail.com>
Sent: 18 March 2021 19:27:46
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Disabling property_propagation_active - [ERROR] [RFNO=
C::GRAPH::DETAIL]


Hi all,

I get the following error when running gnuradio with a RFNoC block created =
following UHD 4 guide.


[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/passthrough#0:1 -> 0/DUC#0:0 w=
ithout disabling property_propagation_active will lead to unresolvable grap=
h!

Traceback (most recent call last):

File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 236, i=
n <module>

main()

File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 212, i=
n main

tb =3D top_block_cls()

File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 156, i=
n __init__

self.rfnoc_graph.connect(self.test_passthrough_0.get_unique_id(), 1, self.e=
ttus_rfnoc_duc_0.get_unique_id(), 0, False)

File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 2045,=
 in connect

return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)

RuntimeError: RfnocError: Adding edge without disabling property_propagatio=
n_active will lead to unresolvable graph!


Has anyone run into this error before and know the reason behind?


Thanks

--_000_22dcb43952ff4de9a60bae8f12217cb5campustuberlinde_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p>Hi,</p>
<p><br>
</p>
<p>I have the same error with c&#43;&#43; example rfnoc_radio_loopback.cpp,=
 if I set&nbsp;</p>
<div>&nbsp;&nbsp; --tx-blockid=3D'0/Radio#0' --tx-chan=3D0 --rx-blockid=3D'=
0/Radio#0 --rx-chan=3D1</div>
when I want to use RF-A Tx/Rx and RF-A Rx2 ports on one single daughter boa=
rd, then I have to build the graph manually and disable this
<code>property_propagation_active at connecting nodes.</code><br>
<p></p>
</div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<code><br>
</code></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<code>sincerely</code></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<code><br>
</code></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<code>Kasim</code></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> jcasallas2019@gmail.c=
om &lt;jcasallas2019@gmail.com&gt;<br>
<b>Sent:</b> 18 March 2021 19:27:46<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Disabling property_propagation_active - [ERROR=
] [RFNOC::GRAPH::DETAIL]</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hi all,</p>
<p>I get the following error when running gnuradio with a RFNoC block creat=
ed following UHD 4 guide.</p>
<p><br>
</p>
<p><code>[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/passthrough#0:1 -&gt;=
 0/DUC#0:0 without disabling property_propagation_active will lead to unres=
olvable graph!</code></p>
<p><code>Traceback (most recent call last):</code></p>
<p><code>File &quot;/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py=
&quot;, line 236, in &lt;module&gt;</code></p>
<p><code>main()</code></p>
<p><code>File &quot;/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py=
&quot;, line 212, in main</code></p>
<p><code>tb =3D top_block_cls()</code></p>
<p><code>File &quot;/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py=
&quot;, line 156, in __init__</code></p>
<p><code>self.rfnoc_graph.connect(self.test_passthrough_0.get_unique_id(), =
1, self.ettus_rfnoc_duc_0.get_unique_id(), 0, False)</code></p>
<p><code>File &quot;/usr/local/lib/python3/dist-packages/ettus/ettus_swig.p=
y&quot;, line 2045, in connect</code></p>
<p><code>return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)</code></p=
>
<p><code>RuntimeError: RfnocError: Adding edge without disabling property_p=
ropagation_active will lead to unresolvable graph!</code></p>
<p><br>
</p>
<p>Has anyone run into this error before and know the reason behind?</p>
<p><br>
</p>
<p>Thanks</p>
</div>
</div>
</body>
</html>

--_000_22dcb43952ff4de9a60bae8f12217cb5campustuberlinde_--

--===============0395120317504947164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0395120317504947164==--
