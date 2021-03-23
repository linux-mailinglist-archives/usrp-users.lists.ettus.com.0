Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BB7345BC7
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 11:17:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 450F5384525
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 06:17:03 -0400 (EDT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id D96D3383917
	for <usrp-users@lists.ettus.com>; Tue, 23 Mar 2021 06:16:08 -0400 (EDT)
Received: from SPMA-02.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 69CC23A1F3_59BFE7B;
	Tue, 23 Mar 2021 10:16:07 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-02.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id E65013C2F6_59BFE6F;
	Tue, 23 Mar 2021 10:16:06 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-02.tubit.win.tu-berlin.de (130.149.6.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Tue, 23 Mar 2021 11:16:06 +0100
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0792.010;
 Tue, 23 Mar 2021 11:16:06 +0100
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: "jcasallas2019@gmail.com" <jcasallas2019@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Disabling property_propagation_active - [ERROR]
 [RFNOC::GRAPH::DETAIL]
Thread-Index: AQHXHCSLGDt9wFjzbkaAogWLUEKrRKqRYc2w
Date: Tue, 23 Mar 2021 10:16:06 +0000
Message-ID: <a41419487b434275ab05fd054e1860c4@campus.tu-berlin.de>
References: <CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04@lists.ettus.com>
In-Reply-To: <CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04@lists.ettus.com>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=+w9C9RZvvXzj73jvIyg4DtKzGoVXwxWu1uRZa15dzcY=; b=NSq7Ly9m1sXvb3mjziNWAMX4oHGo7qq6obxqYFhFUDFcLenctJfWudf30QtsouuCAIQM5o1a1HAGO7789ndpOdOOPcPYIMXF6OVqkFQSKf4vI7GCggRZDbDSfWu1E6JmIxQUidkq7xNe+IC9zAksV9g7pQeIdmYjOZ3UIXOmX8s=
Message-ID-Hash: TBAPCDYXYMM2GSNQQCNGGQX2ELD6QX55
X-Message-ID-Hash: TBAPCDYXYMM2GSNQQCNGGQX2ELD6QX55
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disabling property_propagation_active - [ERROR] [RFNOC::GRAPH::DETAIL]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBAPCDYXYMM2GSNQQCNGGQX2ELD6QX55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5804621452420608703=="

--===============5804621452420608703==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_a41419487b434275ab05fd054e1860c4campustuberlinde_"

--_000_a41419487b434275ab05fd054e1860c4campustuberlinde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,


in c++ there is something like

virtual void connect(const block_id_t& src_blk,
size_t src_port,
const block_id_t& dst_blk,
size_t dst_port,
bool skip_property_propagation =3D false) =3D 0;
in class
uhd::rfnoc::rfnoc_graph
Maybe you can find similar function in python and set this skip_property_pr=
opagation

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

--_000_a41419487b434275ab05fd054e1860c4campustuberlinde_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>in c&#43;&#43; there is something like <br>
</p>
<p></p>
<div style=3D"color: #d4d4d4;background-color: #1e1e1e;font-family: 'Droid =
Sans Mono', 'monospace', monospace, 'Droid Sans Fallback';font-weight: norm=
al;font-size: 14px;line-height: 19px;white-space: pre;">
<div><span style=3D"color: #d4d4d4;"></span><span style=3D"color: #569cd6;"=
>virtual</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #569cd6;">void</span><span style=3D"color: #d4=
d4d4;"> </span>
<span style=3D"color: #dcdcaa;">connect</span><span style=3D"color: #d4d4d4=
;">(</span><span style=3D"color: #569cd6;">const</span><span style=3D"color=
: #d4d4d4;">
</span><span style=3D"color: #4ec9b0;">block_id_t</span><span style=3D"colo=
r: #569cd6;">&amp;</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #9cdcfe;">src_blk</span><span style=3D"color: =
#d4d4d4;">,</span></div>
<div><span style=3D"color: #d4d4d4;"></span><span style=3D"color: #4ec9b0;"=
>size_t</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #9cdcfe;">src_port</span><span style=3D"color:=
 #d4d4d4;">,</span></div>
<div><span style=3D"color: #d4d4d4;"></span><span style=3D"color: #569cd6;"=
>const</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #4ec9b0;">block_id_t</span><span style=3D"colo=
r: #569cd6;">&amp;</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #9cdcfe;">dst_blk</span><span style=3D"color: =
#d4d4d4;">,</span></div>
<div><span style=3D"color: #d4d4d4;"></span><span style=3D"color: #4ec9b0;"=
>size_t</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #9cdcfe;">dst_port</span><span style=3D"color:=
 #d4d4d4;">,</span></div>
<div><span style=3D"color: #d4d4d4;"></span><span style=3D"color: #569cd6;"=
>bool</span><span style=3D"color: #d4d4d4;">
</span><span style=3D"color: #9cdcfe;">skip_property_propagation</span><spa=
n style=3D"color: #d4d4d4;"> =3D
</span><span style=3D"color: #569cd6;">false</span><span style=3D"color: #d=
4d4d4;">) =3D
</span><span style=3D"color: #b5cea8;">0</span><span style=3D"color: #d4d4d=
4;">;</span></div>
</div>
in class
<div style=3D"color: #d4d4d4;background-color: #1e1e1e;font-family: 'Droid =
Sans Mono', 'monospace', monospace, 'Droid Sans Fallback';font-weight: norm=
al;font-size: 14px;line-height: 19px;white-space: pre;">
<div><span style=3D"color: #4ec9b0;">uhd</span><span style=3D"color: #d4d4d=
4;">::</span><span style=3D"color: #4ec9b0;">rfnoc</span><span style=3D"col=
or: #d4d4d4;">::</span><span style=3D"color: #4ec9b0;">rfnoc_graph</span></=
div>
</div>
Maybe you can find similar function in python and set this skip_property_pr=
opagation<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> jcasallas2019@gmail.c=
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
</body>
</html>

--_000_a41419487b434275ab05fd054e1860c4campustuberlinde_--

--===============5804621452420608703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5804621452420608703==--
