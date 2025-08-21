Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 075ACB2F80F
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 14:32:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B8C73864F1
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 08:32:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755779559; bh=eHN7RVoo2lQkhUONYNaSobUGq3pENuqSX1EsoiOb138=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=mSRvMnWE4PYbdF/yweXNAGwX9IUDfBNcvgxSGpS7aXfe/qf7nKByMR+JQutA6SGKr
	 MTC+leIMEXkD4erHcrGuAI8rpUXxnf8e3A47RTjNa88jDz1zU/jWxqGwte5M6p5uSJ
	 ybrM4TQjkdK/jw1KLFEgZaLqRh+Kj9sp09zYajbQNElpKbb4PyIO5UUQclDhkj4407
	 wozwCudwgGQfjpkKd2rngAwul3CpdWfkCUR2gZRrwrR8bnPaY4UZiY21ugnNKOJRU3
	 gsOzx6qFC1RhzhoX8hHH4dGV7wcd64l4KcFXElcNPwEEy/ipf178Y1Jdk2NlQnptzB
	 b4NX8aA5bWZEg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D36B1386413
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 08:32:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755779522; bh=14xz4qcC2MwfhTRFkdYsZNeIxT6m1KZ8oiVF4srY01g=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qz/trK6rO5un+87s7XgMUM+5gTYJxB2lidvSp6ndjp5oa7bEYf98132L8X/1o+vnq
	 m/blpp441lWLr6V6k/5Yp1X8IKPi6jAeAruT43vqsHcprX/Ix+ifFweeMthmaBBOyF
	 bsQiTaAKZ4TDOzzWzojC1hYxVbJFIJ8lBCFSjf55/rx4CIOeckRae8kBICWWHRkzlH
	 bKRp/UvJ9HEKmNkS5xB+WAbWo58DY5YT21VZUskiXo0lnMlXrfSMOGfoQ9fztc1Wg3
	 VUkCjn0hPGjuZm7PnfR0JO4HuuIBr6k22vEZTwe4uzRxf/eyKnwHR22wSOxJ1GI55m
	 XghtX3ffJ+YIQ==
Date: Thu, 21 Aug 2025 12:32:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB-=5jZoAVoMmtiZ76esaQy2806vrUhg0kB0Bmvh_E_bWODX8g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: NYZRFYFDNAZGDH3R7OJGCSVJSCQVOEN4
X-Message-ID-Hash: NYZRFYFDNAZGDH3R7OJGCSVJSCQVOEN4
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tlast in the CHDR packet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NYZRFYFDNAZGDH3R7OJGCSVJSCQVOEN4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============3948841360279187206=="

This is a multi-part message in MIME format.

--===============3948841360279187206==
Content-Type: multipart/alternative;
 boundary="b1_2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jons,

TL;DR: If you configure the packet size of your (TX) streamer by specifyi=
ng the SPP parameter of your stream_args, inside of your RFNoC block you =
can assume that every time tlast is asserted, have received a full packet=
 consisting of 32 samples.\
\
\
Technically you can make your packets whatever size you like, especially =
if you are not interfacing with any other data processing RFNoC blocks.\
\
Some blocks have special requirements on the packet size, for example the=
 fft block. This block takes the full packet and then processes it as a w=
hole, similar to how it seems your custom block is operating. If you are =
doing using an FFT size of 1024, the fft block expects every packet to co=
nsist of exactly 1024 (sc16) samples.

In RFNoC, you can specify the size of the TX or RX streamer packet sample=
 payload by specifying the SPP(Samples Per Packet) parameter in the strea=
m_args.\
See <https://uhd.readthedocs.io/en/latest/page_stream.html#stream_intro> =
example code on a basic way to do that.

When it comes to the FPGA side and tlast, it gets slightly more complicat=
ed:

RFNoC blocks communicate with each other using CHDR packets, that are tra=
nsmitted over the CHDR data bus connections between them.=20

