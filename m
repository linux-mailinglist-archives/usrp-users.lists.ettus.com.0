Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD8BA94C3
	for <lists+usrp-users@lfdr.de>; Mon, 29 Sep 2025 15:15:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6D2A3863D4
	for <lists+usrp-users@lfdr.de>; Mon, 29 Sep 2025 09:15:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759151738; bh=dVEqSdwkpKfKgiQBDOMyVEBd14VmV/C2hk9FGZdDiWk=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=yJDZbdCCi4voBW9CrQDIDhFtLDkwCjCkRqyjY3avYwvV9TkuhhwlvEISu8tVXrSZc
	 cmFDodTbmzn8wwE356rf32ajlVCVmXXnSN6G7ObRO7ww739CPn52k9pSP3HK2O24d7
	 dT+X7Bmi79B7/84oyyqmYzHIXb3l9H+np0rrv+p5Qb+lL4Hj0Mz8t87PCUE4Ue/c3E
	 mHzf7fsbHKNbc/y7CdXiR6AOaElzEgbpgB/F+CqyL3FlMR/Baz4Ijr6U0lwlAC0lGs
	 KQenaRvEHO9p1kONFPfzkR8RVKy8H0zCwCIUmEJG08DWUrzV4iFkoFL6sZl/hoeWLM
	 t3jldT5enXDgQ==
Received: from omr02.pc4.atmailcloud.com (omr02.pc4.atmailcloud.com [54.217.190.49])
	by mm2.emwd.com (Postfix) with ESMTPS id F2D68386311
	for <usrp-users@lists.ettus.com>; Mon, 29 Sep 2025 09:14:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=manx.net header.i=@manx.net header.b="eY2OpMtR";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
	s=20160330; h=Content-Type:MIME-Version:Message-Id:Date:Subject:To:From;
	bh=qkKauKFA0D9X05ZV6VshBsPhybNnMrZjq9w1Dvi39vk=; b=eY2OpMtRmH17fIQiKxZh2qLKx5
	VN7z8IapjpX4tivM8lfIwMUmcFTu0J2e4itfhirpRZ5w7YCKWbntbb+CVB3I/4p5TyehsbvpXv1r3
	Ms3Ar9NvyDKcCM+JUD9TNaGd9eJdlcSp1S1d1vCqJEKOEtxrS4ac/PkBkG0QiCPkDyRY=;
Received: from cmr-cushag.internal.pc4.atmailcloud.com (cmr-cushag.internal.pc4.atmailcloud.com [192.168.1.13])
	by omr.internal.pc4.atmailcloud.com (Exim/cmr-cushag.i-0ec42f760acdbcea8) with ESMTPS
	(envelope-from <drtaylor@manx.net>)
	id 1v3Di4-000000001zJ-1nGY ;
	Mon, 29 Sep 2025 13:14:32 +0000
Received: from  ([IPv6:::ffff:192.168.1.168] [213.137.15.32])
	by cmr-cushag.internal.pc4.atmailcloud.com (Exim/[ipv6:::ffff:192.168.1.168]) with ESMTPSA
	(envelope-from <drtaylor@manx.net>)
	id 1v3Di4-000000003yN-0QxK ;
	Mon, 29 Sep 2025 13:14:32 +0000
To: =?utf-8?q?Daniel=20Est=c3=a9vez?= <daniel@destevez.net>,
 usrp-users@lists.ettus.com
Date: Mon, 29 Sep 2025 13:14:31 +0000
Message-Id: <em04cff5b9-3004-4f65-9531-fe4ad5a873e1@2107a28f.com>
In-Reply-To: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
References: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
User-Agent: eM_Client/10.3.2619.0
MIME-Version: 1.0
X-Atmail-Id: drtaylor@manx.net
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=HqJwGVTS c=1 sm=1 tr=0 ts=68da8638 a=/w/bpNuGKTEK/snkzY3zrQ==:117 a=/w/bpNuGKTEK/snkzY3zrQ==:17 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10 a=NEAV23lmAAAA:8 a=iXaKlsfVAAAA:8 a=etiEgX_XAAAA:8 a=ByJ2BlTVV13VR7CJPVQA:9 a=QEXdDO2ut3YA:10 a=_kenLAQrpHgUoq7vy_EA:9 a=DpEftlfeedk6sh68:21 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=AWtWtc0RukrYRNvQ_1Zp:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Cm-Envelope: MS4xfGVa/5gDv0nBWLzFxwN3EM2XAyki7F7qNNPE0UWAivOwIB1zxiD8iuLSpET6WLaoeWn0rdoHyD+P0f8IcFe8gMo/CLh1ZKzYiHbxDSnRZozg7EEXozsj WHKNeFRJASTHg23u+oCawC34dxkCR43UTySOTatxccGpDXuxEsV7eiNF
X-atmailcloud-route: unknown
Message-ID-Hash: 7T2TZWPO65RZTVHH4IRRHZXWSVQH7FLU
X-Message-ID-Hash: 7T2TZWPO65RZTVHH4IRRHZXWSVQH7FLU
X-MailFrom: drtaylor@manx.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Half duplex with USRP B2xx and GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7T2TZWPO65RZTVHH4IRRHZXWSVQH7FLU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "David Taylor (manx.net) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "David Taylor (manx.net)" <drtaylor@manx.net>
Content-Type: multipart/mixed; boundary="===============4311362938762445481=="

