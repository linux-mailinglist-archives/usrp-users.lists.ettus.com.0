Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8443CD00A
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 11:06:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 751F8384747
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 05:06:37 -0400 (EDT)
Received: from mailservice.tudelft.nl (mailservice.tudelft.nl [130.161.131.5])
	by mm2.emwd.com (Postfix) with ESMTPS id EE8613843D0
	for <usrp-users@lists.ettus.com>; Mon, 19 Jul 2021 05:05:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by amavis (Postfix) with ESMTP id D65C4640102;
	Mon, 19 Jul 2021 11:05:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: 2.303
X-Spam-Level: **
X-Spam-Status: No, score=2.303 tagged_above=-99 required=5
	tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
	HTTPS_HTTP_MISMATCH=1, PDS_SHORTFWD_URISHRT_QP=1.498, RDNS_NONE=0.793,
	SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.73])
	by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id INUk24FFRY8d; Mon, 19 Jul 2021 11:05:50 +0200 (CEST)
Received: from SRV224.tudelft.net (srv224.tudelft.net [131.180.6.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx2.tudelft.nl (Postfix) with ESMTPS id 7CEEB6400BE;
	Mon, 19 Jul 2021 11:05:50 +0200 (CEST)
Received: from SRV216.tudelft.net (131.180.6.16) by SRV224.tudelft.net
 (131.180.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.14; Mon, 19 Jul
 2021 11:05:50 +0200
Received: from SRV216.tudelft.net ([fe80::f963:9b7:1b46:bb9c]) by
 SRV216.tudelft.net ([fe80::f963:9b7:1b46:bb9c%4]) with mapi id
 15.01.2308.014; Mon, 19 Jul 2021 11:05:50 +0200
From: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
To: Paul Atreides <maud.dib1984@gmail.com>
Thread-Topic: [USRP-users] RFNoC TX Streamer issue
Thread-Index: Add3EXX36pVjkC23Q7ulrkhwl3O2QAABbuWAAVlobJM=
Date: Mon, 19 Jul 2021 09:05:50 +0000
Message-ID: <f60044a054e844a19b1ff70a360bc9ad@tudelft.nl>
References: <ef868d72c8cd4f889c9efa8ed61d4db3@tudelft.nl>,<CACwKM9JXQ+XqyhvoPz-jMeD_PXMWSfjN9or2byObC8XWUAkzoQ@mail.gmail.com>
In-Reply-To: <CACwKM9JXQ+XqyhvoPz-jMeD_PXMWSfjN9or2byObC8XWUAkzoQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Message-ID-Hash: CBGYTLDEY4WQS575THEXSQAXUZNEGGRL
X-Message-ID-Hash: CBGYTLDEY4WQS575THEXSQAXUZNEGGRL
X-MailFrom: C.E.V.Diouf@tudelft.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX Streamer issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CBGYTLDEY4WQS575THEXSQAXUZNEGGRL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0524977897356188843=="

--===============0524977897356188843==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f60044a054e844a19b1ff70a360bc9adtudelftnl_"

--_000_f60044a054e844a19b1ff70a360bc9adtudelftnl_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Paul!


Indeed a DUC is needed. However I still had the same error after inserting =
a DUC block in the transmission chain.

It turns out that the "wire format" parameter of the RF_TX_streamer was set=
 to "automatic". It has to be changed to "complex int16" to make the flowgr=
aph work.


Best Regards

Cherif

________________________________
From: Paul Atreides <maud.dib1984@gmail.com>
Sent: Monday, July 12, 2021 4:12:33 PM
To: Cherif Diouf
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RFNoC TX Streamer issue

the default X310 image has static connections in between the radio and the =
endpoint on the crossbar, so while the dynamic routing of the stream is sti=
ll available, the two need to be used as a pair
in the image the layout is like this:
RX->DDC->EP->crossbar
EP->DUC->EP->crossbar

the crossbar isn't exposed to the user via GNURadio, but i'm alluding to th=
e deepre architecture of RFNoC.
i'd recommend watching and reviewing these two presentations and their acco=
mpanying video thoroughly as they describe the general architecture and mov=
e into development.

Presentations:
https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf<https://ur=
ldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.gnuradio.org_grcon_grcon20=
_grcon20-5FRFNoC-5F4-5FPart1.pdf&d=3DDwMFaQ&c=3DXYzUhXBD2cD-CornpT4QE19xOJB=
bRy-TBPLK0X9U2o8&r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&m=3DT5xzZT=
03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&s=3DANq-0G3cy_sy99pwI7IZKSpPh3pWmhqTs=
a8Z2zOpAwM&e=3D>
https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf<https://ur=
ldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.gnuradio.org_grcon_grcon20=
_grcon20-5FRFNoC-5F4-5FPart2.pdf&d=3DDwMFaQ&c=3DXYzUhXBD2cD-CornpT4QE19xOJB=
bRy-TBPLK0X9U2o8&r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&m=3DT5xzZT=
03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&s=3DGhe7bIuG2SWXOTBWVRShnk-52URdR5R-N=
weFvuXvMfA&e=3D>
Video: https://youtu.be/M9ntwQie9vs<https://urldefense.proofpoint.com/v2/ur=
l?u=3Dhttps-3A__youtu.be_M9ntwQie9vs&d=3DDwMFaQ&c=3DXYzUhXBD2cD-CornpT4QE19=
xOJBbRy-TBPLK0X9U2o8&r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&m=3DT5=
xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&s=3DkPxLeYnGzBwS8yb0mxtaGX4U0AaR_=
6A70-v3fkjOoMM&e=3D>





On Mon, Jul 12, 2021 at 7:41 AM Cherif Diouf <C.E.V.Diouf@tudelft.nl<mailto=
:C.E.V.Diouf@tudelft.nl>> wrote:
Hi,

I am using an X310 device and I have freshly install RFNoC 4, (Vivado 2019.=
1, UHD 4.0, GNU Radio 3.8, gr-ettus )using the migration guide

(https://kb.ettus.com/RFNoC_4_Migration_Guide#Prerequisites<https://urldefe=
nse.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_RFNoC-5F4-5FMigration-=
5FGuide-23Prerequisites&d=3DDwMFaQ&c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK=
0X9U2o8&r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&m=3DT5xzZT03jYg6vGI=
3sIqPAHPvQAJ-fvx89P9uzwuqsy0&s=3DxpfY1DXL76DEvQLSMjBIK3hMEAmS0SPnqehrvYA6wu=
k&e=3D>).

I tried to build a simple GNU Radio flowgraph

GNU Radio source signal (cosine) -> RFNoC TX streamer -> RFNoC Radio.
But when I run the graph I obtain the following error:
"/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in m=
ake
    return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chans, stream_args=
, vlen)
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for=
: `'

Do you have any idea where it should come from.

Best Regards
Cherif

Below is the full tx script

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_f60044a054e844a19b1ff70a360bc9adtudelftnl_
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
<p>Thanks Paul!</p>
<p><br>
</p>
<p>Indeed a DUC is needed. However I still had the same error after inserti=
ng a DUC block in the transmission chain.</p>
<p>It turns out that the &quot;wire format&quot; parameter of the RF_TX_str=
eamer was set to &quot;automatic&quot;. It has to be changed to &quot;compl=
ex int16&quot; to make the flowgraph work.</p>
<p><br>
</p>
<p>Best Regards</p>
<p>Cherif<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Paul Atreides &lt;mau=
d.dib1984@gmail.com&gt;<br>
<b>Sent:</b> Monday, July 12, 2021 4:12:33 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] RFNoC TX Streamer issue</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">the default X310 image has static connections in between t=
he radio and the endpoint on the crossbar, so while the dynamic routing of =
the stream is still available, the two need to be used as a pair
<div>in the image the layout is like this:<br>
RX-&gt;DDC-&gt;EP-&gt;crossbar</div>
<div>EP-&gt;DUC-&gt;EP-&gt;crossbar</div>
<div><br>
</div>
<div>the crossbar isn't exposed to the user via GNURadio, but i'm alluding&=
nbsp;to the deepre architecture of RFNoC.&nbsp;</div>
<div>i'd recommend watching and reviewing these two presentations and their=
 accompanying video thoroughly as they describe the general architecture an=
d move into development.</div>
<div><br>
</div>
<div>Presentations:</div>
<div><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.=
gnuradio.org_grcon_grcon20_grcon20-5FRFNoC-5F4-5FPart1.pdf&amp;d=3DDwMFaQ&a=
mp;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I=
17CLaka29UJ1VwI3mC9u8FAc7Ss&amp;m=3DT5xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwu=
qsy0&amp;s=3DANq-0G3cy_sy99pwI7IZKSpPh3pWmhqTsa8Z2zOpAwM&amp;e=3D">https://=
www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf</a><br>
</div>
<div><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.=
gnuradio.org_grcon_grcon20_grcon20-5FRFNoC-5F4-5FPart2.pdf&amp;d=3DDwMFaQ&a=
mp;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I=
17CLaka29UJ1VwI3mC9u8FAc7Ss&amp;m=3DT5xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwu=
qsy0&amp;s=3DGhe7bIuG2SWXOTBWVRShnk-52URdR5R-NweFvuXvMfA&amp;e=3D">https://=
www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf</a><br>
</div>
<div>Video:&nbsp;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__youtu.be_M9ntwQie9vs&amp;d=3DDwMFaQ&amp;c=3DXYzUhXBD2cD-CornpT4QE19=
xOJBbRy-TBPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&am=
p;m=3DT5xzZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&amp;s=3DkPxLeYnGzBwS8yb0m=
xtaGX4U0AaR_6A70-v3fkjOoMM&amp;e=3D">https://youtu.be/M9ntwQie9vs</a></div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 12, 2021 at 7:41 AM Cheri=
f Diouf &lt;<a href=3D"mailto:C.E.V.Diouf@tudelft.nl">C.E.V.Diouf@tudelft.n=
l</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div lang=3D"NL">
<div class=3D"gmail-m_-58900789772059627WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am using an X310 device and I=
 have freshly install RFNoC 4, (Vivado 2019.1, UHD 4.0, GNU Radio 3.8, gr-e=
ttus )using the migration guide<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">(<a href=3D"https://urldefense.=
proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_RFNoC-5F4-5FMigration-5FGu=
ide-23Prerequisites&amp;d=3DDwMFaQ&amp;c=3DXYzUhXBD2cD-CornpT4QE19xOJBbRy-T=
BPLK0X9U2o8&amp;r=3DxIsHdXnCRYoK3O7I17CLaka29UJ1VwI3mC9u8FAc7Ss&amp;m=3DT5x=
zZT03jYg6vGI3sIqPAHPvQAJ-fvx89P9uzwuqsy0&amp;s=3DxpfY1DXL76DEvQLSMjBIK3hMEA=
mS0SPnqehrvYA6wuk&amp;e=3D" target=3D"_blank">https://kb.ettus.com/RFNoC_4_=
Migration_Guide#Prerequisites</a>).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I tried to build a simple GNU R=
adio flowgraph<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">GNU Radio source signal (cosine=
) -&gt; RFNoC TX streamer -&gt; RFNoC Radio.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">But when I run the graph I obta=
in the following error:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"color:black">&quot;=
/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py&quot;, line 1584, =
in make<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_tx_streamer_make(graph, num_cha=
ns, stream_args, vlen)<br>
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for=
: `'</span></b><b><span lang=3D"EN-GB" style=3D"font-size:12pt;color:black"=
><u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Do you have any idea where it s=
hould come from.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best Regards<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Cherif<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Below is the full tx script<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>&nbsp;<u></u></span></p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_f60044a054e844a19b1ff70a360bc9adtudelftnl_--

--===============0524977897356188843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0524977897356188843==--
