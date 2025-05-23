Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB444AC1D86
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 09:19:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6AF83852AF
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 03:19:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747984783; bh=FBQtI04O/gkOmilmRZwkJT6J4vp1I7veVnL1czmclv8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zB70L/FmrgMU3BjRi7h+n+FtDhmG4ml7ZsCJw0fcAp4v76RyA+2XTeqXehvmq7S8G
	 yr7Jjtyio+HdcV6VKoQgISNakQuGxZS8eeLgA5hTwntuYFgdIQwCk/0qeZDSsXdLS0
	 cX38iFIingjCtTpy53bdrCukZWEA326DMa08o1e29vvdGcHWhbcPzCxqvtHYn6Y2oZ
	 Fw/6/YvrFneNRbAkgKDBcTUIL5ZbipLd2AHusOX4NDfaicq9vM6CcJ2O9J4ZV/jSSA
	 /H5Ad6a9ue5cp8TIPu1BgRjp1Qy7QFagr7u5iRdY7C6Vka+ygeWs0AilErR+7w01zu
	 +IMFB1WhE4mLw==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.201.132])
	by mm2.emwd.com (Postfix) with ESMTPS id D6A0D3810E9
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 03:18:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="RVFdCRT9";
	dkim-atps=neutral
Received: from mail.vastech.co.za (41.193.248.106 [41.193.248.106]) by
 relay.mimecast.com with ESMTP id za-mta-55-rUTNMTB7MxS4iyvNmEomYA-1; Fri,
 23 May 2025 09:18:42 +0200
X-MC-Unique: rUTNMTB7MxS4iyvNmEomYA-1
X-Mimecast-MFC-AGG-ID: rUTNMTB7MxS4iyvNmEomYA_1747984722
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:In-Reply-To:References;
	bh=SGRBeOyOHB2L1kcvZsseIEgd59jPPPUDuwHDjrI7blM=;
	b=RVFdCRT966bW64gu1fWsCH2u4AutxQOprjwrV5gCjRSu8FWzJFMIqrCRzSGNgJ7tE8BfLdU0MkXXIp9O9Xi98Jmsh81HcN7g9Ljm9eLQsyETliDEFkycNH1F0ZaaMKJSUImkgn2U0LK2WWzyaRpX0cZv+i1H40Egc5IAeDXsVw4=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Fri, 23 May 2025 09:18:36 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 23 May 2025 09:18:36 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Fri, 23
 May 2025 09:18:30 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "martin.braun@ettus.com" <martin.braun@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL][USRP-users] Re: rfnoc loopback to tx ports, and other
 warnings
Thread-Index: AQHby68zZSvVqR53rk+C5BgvDO2LLLPfy6cw
Date: Fri, 23 May 2025 07:18:29 +0000
Message-ID: <bbf71c09c8c44213a8fed8197228e76d@vastech.co.za>
References: <06fc5d04db3c4177904569150e0e304f@vastech.co.za>
 <CAB__hTSsONuCyQnpOMbSviitzzquiCP-r1evSbYg14cA1kLE-g@mail.gmail.com>
 <CAFOi1A7-TjVcBPKPijcXEk4hUzgix7VNQp+yCYg3r_myOWw6ug@mail.gmail.com>
In-Reply-To: <CAFOi1A7-TjVcBPKPijcXEk4hUzgix7VNQp+yCYg3r_myOWw6ug@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.4]
MIME-Version: 1.0
Message-ID-Hash: 25UFAST6I4VXSUU24RBGWDFNNF2RJYI4
X-Message-ID-Hash: 25UFAST6I4VXSUU24RBGWDFNNF2RJYI4
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: rfnoc loopback to tx ports, and other warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/25UFAST6I4VXSUU24RBGWDFNNF2RJYI4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1784957609248942129=="

--===============1784957609248942129==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_006F_01DBCBC3.A54A1AC0"

------=_NextPart_000_006F_01DBCBC3.A54A1AC0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0070_01DBCBC3.A54A1AC0"


------=_NextPart_001_0070_01DBCBC3.A54A1AC0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

=20

Thanks for all your replies.

=20

I have prop, action and mtu forwarding all set to ONE-TO-FAN in my pol =
converter block.

=20

(It doesn=E2=80=99t seem to matter whether I send the stream command to =
the radio or to the rx_streamer though.)

=20

On the timed commands I have a new idea I=E2=80=99m going to implement =
and test today where I latch one of the radio adc channel timestamps =
after ADC TEOB drops (hopefully indicating the first sample of a new =
packet), and then use that timestamp for the remainder of my new packet =
post-decimation.

=20

I am thinking of just adding the maximum decimator latency + a bit as an =
offset as I don=E2=80=99t care if the transmitted signal is not aligned =
to the input signal.

=20

I also just realized I need to tell the TX side, independently, to start =
streaming =E2=80=93 I don=E2=80=99t think it will transmit just because =
there is data there. Not sure how I=E2=80=99m going to align that (from =
the host) to the looped-back data in the fpga yet.

