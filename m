Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 158424A03FB
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 23:57:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF9333851B6
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 17:57:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jCp9OdZp";
	dkim-atps=neutral
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C757D38499A
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 17:55:24 -0500 (EST)
Received: by mail-lf1-f52.google.com with SMTP id o12so14592407lfg.12
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 14:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=3BrDKB14uts64DiEZj75Qf08lBgaFTdp2/P3kR6S2iY=;
        b=jCp9OdZpV/rQIgAA6a8KYbDJN0+tTtCNJQ5+bLKHWg4FmE2yZgS498Xb/hWobmhj7D
         +r30bme47StGFkR3WbFfolrcEybGL3r/kFUcH9EXXcD8q3fsZyiHCgEItI6Zew9NWae3
         XjLUQ7wIRxffT9r3cbZJ1T4ALt1yZpPkQdFP+YHClskTzdjer5pZRZIFlayuJIh/2Qz/
         pA8JVm+zWhnmSfbS/d7zpsmDeHnKI2ZhHRZ6kmzHn3kT1CXadKEIqCzYI6/xTdzt2OI9
         x0xTj0OiUvKzOywJo471+QyPakRGHwnxVYTW1u8Y4/yP9691JUGPGq6Ao0y+7ma2jGQt
         EeqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=3BrDKB14uts64DiEZj75Qf08lBgaFTdp2/P3kR6S2iY=;
        b=TyuAW3unK5aroQ/i3XhyOiSFJf4MHLOMun0HQ8Rccaxb6ZdAB0r1jlexVSifYC0nN6
         M/p1X4IWxelPES87TJREqkMcJRJEfC2K/JyQuDv3Ch3faFCgjXwjyGIH4UyXzslk4CfX
         wzU37VVzceQqKi8IfBh78/crCM0ef8o89tnicCZQJMAy+u8om7yzl07WPPyilekCQZJK
         3+17AVDfOuIxWg6rvSZZNd83ReqPEsWShMeBMQRCHSFBFkrAGr9SdLSGggG0JBc0IuYq
         IJfEVFvChThTrPf1u8Vfcr4La4fdWI3AGyCCDptjuU7fTod18nUdoatHWf1g3aRHXpIg
         /KeA==
X-Gm-Message-State: AOAM5301unBPrP/ebkj+Ah9/xqFH9bC5pir+2bzkaZpVfADTn8T8H5M2
	yClGpA//gUTOX9PXK18kILMl6oUmEgtQQ+n6GcA=
X-Google-Smtp-Source: ABdhPJyo+WlneptVVAqCgdmeeGolFOItraUEygtHgG4GizxS+xXPLhW9oL5IuXeA3kvh/VwvCzeacAqQfKq2ErDlCxU=
X-Received: by 2002:a05:6512:308d:: with SMTP id z13mr7763612lfd.529.1643410523053;
 Fri, 28 Jan 2022 14:55:23 -0800 (PST)
MIME-Version: 1.0
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 28 Jan 2022 17:55:12 -0500
Message-ID: <CACwKM9+8gEeLzf7Pzds1iLNAEcJZzuBJzo3XMXHoqCmZS2XhCg@mail.gmail.com>
To: GNURadio Discussion List <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: XA3CQQTNTFK5ZUWOYXUYZI3OWHNID2PA
X-Message-ID-Hash: XA3CQQTNTFK5ZUWOYXUYZI3OWHNID2PA
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Here's how to get the N321's LO sharing to work in GNURadio 3.9 with UHD4.1.0.5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XA3CQQTNTFK5ZUWOYXUYZI3OWHNID2PA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0273439063653782276=="

--===============0273439063653782276==
Content-Type: multipart/alternative; boundary="00000000000072624805d6ac54a3"

--00000000000072624805d6ac54a3
Content-Type: text/plain; charset="UTF-8"

Currently there's no way to use LO sharing with the N321 in gr-uhd.
The N321 uses an RF Distribution board which has port terminations that
need to be switched to active outputs when the LO is exported. This isn't
accessible in gr-uhd.

In order to access the LO distribution enable commands shown here:
https://kb.ettus.com/USRP_N320/N321_LO_Distribution#UHD_LO_Distribution_Commands
a function needs to be added to gr-uhd
All this code below is taken from here:
https://github.com/daniestevez/uhd/commit/0a6da1a3fd5839b862cac740ed702923ed21b096
https://github.com/daniestevez/gnuradio/commit/f9909bade86045f379f83001de27317cc261807f
with the rx switched for tx and source switched for sink
i also did not modify any UHD code making this a fix that requires ONLY
modifying gr-uhd

