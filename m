Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA911916561
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 12:39:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F63C384EF1
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 06:39:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719311997; bh=lE/b7s7DAfEYIltTRhNOEopkXHL2PayXJ9o6hV9LcUI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uiPmI3s2C1bLpnjMXkHry/K64xwx1nj76khw4f+zJPoPOFi8RAtGJuJrkkVotme7Y
	 B6OWbd517A28wqRQje/YkSFjP4dMpQ6qoaIZv9wiUqSys9Z5MBMjrrTvnWv3cRj10T
	 3Dq4CPNTDm7bv0KT+PxSZd0P0uYFO9TQheil7FFAzZQL7x6gFaUHgnO0dch+6sRtf0
	 Nb6RTJF9DIS0B6+4FSBvELVVqHBiXUBQtRpfdJJvC9t7odyj+mgVfbmUxasQONPqDV
	 CcbvQz+eML4qXO7PXDaK5oYzGBPq4cqndxGa5E1nJ4Cl6Hslm5CIUqU2jeWIGdnfFx
	 PXnnb5eQ4C+Mw==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 213FB384D48
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 06:39:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="iOc3RReB";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57cbc2a2496so6132183a12.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 03:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719311955; x=1719916755; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sInprMG0xbHyjT0KJA3cmNReM3WDn/CzIgeZwpsnNig=;
        b=iOc3RReBJiY13zvWJu6QcEaruBoAH+yoMUMAFr9SiACNPA32Lwugw9IxqYME6PIYM6
         LrIjZMn0pDVyU2crOOvfQOfn6G1BoaPC1JmSr7y3M2UbpaIlCTVU5TdDmJErrZV5OTZt
         TsdqtORKkltpsWlpo+xJ9ybm6zdCMnTxb2YexrC9q2tAQkhSIlSjBB9tyEAVmUcTY0jg
         nzINmCR5w6TQSU4TmoD+87cbDxSGrN+jrdfiJ6xY0hQbJMcrnQ52s98+KrnFJuS4oVKS
         Vs00OkjU0Qe9eG3V4719xxhmdu1QDttoWMRRFEn1pkxtPN7m6P4ZVYYGPIcFfm4/DyqA
         lT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719311955; x=1719916755;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sInprMG0xbHyjT0KJA3cmNReM3WDn/CzIgeZwpsnNig=;
        b=umBMbfaTPkYWit+Ng0PVxoefrJg/6O+T3T/vBHPNLKkXj2MCZvttQLWN66KmBOzDVx
         vZet3bKJp0E9WnrqzUTU5d1WL7j6wW1ud4FFEoR9VLYtIZENBf6E7XBFPHJ4ZCJedQNx
         ckh9v9Ju5yz/KA4AlWB51WF7MgpXVKfWIwEzWgewNiwZJN2p9ixo7S069t89rs9L8eU7
         vLitQY2a2PYjhTYxJlsQPgLYmGdcb0xLlN7LpfIq3e97mXGD7qsjjnLfmBdzJ7Un3crb
         HUv82x3EYOZlEexGyaco08/0eCDWUTgn4TZ66RrA9YR8e5S5bqzWAiZb4SK/wCshIjc+
         D/mg==
X-Gm-Message-State: AOJu0YzzTeVUY3h1CPjRsGPJIBVdsTaDd7i4u7lEcVdkS5zUddUDBpVH
	GLUxUN9ntyWAEIzu3XamuM20quQNGFdy+JAJvxi7j5J50H6P+y7KaMpJSuKkZxIF5Q8naIgzfht
	7cv/loG/unoObrTew7+M+FGtSz1nFaJj0C8KUopFKep27UI6l4+1Nzg==
X-Google-Smtp-Source: AGHT+IEVoGf1K+BljuRTMv2wT3JgTuQZcXtQA8APfoBOkvamP6bR5J9tx1SAGrjDUiQ5CdqcT34Z2tHnsRhVBvU3H2s=
X-Received: by 2002:a50:f604:0:b0:57c:ad11:e759 with SMTP id
 4fb4d7f45d1cf-57d4bdbe905mr6255065a12.28.1719311955453; Tue, 25 Jun 2024
 03:39:15 -0700 (PDT)
MIME-Version: 1.0
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 25 Jun 2024 12:39:03 +0200
Message-ID: <CAFOi1A6CyYPFX-TB6YFhVFOvA1Xhpawf0HwBVAUT4wFi9V2kxQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: HTTALIHZKX7JP7D5IV4E3OHDJT4NGFQD
X-Message-ID-Hash: HTTALIHZKX7JP7D5IV4E3OHDJT4NGFQD
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Image Builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HTTALIHZKX7JP7D5IV4E3OHDJT4NGFQD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9024952968263069760=="

--===============9024952968263069760==
Content-Type: multipart/alternative; boundary="0000000000005d00be061bb482ba"

--0000000000005d00be061bb482ba
Content-Type: text/plain; charset="UTF-8"

Hi all,

As you may have seen from the 4.7-RC1 release announcements, we have a
bunch of updates to the RFNoC image builder. I would like to provide some
context around those.