The width of this bus is determined by the \`CHDR_W\` parameter of the bi=
t file variant you are using your block in. A packet is split into data w=
ords of width \`CHDR_W\` and then forwarded one word per clock cycle of t=
he data clock \`chdr_clk\`.=20

This means that if you are using a \`CHDR_W\` of 64 as used in the 200MHz=
 BW variant bitfile, the =E2=80=9CSPP=3D32=E2=80=9D packet you have sent =
from the host will be resized, and tlast will be asserted after 1 CHDR he=
ader word + 16 payload Data words each containing two samples (equivalent=
 to =E2=80=9CNIPC=3D2=E2=80=9D with your sample width of sc16 being =E2=80=
=9CITEM_W=3D32=E2=80=9D).\
\
I=E2=80=99m not as familiar with gnuradio but i am assuming that if you a=
re setting the spp for your streamer your block should be fine.

The size of the return packet is you depends on what the output of your c=
ustom RFNoC block is, and whenever you assert tlast inside of your block.=
\
\
By the way, I am assuming there is a typo in your processing chain:\
\
GNU Radio block A --> TX streamer --> custom RFNoC block --> **RX** strea=
mer \
\--> GNU Radio block B\
\
Regards,\
Niels

--b1_2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Jons,</p><p>TL;DR: If you configure the packet size of your (TX) stre=
amer by specifying the SPP parameter of your stream_args, inside of your RF=
NoC block you can assume that every time tlast is asserted, have received a=
 full packet consisting of 32 samples.<br><br><br>Technically you can make =
your packets whatever size you like, especially if you are not interfacing =
with any other data processing RFNoC blocks.<br><br>Some blocks have specia=
l requirements on the packet size, for example the fft block. This block ta=
kes the full packet and then processes it as a whole, similar to how it see=
ms your custom block is operating. If you are doing using an FFT size of 10=
24, the fft block expects every packet to consist of exactly 1024 (sc16) sa=
mples.</p><p>In RFNoC, you can specify the size of the TX or RX streamer pa=
cket sample payload by specifying the SPP(Samples Per Packet) parameter in =
the stream_args.<br>See <a href=3D"https://uhd.readthedocs.io/en/latest/pag=
e_stream.html#stream_intro" title=3D"">https://uhd.readthedocs.io/en/latest=
/page_stream.html#stream_intro</a> example code on a basic way to do that.<=
/p><p>When it comes to the FPGA side and tlast, it gets slightly more compl=
icated:</p><p>RFNoC blocks communicate with each other using CHDR packets, =
that are transmitted over the CHDR data bus connections between them. </p><=
p>The width of this bus is determined by the `CHDR_W` parameter of the bit =
file variant you are using your block in. A packet is split into data words=
 of width `CHDR_W` and then forwarded one word per clock cycle of the data =
clock `chdr_clk`. </p><p>This means that if you are using a `CHDR_W` of 64 =
as used in the 200MHz BW variant bitfile, the =E2=80=9CSPP=3D32=E2=80=9D pa=
cket you have sent from the host will be resized, and tlast will be asserte=
d after 1 CHDR header word + 16 payload Data words each containing two samp=
les (equivalent to =E2=80=9CNIPC=3D2=E2=80=9D with your sample width of sc1=
6 being =E2=80=9CITEM_W=3D32=E2=80=9D).<br><br>I=E2=80=99m not as familiar =
with gnuradio but i am assuming that if you are setting the spp for your st=
reamer your block should be fine.</p><p>The size of the return packet is yo=
u depends on what the output of your custom RFNoC block is, and whenever yo=
u assert tlast inside of your block.<br><br>By the way, I am assuming there=
 is a typo in your processing chain:<br><br>GNU Radio block A --&gt; TX str=
eamer --&gt; custom RFNoC block --&gt; <strong>RX</strong> streamer <br>--&=
gt; GNU Radio block B<br><br>Regards,<br>Niels</p>

--b1_2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM--

--===============3948841360279187206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3948841360279187206==--