usrp_sink_impl.cc
void usrp_sink_impl::set_tx_lo_dist(bool enabled,
const std::string& name,
size_t chan)

{
#ifdef UHD_USRP_MULTI_USRP_TX_LO_CONFIG_API
_dev->get_tree()->access<bool>(
"/blocks/0/Radio#0/dboard/tx_frontends/0/los/lo1/lo_distribution"/ ::uhd::
fs_path(name) / "export").set(enabled);

#else
throw std::runtime_error("not implemented in this version");
#endif
}
usrp_sink_impl.h
void set_tx_lo_dist(bool enabled,
const std::string &name, size_t chan = 0) override;
usrp_sink.h
virtual void set_tx_lo_dist(bool enabled, const std::string &name, size_t
chan =0) = 0;

usrp_sink_python.cc
.def("set_tx_lo_dist",
&usrp_sink::set_tx_lo_dist,
py::arg("enabled"),
py::arg("name"),
py::arg("chan") = 0,
D(usrp_sink, set_tx_lo_dist))
usrp_sink_pydoc_template.h
static const char* __doc_gr_uhd_usrp_sink_set_tx_lo_dist = R"doc()doc";



Assuming the sink block is "usrp_sink_0"

snippet_0 code
'Main-After Init'
# Turn on the ports
self.usrp_sink_0.set_tx_lo_dist(True,"LO_OUT_0",0)
# repeat the above for all ports needed "LO_OUT_<N>"

snippet_1
'Main-After Stop'
# Turn off the ports
self.usrp_sink_0.set_tx_lo_dist(False,"LO_OUT_0",0)
# repeat for all ports you enabled "LO_OUT_<N>"

The other settings i found were needed in the gr-uhd block included:
Setting the start time to 1
Setting the Master Clock rate to 200MHz
CH0:
  LO Source = external
  LO Export = True
CH1:
  LO Source = external
  LO Export = False


I'd like to thank the community of users for doing all of this work,
especially Marcus Leech, Rob Kossler and Daniel Estevez

--00000000000072624805d6ac54a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div><div><div><div><div>Currently t=
here&#39;s no way to use LO sharing with the N321 in gr-uhd. </div><div>The=
 N321 uses an RF Distribution board which has port terminations that need t=
o be switched to active outputs when the LO is exported. This isn&#39;t acc=
essible in gr-uhd.<br></div></div><br>In order to access the LO distributio=
n enable commands shown here:<br><a href=3D"https://kb.ettus.com/USRP_N320/=
N321_LO_Distribution#UHD_LO_Distribution_Commands">https://kb.ettus.com/USR=
P_N320/N321_LO_Distribution#UHD_LO_Distribution_Commands</a><br></div>a fun=
ction needs to be added to gr-uhd<br></div>All this code below is taken fro=
m here:<br>
<a href=3D"https://github.com/daniestevez/uhd/commit/0a6da1a3fd5839b862cac7=
40ed702923ed21b096" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/daniestevez/uhd/commit/0a6da1a3fd5839b862cac740ed702923ed21b096</a><br>
<a href=3D"https://github.com/daniestevez/gnuradio/commit/f9909bade86045f37=
9f83001de27317cc261807f" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/daniestevez/gnuradio/commit/f9909bade86045f379f83001de27317cc261807f<=
/a></div><div>with the rx switched for tx and source switched for sink<br><=
/div><div>i also did not modify any UHD code making this a fix that require=
s ONLY modifying gr-uhd<br></div><div><br></div><div>usrp_sink_impl.cc<br><=
/div></div><div><div style=3D"color:rgb(212,212,212);background-color:rgb(3=
0,30,30);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mono=
space,&quot;Droid Sans Fallback&quot;;font-weight:normal;font-size:14px;lin=
e-height:19px;white-space:pre"><div><span style=3D"color:rgb(86,156,214)">v=
oid</span><span style=3D"color:rgb(212,212,212)"> </span><span style=3D"col=
or:rgb(78,201,176)">usrp_sink_impl</span><span style=3D"color:rgb(212,212,2=
12)">::</span><span style=3D"color:rgb(220,220,170)">set_tx_lo_dist</span><=
span style=3D"color:rgb(212,212,212)">(</span><span style=3D"color:rgb(86,1=
56,214)">bool</span><span style=3D"color:rgb(212,212,212)"> </span><span st=
yle=3D"color:rgb(156,220,254)">enabled</span><span style=3D"color:rgb(212,2=
12,212)">, </span></div><div><span style=3D"color:rgb(212,212,212)">       =
                             </span><span style=3D"color:rgb(86,156,214)">c=
