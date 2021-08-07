Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E433E3555
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 14:23:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D5EE38439B
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 08:23:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="sjg01sZJ";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6CDA4384393
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 08:23:10 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id a12so8664231qtb.2
        for <usrp-users@lists.ettus.com>; Sat, 07 Aug 2021 05:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=QsjGhCN2jTCpiisv3yK7W9YxQj4eeHCOeo4qX1UD4rY=;
        b=sjg01sZJcjzUD4JfPjfjzxBuCMTjdE7pJRgrf5TNi4c7qCwj9rVG8P1ET+r7brIa2q
         I9HHwhJ6iresTbiI5Qt6x0RNq75xjIhkwo/mkFt1Wk/aA2S2Edei4k0aC4jBCMJ7GO/5
         pBW6b/Dd9FopK7/sC2vc0GC+UgqvgbClxWthxDLpiFPyho1Bb8BYn3JUOIMbj4YY8LUE
         qXDQJW++hVMHl0YKq1szXi3e7j+qwU8DtgcKMJhxWB9pUqZskDk/gfUcVifSjSdiGddW
         fkalaM9CPiNdzNdFKMyvYLrZtFMXGY7bAj8gSbf/8OLxDJ0f9DmNXhq4uuSybPR8QVhE
         /7Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=QsjGhCN2jTCpiisv3yK7W9YxQj4eeHCOeo4qX1UD4rY=;
        b=LP3zWsISrgbdSM0zJAT1DtdYIt6bWolCnA9LY6zfu+KctE9W/E/mdZVq6k6pWv+e0y
         rNOQUM31BpcgAEQvUGf5z2S50ou4FAONzUwFtb+RD+9CejEEk0QNjMXBybC9n0U8ChMj
         CaXNS1PnYXQVu+cvZtn+GT1bw4yfFygOU13iD5/RBzyU2cyuQmZ+WxCUa+czFXwx1Ep6
         PYkAiJ8SFGKXJZhlwiC9sXXWsgEUY3CWsCn4E0TmEnooUPARik09AC6YkfcHuD/StpPR
         eQXB9nwa6H57kjAdIf+EXGqV/B2wlxcPxsFXMR0vRRbvgw1QRgLhSGfj5awTBf1t/Hsb
         CI8Q==
X-Gm-Message-State: AOAM532ojDOO4W8+LZJ3+0AwuU39PYgKAQct4BKjUezewPssNvXrXwh+
	nksXTupk9MIAsXwFMpi+6apvAVH4ssU=
X-Google-Smtp-Source: ABdhPJwSerlgVrn4DP6lQdPmUsEphN8oQU7ygd5qtAgzT/5kvSuALJCfLXsjcKlNCFFuHiROhh2VmA==
X-Received: by 2002:ac8:5ac6:: with SMTP id d6mr12903827qtd.261.1628338989692;
        Sat, 07 Aug 2021 05:23:09 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:403c:8982:191c:bca4:a75e:d1e6])
        by smtp.gmail.com with ESMTPSA id c2sm6231540qkd.57.2021.08.07.05.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 05:23:09 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 7 Aug 2021 08:23:08 -0400
Message-Id: <D78456D0-F235-4A73-92B9-0F13C55C0925@gmail.com>
References: <CAL7q81vq8d4E74DHZpLfrGcCM0BVWfH6rqv1WYxMLjh_nq03bQ@mail.gmail.com>
In-Reply-To: <CAL7q81vq8d4E74DHZpLfrGcCM0BVWfH6rqv1WYxMLjh_nq03bQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: V24SCPIGKM5PUOPVTMWYEUVQZJW4ROXB
X-Message-ID-Hash: V24SCPIGKM5PUOPVTMWYEUVQZJW4ROXB
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.0/GR-Ettus/Custom SigGen block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V24SCPIGKM5PUOPVTMWYEUVQZJW4ROXB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5474385272197034261=="


--===============5474385272197034261==
Content-Type: multipart/alternative; boundary=Apple-Mail-705A7494-65A1-476C-BDFF-51ED1F0FC4E1
Content-Transfer-Encoding: 7bit


--Apple-Mail-705A7494-65A1-476C-BDFF-51ED1F0FC4E1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hey Jonathan!
Answers below, but I have to caveat, I=E2=80=99m doing this from memory.=20

<end transmission>