=20

But then isn=E2=80=99t ONE-TO-ALL the better option so the pol converter =
can start the transmitter as well?

=20

All very tricky and interesting=E2=80=A6!

=20

Kind regards, Kevin

=20

From: Martin Braun <martin.braun@ettus.com>=20
Sent: Friday, 23 May 2025 08:51
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL][USRP-users] Re: rfnoc loopback to tx ports, and =
other warnings

=20

Did you, by any chance, set the action forwarding policy to ONE_TO_ALL? =
I sketched your RFNoC flow graph and there's a loopback going from Radio =
-> PolConverter -> Split Stream 0 -> DUC -> Radio. (Loopbacks are fine =
in RFNoC!).

=20

If you have the action forwarding to ONE_TO_ALL, then the PolConverter =
will forward the stream command to its output ports, and =
Split-Stream/DUC will forward them to the radio input ports. But those =
don't accept stream commands, hence the warning. It seems ONE_TO_FAN =
would be the right choice.

=20

--M

=20

On Thu, May 22, 2025 at 3:28=E2=80=AFPM Rob Kossler via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hi Kevin,

Try issuing the stream command directly on the Radio block rather than =
the rx_streamer.  I don't know why you are getting the warnings you are =
getting, but trying this step might produce a different result.=20

=20

On another note, since you are using timed commands, there will be a =
time stamp in your received data stream. When this stream arrives at the =
Tx Radio after passing through the loopback path, it will be considered =
"Late" at the Tx Radio because the time stamp has passed.  Your block =
will need to add an offset to the time stamp (or remove it) so that it =
won't be late when arriving at the Tx Radio.

Rob

=20

On Thu, May 22, 2025 at 4:45=E2=80=AFAM Kevin Williams =
<kevin.williams@vastech.co.za <mailto:kevin.williams@vastech.co.za> > =
wrote:

Hi,

=20

I have an rfnoc block with two output ports which is feeding the =
splitter block to duplicate each port.

=20

One pair is used to stream to the host, and the other is looped back to =
the radio via the DUC block.

=20

The active connections are reported as:

=20

Active connections:

* 0/Radio#0:0=3D=3D>0/PolConverter#0:0

* 0/Radio#0:1=3D=3D>0/PolConverter#0:1

* 0/PolConverter#0:0=3D=3D>0/SplitStream#0:0

* 0/SplitStream#0:0-->0/DUC#0:0

* 0/PolConverter#0:1=3D=3D>0/SplitStream#0:1

* 0/SplitStream#0:1-->0/DUC#0:1

* 0/DUC#0:0=3D=3D>0/Radio#0:0

* 0/DUC#0:1=3D=3D>0/Radio#0:1

* 0/SplitStream#0:2-->RxStreamer#0:0

* 0/SplitStream#0:3-->RxStreamer#0:1

=20

I=E2=80=99m getting this warning when trying to stream (to the host and =
the TX):

=20