--===============4311362938762445481==
Content-Type: multipart/alternative;
 boundary="------=_MB42A40AFF-6263-487A-BB63-4599D2EF7604"

--------=_MB42A40AFF-6263-487A-BB63-4599D2EF7604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

I too have experienced RF leakage problems between the TX/RX and RX=20
ports on my B210 (and B200) when operating in a full-duplex modem=20
application.
In my case I am transmitting continuously repeated Pseudorandom Noise=20
Sequences of various lengths and chipping rate, and a tracking GNSS type=20
correlator is implemented in the receiver.

I found that when operating at identical or close TX and RX frequencies,=20
a combination of poor TX to RX port leakage in the B210 and high=20
correlator receiver gain made testing very difficult or impossible, and=20
this was irrespective of RX and TX gain settings in the USRP=20
transceiver.

To test the receiver software, I used substantially different TX and RX=20
frequencies and an external passive diode mixer and local oscillator to=20
provide the necessary frequency separation, when using a single USRP.
I have tried converting 450 MHz TX to 100 MHz RX and 2.4 GHz TX to 1.2=20
GHz RX , both with some success.

In-circuit signal power measurements taken at the TX and RX connections=20
in a leakage loop configuration using a spectrum analyser would indicate=20
a TX/Rx to RX port isolation value of no better than 20 dB (100 MHz to 3=20
GHz).
This was concurred using a VNA on an un-powered B210 device.

To improve my test arrangement, I used the B210 and B200 as receiver and=20
transmitter respectively, each with their own PC, but with shared 10 MHz=20
external reference inputs.
Best regards,

David GD4FMB



------ Original Message ------
From "Daniel Est=C3=A9vez" <daniel@destevez.net>
To usrp-users@lists.ettus.com
Date 29/09/2025 11:15:18
Subject [USRP-users] Half duplex with USRP B2xx and GNU Radio

>Hello,
>
>I am implementing a half-duplex modem with GNU Radio and a USRP B2xx that=
 uses CSMA to control medium access. I have a GNU Radio flowgraph with a USR=
P Source and USRP Sink blocks both set to use the TX/RX antenna. The USRP S=
ink block uses burst transmission. When a burst is sent, the B2xx automatic=
ally switches the receive to the RX2 port.
>
>The issue is that there is enough leakage through the RX2 port that the sy=
stem is able to receive its own transmit packets with good SNR. This is a p=
roblem for the CSMA system because it makes the system detect that the chan=
nel is busy while it is transmitting its own packet. Due to the latency bet=
ween the RX and TX streams in GNU Radio, this prevents the modem from trans=
mitting back-to-back packets (which is allowed and expected by this CSMA sc=
heme), because when the second packet is about to be sent, the modem receiv=
er is still seeing the end of the previous packet and determines that the c=
hannel is still busy.
>
>To solve this issue, I would like the USRP Source to receive either zeros, =
no samples at all, or something that at least does not have so much leakag=
e of its own TX signal.
>
>Is it possible to do this either by appropriate configuration in GNU Radio =
or UHD?
>
>I've been studying the sources of UHD and GNU Radio to see how this could=
 be done. The only thing I have found is that this would be possible with a=
 small change to the FPGA image. For instance, this line