> On Aug 7, 2021, at 00:43, Jonathon Pendlum <jonathon.pendlum@ettus.com> wr=
ote:
>=20
> =EF=BB=BF
> Hi Paul,
>=20
> Have you tried running the flowgraph without the loopback patch? I don't t=
hink it would affect your flowgraph, but it is worth a shot.
Yes initially I did.
>=20
> Do you get the same error if you remove the DDC block?
I=E2=80=99ll have to check again, if I remember correctly there was a connec=
tion error if I try to connect the siggen block directly to the streamer.=20=


>=20
> Do you set enable before or after you start streaming?
The =E2=80=9Cenable=E2=80=9C register is set to True by default before the s=
tream starts.=20
>=20
> Jonathon



>=20
>> On Tue, Aug 3, 2021 at 11:22 AM Paul Atreides <maud.dib1984@gmail.com> wr=
ote:
>> I could really use some help guys.
>>=20
>> i'm using an X310
>> i've added the siggen block to my HA FPGA image.
>> I've added the 'Loopback Patch' to gr-ettus which exposes skip property p=
ropagation (but it's currently set to False as is default)
>> I made a custom gnuradio block using rfnocmodtool  that accesses the UHD s=
iggen control API and controls the following properties:
>> enable
>> waveform type
>> amplitude
>> constant I
>> constant Q
>> sine phase increment
>>=20
>> uhd_usrp_probe shows the siggen block
>> |   |       RFNoC blocks on this device:
>> |   |  =20
>> |   |   * 0/DDC#0
>> |   |   * 0/DDC#1
>> |   |   * 0/DDC#2
>> |   |   * 0/DUC#0
>> |   |   * 0/DUC#1
>> |   |   * 0/NullSrcSink#0
>> |   |   * 0/Radio#0
>> |   |   * 0/Radio#1
>> |   |   * 0/SigGen#0
>> |   |   * 0/SplitStream#0
>> |     _____________________________________________________
>> |    /
>> |   |       Static connections on this device:
>> |   |  =20
>> |   |   * 0/Radio#0:0=3D=3D>0/SEP#0:0
>> |   |   * 0/SEP#0:0=3D=3D>0/Radio#0:0
>> |   |   * 0/Radio#1:0=3D=3D>0/SEP#1:0
>> |   |   * 0/SEP#1:0=3D=3D>0/Radio#1:0
>> |   |   * 0/SEP#2:0=3D=3D>0/DDC#0:0
>> |   |   * 0/DDC#0:0=3D=3D>0/SEP#2:0
>> |   |   * 0/SEP#3:0=3D=3D>0/DDC#1:0
>> |   |   * 0/DDC#1:0=3D=3D>0/SEP#3:0
>> |   |   * 0/SEP#4:0=3D=3D>0/DDC#2:0
>> |   |   * 0/DDC#2:0=3D=3D>0/SEP#4:0
>> |   |   * 0/SEP#5:0=3D=3D>0/SplitStream#0:0
>> |   |   * 0/SplitStream#0:0=3D=3D>0/SEP#6:0
>> |   |   * 0/SplitStream#0:1=3D=3D>0/SEP#7:0
>> |   |   * 0/SEP#8:0=3D=3D>0/DUC#0:0
>> |   |   * 0/DUC#0:0=3D=3D>0/SEP#8:0
>> |   |   * 0/SEP#9:0=3D=3D>0/DUC#1:0
>> |   |   * 0/DUC#1:0=3D=3D>0/SEP#9:0
>> |   |   * 0/SEP#10:0=3D=3D>0/NullSrcSink#0:0
>> |   |   * 0/NullSrcSink#0:0=3D=3D>0/SEP#10:0
>> |   |   * 0/SEP#11:0=3D=3D>0/NullSrcSink#0:1
>> |   |   * 0/NullSrcSink#0:1=3D=3D>0/SEP#11:0
>> |   |   * 0/SEP#12:0=3D=3D>0/SigGen#0:0
>> |   |   * 0/SigGen#0:0=3D=3D>0/SEP#12:0
>> |
>>=20
>>=20
>> I've followed Aaron Rosetto's RFNoC Python API guide from GRCON last year=
 and confirmed that siggen can be accessed via UHD and can stream samples to=
 the host.=20
>>=20
>> the gnuradio part is where it's getting messy
>>=20
>> when i connect:
>> RX RADIO -> DDC -> RX STREAMER -> QT GUI TIME SINK
>> everything works as expected in GNURadio
>>=20
>> when i replace the radio with the siggen and connect
>> SIGGEN -> DDC -> RX STREAMER -> QT GUI TIME SINK
>> i get the following error
>>   File "/home/user/flowgraphs/siggen_stream_to_host.py", line 258, in <mo=
dule>
>>     main()
>>   File "/home/user/flowgraphs/siggen_stream_to_host.py", line 234, in mai=
n
>>     tb =3D top_block_cls()
>>   File "/home/user/flowgraphs/siggen_stream_to_host.py", line 184, in __i=
nit__
>>     self.rfnoc_graph.connect(self.nocextend_siggen_0.get_unique_id(), 0, s=
elf.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)=

>>   File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 2=
384, in connect
>>     return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)
>> RuntimeError: EnvironmentError: IOError: Timed out getting recv buff for m=
anagement transaction
>> Exception ignored in: <built-in function delete_time_sink_c_sptr>
>> SystemError: <built-in function delete_time_sink_c_sptr> returned a resul=
t with an error set
>>=20
>>=20
>> Again, i could really use some help
>> thanks
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-705A7494-65A1-476C-BDFF-51ED1F0FC4E1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hey Jonathan!<div>Answers below, but I have=
 to caveat, I=E2=80=99m doing this from memory.&nbsp;<br><br><div dir=3D"ltr=