onst</span><span style=3D"color:rgb(212,212,212)"> </span><span style=3D"co=
lor:rgb(78,201,176)">std</span><span style=3D"color:rgb(212,212,212)">::</s=
pan><span style=3D"color:rgb(78,201,176)">string</span><span style=3D"color=
:rgb(86,156,214)">&amp;</span><span style=3D"color:rgb(212,212,212)"> </spa=
n><span style=3D"color:rgb(156,220,254)">name</span><span style=3D"color:rg=
b(212,212,212)">,</span></div><div><span style=3D"color:rgb(212,212,212)"> =
                                   </span><span style=3D"color:rgb(78,201,1=
76)">size_t</span><span style=3D"color:rgb(212,212,212)"> </span><span styl=
e=3D"color:rgb(156,220,254)">chan</span><span style=3D"color:rgb(212,212,21=
2)">)</span></div><br><div><span style=3D"color:rgb(212,212,212)">{</span><=
/div><div><span style=3D"color:rgb(197,134,192)">#ifdef</span><span style=
=3D"color:rgb(86,156,214)"> </span><span style=3D"color:rgb(86,156,214)">UH=
D_USRP_MULTI_USRP_TX_LO_CONFIG_API</span></div><div><span style=3D"color:rg=
b(212,212,212)">    </span><span style=3D"color:rgb(156,220,254)">_dev</spa=
n><span style=3D"color:rgb(220,220,170)">-&gt;</span><span style=3D"color:r=
gb(220,220,170)">get_tree</span><span style=3D"color:rgb(212,212,212)">()</=
span><span style=3D"color:rgb(220,220,170)">-&gt;</span><span style=3D"colo=
r:rgb(220,220,170)">access</span><span style=3D"color:rgb(212,212,212)">&lt=
;</span><span style=3D"color:rgb(86,156,214)">bool</span><span style=3D"col=
or:rgb(212,212,212)">&gt;(</span><span style=3D"color:rgb(206,145,120)">&qu=
ot;/blocks/0/Radio#0/dboard/tx_frontends/0/los/lo1/lo_distribution&quot;</s=
pan><span style=3D"color:rgb(220,220,170)">/</span><span style=3D"color:rgb=
(212,212,212)"> ::</span><span style=3D"color:rgb(78,201,176)">uhd</span><s=
pan style=3D"color:rgb(212,212,212)">::</span><span style=3D"color:rgb(78,2=
01,176)">fs_path</span><span style=3D"color:rgb(212,212,212)">(</span><span=
 style=3D"color:rgb(156,220,254)">name</span><span style=3D"color:rgb(212,2=
12,212)">) </span><span style=3D"color:rgb(220,220,170)">/</span><span styl=
e=3D"color:rgb(212,212,212)"> </span><span style=3D"color:rgb(206,145,120)"=
>&quot;export&quot;</span><span style=3D"color:rgb(212,212,212)">).</span><=
span style=3D"color:rgb(220,220,170)">set</span><span style=3D"color:rgb(21=
2,212,212)">(</span><span style=3D"color:rgb(156,220,254)">enabled</span><s=
pan style=3D"color:rgb(212,212,212)">);</span></div><br><div><span style=3D=
"color:rgb(197,134,192)">#else</span><span style=3D"color:rgb(212,212,212)"=
>   </span></div><div><span style=3D"color:rgb(212,212,212)">    </span><sp=
an style=3D"color:rgb(197,134,192)">throw</span><span style=3D"color:rgb(21=
2,212,212)"> </span><span style=3D"color:rgb(78,201,176)">std</span><span s=
tyle=3D"color:rgb(212,212,212)">::</span><span style=3D"color:rgb(220,220,1=
70)">runtime_error</span><span style=3D"color:rgb(212,212,212)">(</span><sp=
an style=3D"color:rgb(206,145,120)">&quot;not implemented in this version&q=
uot;</span><span style=3D"color:rgb(212,212,212)">);</span></div><div><span=
 style=3D"color:rgb(197,134,192)">#endif</span></div><div><span style=3D"co=