First, we are not yet ready to ship a new version of RFNoC modtool. With
the deprecation of gr-ettus as the way to ship that tool, we have a bunch
of work ahead of us to integrate a new modtool into UHD, and we're not
there yet.

However, the image builder has had some major improvements. Many of those
are simply usability improvements: You'll notice the logging output looks
different, and we have tried to improve the error messages. This is, to a
large extent, done by allowing custom checks within block descriptor YAMLs
as well as BSP YAMLs. For example, if you leave important bus connections
unconnected in an RFNoC image core file, then you will now get a warning,
and must confirm that you know what you're doing if you want the image
builder to proceed to build a bitfile.

One thing you'll notice is that you now must use the image builder to build
FPGA bitfiles, and can no longer directly build bitfiles by running
commands like "make X410_X4_400". This may be annoying for people who like
to build the stock images, but it makes many things simpler: Now, there is
a single way (i.e., calling rfnoc_image_builder) that will make bitfiles.
Besides, we no longer have to check in intermediate build artifacts (e.g.,
the image core auto-generated Verilog) into git, which can cause conflicts
or confusion.
Side note: If you don't like having install all of UHD, because you just
need the image builder, run `cmake -DENABLE_LIBUHD=OFF
-DENABLE_PYMOD_UTILS=ON` to just install the image builder and some other
Python-based utilities.

Probably the biggest new feature is the fact that in the X4x0 series,
transport adapters are now part of the image core. That means that you must
choose which transports you want to use in the YAML file, instead of by
specifying a build target.
For example, if you wanted the 10GbE version of the X410, or the 100 GbE
version, you would either build the X410_X4_400 or X410_CG_400 target. Now,
there is only one target (X410) but you modify the YAML file to choose a
single 10 GbE, quadruple 10 GbE, or 100 GbE per QSFP port (of course, you
may also leave them unconnected). The main reason this is useful is because
it allows you to put custom blocks or transport adapters that use the QSFP
ports into your designs.
Note that on other devices than X4x0 devices, the previous behaviour is
still in place. For example, on X310, you can't define the transport
adapters through the YAML files.

There is a downside to this feature: If you use a pre-4.7 image core file
(which does not specify transport adapters), then you would end up with a
bitfile that can't communicate with the outside. You may have guessed it:
We added more checks to make it hard for that to happen, the image builder
would give you a very obvious warning in that case.

Another interesting feature is the ability to add custom Verilog modules.
These also require a YAML file to describe them, but can be used to consume
or write to IO ports, generate custom clocks, or whatever else you want to
do.

Some other random features:
- Better use of parameters, which can be referenced in YAML files. For
example, you can create an IO port with variable width, and make the width
a parameter.
- Better inclusion/exclusion of build files based on what you need (e.g.,
if you build a bitfile without DDC, then no DDC IP will be included)
- Define IO signatures in any module. If you write a block with custom IO
signatures, just include the IO signatures in the block YAML.
- Custom paths for build, IP, and output. This means you don't have to
write anything inside the RFNoC source tree.
- The "build" directory stores all artifacts that get auto-generated during
build time. For debugging, you may manually edit these files and use the
--reuse option on rfnoc_image_builder to make sure your manual changes
don't get overwritten.
- Use inheritance to share info between similar image core files.
- Separate edge files are no longer used.

One item that might trigger some questions is the new "secure image core"
feature. This is a response to a feature request to allow mixing
proprietary and open-source blocks. Note that we are not going to use that
as part of standard bitfiles: All blocks that get shipped with UHD will
remain open-source and modifiable (well, as much as possible, we do use
Vivado and AMD/Xilinx IP). There may be blocks in the future (not part of
UHD) that make use of these secure cores.


Going Forward
============

These improvements to rfnoc_image_builder are a first step to making the
whole RFNoC image building process more user-friendly and less wading
through code examples and trial-and-error. Part of this process will also
be a renewed modtool (and also, work on the blocktool), but that's further
down the line.

The reason we started working on things in this order is what we perceive
as the priority in how people engage in using RFNoC: There are more people
interested in building custom bitfiles with standard blocks (e.g., adding
an FFT, adding a filter) than there are people writing their own blocks --
but even those who do write their own blocks need to use the image builder.

I'll leave it at that. This is a good place to ask questions about these
updates -- I'll try and cover them!

Cheers,
Martin

--0000000000005d00be061bb482ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>As you may have seen=
 from the 4.7-RC1 release announcements, we have a bunch of updates to the =
RFNoC image builder. I would like to provide some context around those.</di=
v><div><br></div><div>First, we are not yet ready to ship a new version of =
RFNoC modtool. With the deprecation of gr-ettus as the way to ship that too=
l, we have a bunch of work ahead of us to integrate a new modtool into UHD,=
 and we&#39;re not there yet.</div><div><br></div><div>However, the image b=