">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color:=
 rgba(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 2=
27, 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469)=
; ">end transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Aug 7, 2021, at 00:43, Jonathon Pendlum &lt;jonathon.pendlum@ettus=
.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=
=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Paul,<div><br></div><div>Have you trie=
d running the flowgraph without the loopback patch? I don't think it would a=
ffect your flowgraph, but it is worth a shot.</div></div></div></blockquote>=
Yes initially I did.<br><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D=
"ltr"><div><br></div><div>Do you get the same error if you remove the DDC bl=
ock?</div></div></div></blockquote>I=E2=80=99ll have to check again, if I re=
member correctly there was a connection error if I try to connect the siggen=
 block directly to the streamer.&nbsp;</div><div><br></div><div><blockquote t=
ype=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Do you se=
t enable before or after you start streaming?</div></div></div></blockquote>=
The =E2=80=9Cenable=E2=80=9C register is set to True by default before the s=
tream starts.&nbsp;<br><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D=
"ltr"><div><br></div><div>Jonathon</div></div></div></blockquote><div><br></=
div><div><br></div><br><blockquote type=3D"cite"><div dir=3D"ltr"><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 3, 20=
21 at 11:22 AM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">m=
aud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div>I could really use some help guys.<=
br><br></div><div>i'm using an X310<br>i've added the siggen block to my HA =
FPGA image.<br>I've added the 'Loopback Patch' to gr-ettus which exposes ski=
p property propagation (but it's currently set to False as is default)<br>I m=
ade a custom gnuradio block using rfnocmodtool&nbsp; that accesses the UHD s=
iggen control API and controls the following properties:<br></div><div>enabl=
e<br></div><div>waveform type<br></div><div>amplitude<br></div><div>constant=
 I<br></div><div>constant Q<br></div><div>sine phase increment<br><br></div>=
<div>uhd_usrp_probe shows the siggen block<br>| &nbsp; | &nbsp; &nbsp; &nbsp=
; RFNoC blocks on this device:<br>| &nbsp; | &nbsp; <br>| &nbsp; | &nbsp; * 0=
/DDC#0<br>| &nbsp; | &nbsp; * 0/DDC#1<br>| &nbsp; | &nbsp; * 0/DDC#2<br>| &n=
bsp; | &nbsp; * 0/DUC#0<br>| &nbsp; | &nbsp; * 0/DUC#1<br>| &nbsp; | &nbsp; *=
 0/NullSrcSink#0<br>| &nbsp; | &nbsp; * 0/Radio#0<br>| &nbsp; | &nbsp; * 0/R=
adio#1<br>| &nbsp; | &nbsp; * 0/SigGen#0<br>| &nbsp; | &nbsp; * 0/SplitStrea=
m#0<br>| &nbsp; &nbsp; _____________________________________________________=
<br>| &nbsp; &nbsp;/<br>| &nbsp; | &nbsp; &nbsp; &nbsp; Static connections o=
n this device:<br>| &nbsp; | &nbsp; <br>| &nbsp; | &nbsp; * 0/Radio#0:0=3D=3D=
&gt;0/SEP#0:0<br>| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/Radio#0:0<br>| &nb=
sp; | &nbsp; * 0/Radio#1:0=3D=3D&gt;0/SEP#1:0<br>| &nbsp; | &nbsp; * 0/SEP#1=
:0=3D=3D&gt;0/Radio#1:0<br>| &nbsp; | &nbsp; * 0/SEP#2:0=3D=3D&gt;0/DDC#0:0<=
br>| &nbsp; | &nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#2:0<br>| &nbsp; | &nbsp; * 0=
/SEP#3:0=3D=3D&gt;0/DDC#1:0<br>| &nbsp; | &nbsp; * 0/DDC#1:0=3D=3D&gt;0/SEP#=
3:0<br>| &nbsp; | &nbsp; * 0/SEP#4:0=3D=3D&gt;0/DDC#2:0<br>| &nbsp; | &nbsp;=
 * 0/DDC#2:0=3D=3D&gt;0/SEP#4:0<br>| &nbsp; | &nbsp; * 0/SEP#5:0=3D=3D&gt;0/=
SplitStream#0:0<br>| &nbsp; | &nbsp; * 0/SplitStream#0:0=3D=3D&gt;0/SEP#6:0<=
br>| &nbsp; | &nbsp; * 0/SplitStream#0:1=3D=3D&gt;0/SEP#7:0<br>| &nbsp; | &n=
bsp; * 0/SEP#8:0=3D=3D&gt;0/DUC#0:0<br>| &nbsp; | &nbsp; * 0/DUC#0:0=3D=3D&g=
t;0/SEP#8:0<br>| &nbsp; | &nbsp; * 0/SEP#9:0=3D=3D&gt;0/DUC#1:0<br>| &nbsp; |=
 &nbsp; * 0/DUC#1:0=3D=3D&gt;0/SEP#9:0<br>| &nbsp; | &nbsp; * 0/SEP#10:0=3D=3D=
&gt;0/NullSrcSink#0:0<br>| &nbsp; | &nbsp; * 0/NullSrcSink#0:0=3D=3D&gt;0/SE=
P#10:0<br>| &nbsp; | &nbsp; * 0/SEP#11:0=3D=3D&gt;0/NullSrcSink#0:1<br>| &nb=
sp; | &nbsp; * 0/NullSrcSink#0:1=3D=3D&gt;0/SEP#11:0<br>| &nbsp; | &nbsp; * 0=
/SEP#12:0=3D=3D&gt;0/SigGen#0:0<br>| &nbsp; | &nbsp; * 0/SigGen#0:0=3D=3D&gt=
;0/SEP#12:0<br>|<br><br><br>I've followed Aaron Rosetto's RFNoC Python API g=
uide from GRCON last year and confirmed that siggen can be accessed via UHD a=
nd can stream samples to the host. <br></div><div><br></div><div>the gnuradi=
o part is where it's getting messy<br></div><div><br>when i connect:<br>RX R=
ADIO -&gt; DDC -&gt; RX STREAMER -&gt; QT GUI TIME SINK<br>everything works a=
s expected in GNURadio<br><br></div>when i replace the radio with the siggen=
 and connect<br><div>SIGGEN -&gt; DDC -&gt; RX STREAMER -&gt; QT GUI TIME SI=
NK<br></div><div>i get the following error<br>&nbsp; File "/home/user/flowgr=
aphs/siggen_stream_to_host.py", line 258, in &lt;module&gt;<br>&nbsp; &nbsp;=
 main()<br>&nbsp; File "/home/user/flowgraphs/siggen_stream_to_host.py", lin=
e 234, in main<br>&nbsp; &nbsp; tb =3D top_block_cls()<br>&nbsp; File "/home=
/user/flowgraphs/siggen_stream_to_host.py", line 184, in __init__<br>&nbsp; &=
nbsp; self.rfnoc_graph.connect(self.nocextend_siggen_0.get_unique_id(), 0, s=
elf.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)=
<br>&nbsp; File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", l=
ine 2384, in connect<br>&nbsp; &nbsp; return _ettus_swig.rfnoc_graph_sptr_co=
nnect(self, *args)<br>RuntimeError: EnvironmentError: IOError: Timed out get=
ting recv buff for management transaction<br>Exception ignored in: &lt;built=
-in function delete_time_sink_c_sptr&gt;<br>SystemError: &lt;built-in functi=
on delete_time_sink_c_sptr&gt; returned a result with an error set</div><div=
><br><br></div><div>Again, i could really use some help</div><div>thanks<br>=
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-705A7494-65A1-476C-BDFF-51ED1F0FC4E1--

--===============5474385272197034261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5474385272197034261==--