lor:rgb(212,212,212)">}</span></div></div><div><div><div><div>usrp_sink_imp=
l.h<br><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);=
font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&qu=
ot;Droid Sans Fallback&quot;;font-weight:normal;font-size:14px;line-height:=
19px;white-space:pre"><div><span style=3D"color:rgb(212,212,212)">    </spa=
n><span style=3D"color:rgb(86,156,214)">void</span><span style=3D"color:rgb=
(212,212,212)"> </span><span style=3D"color:rgb(220,220,170)">set_tx_lo_dis=
t</span><span style=3D"color:rgb(212,212,212)">(</span><span style=3D"color=
:rgb(86,156,214)">bool</span><span style=3D"color:rgb(212,212,212)"> </span=
><span style=3D"color:rgb(156,220,254)">enabled</span><span style=3D"color:=
rgb(212,212,212)">, </span></div><div><span style=3D"color:rgb(212,212,212)=
">                        </span><span style=3D"color:rgb(86,156,214)">cons=
t</span><span style=3D"color:rgb(212,212,212)"> </span><span style=3D"color=
:rgb(78,201,176)">std</span><span style=3D"color:rgb(212,212,212)">::</span=
><span style=3D"color:rgb(78,201,176)">string</span><span style=3D"color:rg=
b(212,212,212)"> </span><span style=3D"color:rgb(86,156,214)">&amp;</span><=
span style=3D"color:rgb(156,220,254)">name</span><span style=3D"color:rgb(2=
12,212,212)">, </span><span style=3D"color:rgb(78,201,176)">size_t</span><s=
pan style=3D"color:rgb(212,212,212)"> </span><span style=3D"color:rgb(156,2=
20,254)">chan</span><span style=3D"color:rgb(212,212,212)"> =3D </span><spa=
n style=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(212,212=
,212)">) </span><span style=3D"color:rgb(86,156,214)">override</span><span =
style=3D"color:rgb(212,212,212)">;</span></div></div></div><div>usrp_sink.h=
<br><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);fon=
t-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;=
Droid Sans Fallback&quot;;font-weight:normal;font-size:14px;line-height:19p=
x;white-space:pre"><div><span style=3D"color:rgb(212,212,212)">    </span><=
span style=3D"color:rgb(86,156,214)">virtual</span><span style=3D"color:rgb=
(212,212,212)"> </span><span style=3D"color:rgb(86,156,214)">void</span><sp=
an style=3D"color:rgb(212,212,212)"> </span><span style=3D"color:rgb(220,22=
0,170)">set_tx_lo_dist</span><span style=3D"color:rgb(212,212,212)">(</span=
><span style=3D"color:rgb(86,156,214)">bool</span><span style=3D"color:rgb(=
212,212,212)"> </span><span style=3D"color:rgb(156,220,254)">enabled</span>=
<span style=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(86=
,156,214)">const</span><span style=3D"color:rgb(212,212,212)"> </span><span=
 style=3D"color:rgb(78,201,176)">std</span><span style=3D"color:rgb(212,212=
,212)">::</span><span style=3D"color:rgb(78,201,176)">string</span><span st=
yle=3D"color:rgb(212,212,212)"> </span><span style=3D"color:rgb(86,156,214)=
">&amp;</span><span style=3D"color:rgb(156,220,254)">name</span><span style=
=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(78,201,176)">=
size_t</span><span style=3D"color:rgb(212,212,212)"> </span><span style=3D"=
color:rgb(156,220,254)">chan</span><span style=3D"color:rgb(212,212,212)"> =
=3D</span><span style=3D"color:rgb(181,206,168)">0</span><span style=3D"col=
or:rgb(212,212,212)">) =3D </span><span style=3D"color:rgb(181,206,168)">0<=
/span><span style=3D"color:rgb(212,212,212)">; </span></div><div><span styl=
e=3D"color:rgb(106,153,85)"><br></span></div></div></div><div>usrp_sink_pyt=
hon.cc</div><div><div style=3D"color:rgb(212,212,212);background-color:rgb(=
30,30,30);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mon=
ospace,&quot;Droid Sans Fallback&quot;;font-weight:normal;font-size:14px;li=
ne-height:19px;white-space:pre"><div><span style=3D"color:rgb(212,212,212)"=
>         .</span><span style=3D"color:rgb(220,220,170)">def</span><span st=
yle=3D"color:rgb(212,212,212)">(</span><span style=3D"color:rgb(206,145,120=
)">&quot;set_tx_lo_dist&quot;</span><span style=3D"color:rgb(212,212,212)">=
,</span></div><div><span style=3D"color:rgb(212,212,212)">             &amp=
;</span><span style=3D"color:rgb(78,201,176)">usrp_sink</span><span style=
=3D"color:rgb(212,212,212)">::</span><span style=3D"color:rgb(220,220,170)"=
>set_tx_lo_dist</span><span style=3D"color:rgb(212,212,212)">,</span></div>=
<div><span style=3D"color:rgb(212,212,212)">             </span><span style=
=3D"color:rgb(78,201,176)">py</span><span style=3D"color:rgb(212,212,212)">=
::</span><span style=3D"color:rgb(78,201,176)">arg</span><span style=3D"col=
or:rgb(212,212,212)">(</span><span style=3D"color:rgb(206,145,120)">&quot;e=
nabled&quot;</span><span style=3D"color:rgb(212,212,212)">),</span></div><d=
iv><span style=3D"color:rgb(212,212,212)">             </span><span style=
=3D"color:rgb(78,201,176)">py</span><span style=3D"color:rgb(212,212,212)">=
::</span><span style=3D"color:rgb(78,201,176)">arg</span><span style=3D"col=
or:rgb(212,212,212)">(</span><span style=3D"color:rgb(206,145,120)">&quot;n=
ame&quot;</span><span style=3D"color:rgb(212,212,212)">),</span></div><div>=
<span style=3D"color:rgb(212,212,212)">             </span><span style=3D"c=
olor:rgb(78,201,176)">py</span><span style=3D"color:rgb(212,212,212)">::</s=
pan><span style=3D"color:rgb(78,201,176)">arg</span><span style=3D"color:rg=
b(212,212,212)">(</span><span style=3D"color:rgb(206,145,120)">&quot;chan&q=
uot;</span><span style=3D"color:rgb(212,212,212)">) </span><span style=3D"c=
olor:rgb(220,220,170)">=3D</span><span style=3D"color:rgb(212,212,212)"> </=
span><span style=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rg=
b(212,212,212)">,</span></div><div><span style=3D"color:rgb(212,212,212)"> =
            </span><span style=3D"color:rgb(220,220,170)">D</span><span sty=