uilder has had some major improvements. Many of those are simply usability =
improvements: You&#39;ll notice the logging output looks different, and we =
have tried to improve the error messages. This is, to a large extent, done =
by allowing custom checks within block descriptor YAMLs as well as BSP YAML=
s. For example, if you leave important bus connections unconnected in an RF=
NoC image core file, then you will now get a warning, and must confirm that=
 you know what you&#39;re doing if you want the image builder to proceed to=
 build a bitfile.</div><div><br></div><div>One thing you&#39;ll notice is t=
hat you now must use the image builder to build FPGA bitfiles, and can no l=
onger directly build bitfiles by running commands like &quot;make X410_X4_4=
00&quot;. This may be annoying for people who like to build the stock image=
s, but it makes many things simpler: Now, there is a single way (i.e., call=
ing rfnoc_image_builder) that will make bitfiles. Besides, we no longer hav=
e to check in intermediate build artifacts (e.g., the image core auto-gener=
ated Verilog) into git, which can cause conflicts or confusion.</div><div>S=
ide note: If you don&#39;t like having install all of UHD, because you just=
 need the image builder, run `cmake -DENABLE_LIBUHD=3DOFF -DENABLE_PYMOD_UT=
ILS=3DON` to just install the image builder and some other Python-based uti=
lities.<br></div><div><br></div><div>Probably the biggest new feature is th=
e fact that in the X4x0 series, transport adapters are now part of the imag=
e core. That means that you must choose which transports you want to use in=
 the YAML file, instead of by specifying a build target.</div><div>For exam=
ple, if you wanted the 10GbE version of the X410, or the 100 GbE version, y=
ou would either build the X410_X4_400 or X410_CG_400 target. Now, there is =
only one target (X410) but you modify the YAML file to choose a single 10 G=
bE, quadruple 10 GbE, or 100 GbE per QSFP port (of course, you may also lea=
ve them unconnected). The main reason this is useful is because it allows y=
ou to put custom blocks or transport adapters that use the QSFP ports into =
your designs.</div><div>Note that on other devices than X4x0 devices, the p=
revious behaviour is still in place. For example, on X310, you can&#39;t de=
fine the transport adapters through the YAML files.</div><div><br></div><di=
v>There is a downside to this feature: If you use a pre-4.7 image core file=
 (which does not specify transport adapters), then you would end up with a =
bitfile that can&#39;t communicate with the outside. You may have guessed i=
t: We added more checks to make it hard for that to happen, the image build=
er would give you a very obvious warning in that case.<br></div><div><br></=
div><div>Another interesting feature is the ability to add custom Verilog m=
odules. These also require a YAML file to describe them, but can be used to=
 consume or write to IO ports, generate custom clocks, or whatever else you=
 want to do.</div><div><br></div><div>Some other random features:</div><div=
>- Better use of parameters, which can be referenced in YAML files. For exa=
mple, you can create an IO port with variable width, and make the width a p=
arameter.</div><div>- Better inclusion/exclusion of build files based on wh=
at you need (e.g., if you build a bitfile without DDC, then no DDC IP will =
be included)</div><div>- Define IO signatures in any module. If you write a=
 block with custom IO signatures, just include the IO signatures in the blo=
ck YAML.</div><div>- Custom paths for build, IP, and output. This means you=
 don&#39;t have to write anything inside the RFNoC source tree.</div><div>-=
 The &quot;build&quot; directory stores all artifacts that get auto-generat=
ed during build time. For debugging, you may manually edit these files and =
use the --reuse option on rfnoc_image_builder to make sure your manual chan=
ges don&#39;t get overwritten.</div><div>- Use inheritance to share info be=
tween similar image core files.</div><div>- Separate edge files are no long=
er used.</div><div><br></div><div>One item that might trigger some question=
s is the new &quot;secure image core&quot; feature. This is a response to a=
 feature request to allow mixing proprietary and open-source blocks. Note t=
hat we are not going to use that as part of standard bitfiles: All blocks t=
hat get shipped with UHD will remain open-source and modifiable (well, as m=
uch as possible, we do use Vivado and AMD/Xilinx IP). There may be blocks i=
n the future (not part of UHD) that make use of these secure cores.</div><d=
iv><br></div><div><br></div><div>Going Forward</div><div>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</div><div><br></div><div>These improvements to rfnoc_ima=
ge_builder are a first step to making the whole RFNoC image building proces=
s more user-friendly and less wading through code examples and trial-and-er=
ror. Part of this process will also be a renewed modtool (and also, work on=
 the blocktool), but that&#39;s further down the line.</div><div><br></div>=
<div>The reason we started working on things in this order is what we perce=
ive as the priority in how people engage in using RFNoC: There are more peo=
ple interested in building custom bitfiles with standard blocks (e.g., addi=
ng an FFT, adding a filter) than there are people writing their own blocks =
-- but even those who do write their own blocks need to use the image build=
er.</div><div><br></div><div>I&#39;ll leave it at that. This is a good plac=
e to ask questions about these updates -- I&#39;ll try and cover them!</div=
><div><br></div><div>Cheers,</div><div>Martin<br></div></div>

--0000000000005d00be061bb482ba--

--===============9024952968263069760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9024952968263069760==--