[WARNING] [0/Radio#0] Received stream command, but not to output port! =
Ignoring.

=20

Along with debug info:

=20

[DEBUG] [RxStreamer#0] Received overrun message on port 0

[DEBUG] [RxStreamer#0] Received overrun message on port 1

L[DEBUG] [RxStreamer#0] Received late command message on port 0

[DEBUG] [RxStreamer#0] Received late command message on port 1

D

=20

I start the streaming with a timed command to the RX streamer like:

=20

rx_stream->issue_stream_cmd(stream_cmd);

=20

I=E2=80=99m not getting the red =E2=80=9CTX=E2=80=9D led illuminated on =
the N300, and I don=E2=80=99t understand where or why these warnings are =
being created?

=20

Previous posts have mentioned this link =
(https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/ =
<https://url.za.m.mimecastprotect.com/s/K94BCX6wllSD43gc6fwfWdFPu?domain=3D=
corvid.io/> ) has helped but it seems to be down.

=20

How does one get a loopback in the fpga from rfnoc blocks to the radio =
TX?

=20

BTW: in the firmware I tie TEOV and TEOB to my TLAST in my custom block.

=20

Many thanks, Kevin

=20

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_0070_01DBCBC3.A54A1AC0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-ZA link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Hi Guys,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Thanks for =
all your replies.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I have =
prop, action and mtu forwarding all set to ONE-TO-FAN in my pol =
converter block.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>(It =
doesn=E2=80=99t seem to matter whether I send the stream command to the =
radio or to the rx_streamer though.)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>On the =
timed commands I have a new idea I=E2=80=99m going to implement and test =
today where I latch one of the radio adc channel timestamps after ADC =
TEOB drops (hopefully indicating the first sample of a new packet), and =
then use that timestamp for the remainder of my new packet =
post-decimation.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I am =
thinking of just adding the maximum decimator latency + a bit as an =
offset as I don=E2=80=99t care if the transmitted signal is not aligned =
to the input signal.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>I also just =
realized I need to tell the TX side, independently, to start streaming =
=E2=80=93 I don=E2=80=99t think it will transmit just because there is =
data there. Not sure how I=E2=80=99m going to align that (from the host) =
to the looped-back data in the fpga yet.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>But then =
isn=E2=80=99t ONE-TO-ALL the better option so the pol converter can =
start the transmitter as well?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>All very =
tricky and interesting=E2=80=A6!<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Kind =
regards, Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Martin Braun &lt;martin.braun@ettus.com&gt; =
<br><b>Sent:</b> Friday, 23 May 2025 08:51<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL][USRP-users] Re: =
rfnoc loopback to tx ports, and other warnings<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Did you, by any chance, set the action forwarding =
policy to ONE_TO_ALL? I sketched your RFNoC flow graph and there's a =
loopback going from Radio -&gt; PolConverter -&gt; Split Stream 0 -&gt; =
DUC -&gt; Radio. (Loopbacks are fine in =
RFNoC!).<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>If you have the action forwarding to ONE_TO_ALL, then =
the PolConverter will forward the stream command to its output ports, =
and Split-Stream/DUC will forward them to the radio input ports. But =
those don't accept stream commands, hence the warning. It seems =
ONE_TO_FAN would be the right choice.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>--M<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Thu, May 22, 2025 at 3:28=E2=80=AFPM Rob Kossler via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p =
class=3DMsoNormal>Hi Kevin,<o:p></o:p></p><div><p class=3DMsoNormal>Try =
issuing the stream command directly on the Radio block rather than the =
rx_streamer.&nbsp; I don't know why you are getting the warnings you are =
getting, but trying this step might produce a different =
result.&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>On another note, since you are using timed commands, =
there will be a time stamp in your received data stream. When this =
stream arrives at the Tx Radio after passing through the loopback path, =
it will be considered &quot;Late&quot; at the Tx Radio because the time =
stamp has passed.&nbsp; Your block will need to add an offset to the =
time stamp (or remove it) so that it won't be late when arriving at the =
Tx Radio.<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Rob<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Thu, May 22, 2025 at 4:45=E2=80=AFAM Kevin Williams &lt;<a =
href=3D"mailto:kevin.williams@vastech.co.za" =
target=3D"_blank">kevin.williams@vastech.co.za</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Hi,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I have an rfnoc block with two output ports which is =
feeding the splitter block to duplicate each =
port.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>One pair is used to stream to the host, and the other is =
looped back to the radio via the DUC block.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>The active connections are reported =
as:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>Active =
connections:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/Radio#0:0=3D=3D&gt;0/PolConverter#0:0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/Radio#0:1=3D=3D&gt;0/PolConverter#0:1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/PolConverter#0:0=3D=3D&gt;0/SplitStream#0:0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/SplitStream#0:0--&gt;0/DUC#0:0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/PolConverter#0:1=3D=3D&gt;0/SplitStream#0:1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/SplitStream#0:1--&gt;0/DUC#0:1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/DUC#0:0=3D=3D&gt;0/Radio#0:0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/DUC#0:1=3D=3D&gt;0/Radio#0:1</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/SplitStream#0:2--&gt;RxStreamer#0:0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>* =
0/SplitStream#0:3--&gt;RxStreamer#0:1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I=E2=80=99m getting this warning when trying to stream (to =
the host and the TX):</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>[WARNING] [0/Radio#0] =
Received stream command, but not to output port! <span =
style=3D'color:red'>Ignoring</span>.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Along with debug info:</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>[DEBUG] [RxStreamer#0] =
Received overrun message on port 0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>[DEBUG] [RxStreamer#0] =
Received overrun message on port 1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>L[DEBUG] [RxStreamer#0] =
Received late command message on port 0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier New"'>[DEBUG] [RxStreamer#0] =
Received late command message on port 1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier =
New"'>D</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I start the streaming with a timed command to the RX =
streamer like:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'font-family:"Courier =
New"'>rx_stream-&gt;issue_stream_cmd(stream_cmd);</span><o:p></o:p></p><p=
 class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I=E2=80=99m not getting the red =E2=80=9CTX=E2=80=9D led =
illuminated on the N300, and I don=E2=80=99t understand where or why =
these warnings are being created?</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Previous posts have mentioned this link (<a =
href=3D"https://url.za.m.mimecastprotect.com/s/K94BCX6wllSD43gc6fwfWdFPu?=
domain=3Dcorvid.io/" =
target=3D"_blank">https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopba=
ck/</a>) has helped but it seems to be down.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>How does one get a loopback in the fpga from rfnoc blocks =
to the radio TX?</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>BTW: in the firmware I tie TEOV and TEOB to my TLAST in my =
custom block.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Many thanks, Kevin</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></di=
v></blockquote></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></body></html>
------=_NextPart_001_0070_01DBCBC3.A54A1AC0--

------=_NextPart_000_006F_01DBCBC3.A54A1AC0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_006F_01DBCBC3.A54A1AC0--

--===============1784957609248942129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1784957609248942129==--