le=3D"color:rgb(212,212,212)">(</span><span style=3D"color:rgb(78,201,176)"=
>usrp_sink</span><span style=3D"color:rgb(212,212,212)">, set_tx_lo_dist))<=
/span></div></div></div><div>usrp_sink_pydoc_template.h<br><div style=3D"co=
lor:rgb(212,212,212);background-color:rgb(30,30,30);font-family:&quot;Droid=
 Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&=
quot;;font-weight:normal;font-size:14px;line-height:19px;white-space:pre"><=
div><span style=3D"color:rgb(86,156,214)">static</span><span style=3D"color=
:rgb(212,212,212)"> </span><span style=3D"color:rgb(86,156,214)">const</spa=
n><span style=3D"color:rgb(212,212,212)"> </span><span style=3D"color:rgb(8=
6,156,214)">char</span><span style=3D"color:rgb(212,212,212)">* </span><spa=
n style=3D"color:rgb(156,220,254)">__doc_gr_uhd_usrp_sink_set_tx_lo_dist</s=
pan><span style=3D"color:rgb(212,212,212)"> =3D </span><span style=3D"color=
:rgb(206,145,120)">R&quot;doc()doc&quot;</span><span style=3D"color:rgb(212=
,212,212)">;</span></div><br><br></div></div><div><br></div><div>Assuming t=
he sink block is &quot;usrp_sink_0&quot;</div><div><br></div><div>snippet_0=
 code <br></div><div>&#39;Main-After Init&#39;<br></div><div># Turn on the =
ports</div><div>self.usrp_sink_0.set_tx_lo_dist(True,&quot;LO_OUT_0&quot;,0=
)<br></div><div># repeat the above for all ports needed &quot;LO_OUT_&lt;N&=
gt;&quot;<br><br></div><div>snippet_1<br></div><div>&#39;Main-After Stop&#3=
9;</div><div># Turn off the ports<br></div><div>self.usrp_sink_0.set_tx_lo_=
dist(False,&quot;LO_OUT_0&quot;,0)<br># repeat for all ports you enabled &q=
uot;LO_OUT_&lt;N&gt;&quot;<br><br></div><div>The other settings i found wer=
e needed in the gr-uhd block included:<br>Setting the start time to 1<br></=
div><div>Setting the Master Clock rate to 200MHz<br></div><div>CH0:<br>=C2=
=A0 LO Source =3D external<br></div><div>=C2=A0 LO Export =3D True<br></div=
><div>CH1:<br></div><div>=C2=A0 LO Source =3D external<br></div><div>=C2=A0=
 LO Export =3D False</div><div><br></div><div><br></div><div>I&#39;d like t=
o thank the community of users for doing all of this work, especially Marcu=
s Leech, Rob Kossler and Daniel Estevez<br><br></div><div><br></div><div><b=
r></div></div></div></div></div></div></div>

--00000000000072624805d6ac54a3--

--===============0273439063653782276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0273439063653782276==--