>
>https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/=
radio_legacy.v#L446
>
>could be modified to replace the RX samples by zeros whenever run_rx is as=
serted.
>
>However I would prefer not to build a modified FPGA image for this system, =
so I was wondering if other solutions exist.
>
>Best,
>Daniel.
>
--------=_MB42A40AFF-6263-487A-BB63-4599D2EF7604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"css_styles" type=3D"text/css"><!--blockquote.cite { margin-lef=
t: 5px; margin-right: 0px; padding-left: 10px; padding-right:0px; border-le=
ft: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: center; '], li[s=
tyle=3D'text-align: right;'], li[style=3D'text-align: right; '] {  list-sty=
le-position: inside;}
body { font-family: 'Segoe UI'; font-size: 12pt; }
.quote { margin-left: 1em; margin-right: 1em; border-left: 5px #ebebeb soli=
d; padding-left: 0.3em; }
a.em-mention[href] { text-decoration: none; color: inherit; border-radius:=
 3px; padding-left: 2px; padding-right: 2px; background-color: #e2e2e2; }
._em_placeholder {color: gray; border-bottom: 1px dotted lightblue;} ._em_p=
laceholder:before{color:gray; content: '{{ ';} ._em_placeholder:after{color=
:gray; content: ' }}';}
--></style></head>
<body><div>Hi Daniel,
</div><div><br /></div><div>I too have experienced RF leakage problems betw=
een the TX/RX and RX ports on my B210 (and B200) when operating in a full-d=
uplex modem application.
</div><div><span>In my case I am transmitting continuously repeated Pseudor=
andom Noise Sequences of various lengths and chipping rate, and a tracking=
 GNSS type correlator is implemented in the receiver.=C2=A0</span></div><div=
><br /></div><div>I found that when operating at identical or close TX and=
 RX frequencies, a combination of poor TX to RX port leakage in the B210 and =
high correlator receiver gain made testing very difficult or impossible, a=
nd this was irrespective of RX and TX gain settings in the USRP transceiver=
.
</div><div><br /></div><div>To test the receiver software, I used substanti=
ally different TX and RX frequencies and an external passive diode mixer an=
d local oscillator to provide the necessary frequency separation, when usin=
g a single USRP.</div><div>I have tried converting 450 MHz TX to 100 MHz RX =
and 2.4 GHz TX to 1.2 GHz RX , both with some success.
</div><div><br /></div><div>In-circuit signal power measurements taken at t=
he TX and RX connections in a leakage loop configuration using a spectrum a=
nalyser would indicate a TX/Rx to RX port isolation value of no better than =
20 dB (100 MHz to 3 GHz).</div><div>This was concurred using a VNA on an u=
n-powered B210 device.</div><div><br /></div><div>To improve my test arrang=
ement, I used the B210 and B200 as receiver and transmitter respectively, e=
ach with their own PC, but with shared 10 MHz external reference inputs.
</div><div>Best regards,</div><div><br /></div><div>David GD4FMB</div><div>=
<br /></div>
<div><br /></div>
<div x-em-replyforwardheader=3D""><br /></div>
<div>
<div>------ Original Message ------</div>
<div>From "Daniel Est=C3=A9vez" &lt;<a href=3D"mailto:daniel@destevez.net">=
daniel@destevez.net</a>&gt;</div>
<div>To <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a></div>
<div>Date 29/09/2025 11:15:18</div>
<div>Subject [USRP-users] Half duplex with USRP B2xx and GNU Radio</div></d=
iv><div x-em-quote=3D""><br /></div>
<div id=3D"xde5d44ddac324c5" class=3D"plain"><blockquote cite=3D"899f5b67-8=
09c-494b-a4d2-1b7be3a3b1e3@destevez.net" type=3D"cite" class=3D"cite2">

<div class=3D"plain_line">Hello,</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">I am implementing a half-duplex modem with GNU Ra=
dio and a USRP B2xx that uses CSMA to control medium access. I have a GNU R=
adio flowgraph with a USRP Source and USRP Sink blocks both set to use the=
 TX/RX antenna. The USRP Sink block uses burst transmission. When a burst is =
sent, the B2xx automatically switches the receive to the RX2 port.</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">The issue is that there is enough leakage through =
the RX2 port that the system is able to receive its own transmit packets w=
ith good SNR. This is a problem for the CSMA system because it makes the sy=
stem detect that the channel is busy while it is transmitting its own packe=
t. Due to the latency between the RX and TX streams in GNU Radio, this prev=
ents the modem from transmitting back-to-back packets (which is allowed and =
expected by this CSMA scheme), because when the second packet is about to=
 be sent, the modem receiver is still seeing the end of the previous packet=
 and determines that the channel is still busy.</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">To solve this issue, I would like the USRP Source =
to receive either zeros, no samples at all, or something that at least doe=
s not have so much leakage of its own TX signal.</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">Is it possible to do this either by appropriate c=
onfiguration in GNU Radio or UHD?</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">I've been studying the sources of UHD and GNU Rad=
io to see how this could be done. The only thing I have found is that this=
 would be possible with a small change to the FPGA image. For instance, this =
line</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line"><a href=3D"https://github.com/EttusResearch/uhd/b=
lob/master/fpga/usrp3/lib/radio_200/radio_legacy.v#L446">https://github.com=
/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/radio_legacy.v#L446=
</a></div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">could be modified to replace the RX samples by ze=
ros whenever run_rx is asserted.</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">However I would prefer not to build a modified FP=
GA image for this system, so I was wondering if other solutions exist.</div=
>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">Best,</div>
<div class=3D"plain_line">Daniel.</div>
<div class=3D"plain_line">=C2=A0</div>
</blockquote></div>


</body></html>
--------=_MB42A40AFF-6263-487A-BB63-4599D2EF7604--

--===============4311362938762445481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4311362938762445481==--
