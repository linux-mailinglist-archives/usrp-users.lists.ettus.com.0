Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B100453B5B
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 21:59:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12DB2384543
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 15:59:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ekwtS2C0";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 31D93380D29
	for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 15:59:03 -0500 (EST)
Received: by mail-oi1-f179.google.com with SMTP id u74so1280470oie.8
        for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 12:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fN4MhSNcNcu6GoWEapP5XwxP1XdAiu/I5axJQk+zFPE=;
        b=ekwtS2C0Rdw/GRiPJ6Q0FNhAJktplL05awXZ2aGbwR4kbKOhRHuIerf5wrYaa09KM2
         NKsPFX/q6oIETcSb5Orr3rIMNygFisAd4BImNL9keRTCxOaGCmdvXWHM7P+b4G4e3ugC
         OtVEh+bhNyF7em4joN/Y+0ZfGiBesHe/ZKbeyEEYiKf/tfRRchAwMfZlPkWD1dy5ggV2
         VLHSt7Wekh0XFlLdYGgG70T0CwtOypy+bBqDoKB4YTh4jgvlJHQg86mcppZVlakDKQkg
         IUMUeT1ZnND5FodeAWV7QglOuxbPwBm69e94HxXx3uaRFnql3HGvDzg68lPxcOGmSJH1
         11xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fN4MhSNcNcu6GoWEapP5XwxP1XdAiu/I5axJQk+zFPE=;
        b=ZfX1HAVSeo9ouw/e7IbA+aLQDcKp1dhyeQnly0ZFyBxoGHut/nCcPOQEd+/R8JiVJ4
         8dv3XGPzjzE7wYGc7zhkp72SWh0/CzYvh4YVB2GnhIUPqeGMTsVNflcXK+QcruYTL3E0
         1CHZ9M0d0nYYcPf3SLLM33sX2xNZGCDrnRSILVFJwn6QHsYgb1SmJ3U4nTqeVeM084xz
         ic9CkF4VUvc7jg0v8DtHseSKsRDLynyHu+Wx0ir58EKjYwU9O9ET70krqI8uCqad7G5U
         RT4/IZrRcOljMxQdwx/pG//a+UcKKj8aSE0za0iHcOmAPKWR3sOYTdKvkep6JGkQ0wNH
         HT+A==
X-Gm-Message-State: AOAM532k7PHgn6DOcc2GwIY9JJ5Miwvt5U4PnTkuEWzJUJieJGuqowWY
	JeGd+vvmlf57s7aCOXSG06zI8E8oR9SHvF4ldNhE0w==
X-Google-Smtp-Source: ABdhPJyM4HVR0orBEw2Dt+a5TuN4jJT/MKonGcZixv9cQmn2YdufKRCNkBZA/4shtq2Ok9UURBUPoOSPze15M0A9aNo=
X-Received: by 2002:a05:6808:1919:: with SMTP id bf25mr9347965oib.33.1637096342018;
 Tue, 16 Nov 2021 12:59:02 -0800 (PST)
MIME-Version: 1.0
References: <d636bd419e2548878b27baeacbca4b39@gmv.com> <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com> <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
In-Reply-To: <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 16 Nov 2021 15:58:51 -0500
Message-ID: <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NVFVYFQ3AWGL5VNQVIXRRW5Z3BW5HWY3
X-Message-ID-Hash: NVFVYFQ3AWGL5VNQVIXRRW5Z3BW5HWY3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Guillermo Ortas Delgado <g.ortas@gmv.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NVFVYFQ3AWGL5VNQVIXRRW5Z3BW5HWY3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5227011257352216710=="

--===============5227011257352216710==
Content-Type: multipart/alternative; boundary="000000000000ee065905d0ee31c9"

--000000000000ee065905d0ee31c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This page <https://doc.dpdk.org/guides-18.11/nics/bnxt.html> indicates it
has some support.

On Tue, Nov 16, 2021 at 12:30 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-16 03:11, Guillermo Ortas Delgado wrote:
>
> No reason, just testing for the maximum supported MTU by DPDK. Any higher
> than that will throw an error. Setting the parameter to 9000 doesn=E2=80=
=99t make
> any difference wrt to 9600, or even a lower value in my case.
>
>
>
> Also, I have observed this behavior when trying to increase the descripto=
rs
>
> =C2=B7         dpdk_num_mbufs=3D4096 and dpdk_num_desc=3D2048 =C3=A0 benc=
hmark_rate
> fails to launch (gets stuck after [INFO] [X300] X300 initialization
> sequence...)
>
> =C2=B7         dpdk_num_mbufs=3D8192 and dpdk_num_desc=3D2048 =C3=A0 benc=
hmark_rate
>  launches and completes, but throws plenty of errors in the process sayin=
g bnxt_rx_pkt():
> mbuf alloc failed, dropping plenty of samples (i.e. 3%) even at 25Msps
> and timeouts happen.
>
> =C2=B7         dpdk_num_mbufs=3D32768 and dpdk_num_desc=3D4096 =C3=A0 ben=
chmark_rate
> launches and completes with no error messages, but drops plenty of sample=
s
> (i.e. 3%) even at 25Msps, but no timeouts.
>
>
>
> All of the above happens with the [INFO] [X300] Maximum frame size: 1556
> bytes message that started this thread.
>
>
>
> bnxt is the driver that DPDK loads to manage the eight (8) Broadcom
> BCM57414 NetXtreme-E 10Gb network interfaces that I have to manage my fou=
r
> (4) USRPs X310. For this test I=E2=80=99m just using two interfaces for a=
 single
> x310.
>
>
>
> Any ideas?
>
>
>
> Best,
>
> Guillermo
>
>
>
>
>
>
>
>
>
> *So, for DPDK 18.11, which is the version supported by current UHD, I see
> NO evidence that DPDK even supports the bnxt driver--only Intel and
> Mellanox. But I understand that can be mis-leading.  The fact that it was
> never tested against a given 10G NIC driver doesn't mean that it won't
> work. https://doc.dpdk.org/guides-19.08/rel_notes/release_18_11.html#
> <https://doc.dpdk.org/guides-19.08/rel_notes/release_18_11.html#> *
>

--000000000000ee065905d0ee31c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://doc.dpdk.org/guides-18.11/nics/bnxt.htm=
l">This page</a> indicates it has some support.</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 16, 2021 at 12:3=
0 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-16 03:11, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">No reason, just testi=
ng for the maximum
            supported MTU by DPDK. Any higher than that will throw an
            error. Setting the parameter to 9000 doesn=E2=80=99t make any
            difference wrt to 9600, or even a lower value in my case.<u></u=
><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Also, I have observed=
 this behavior when trying
            to increase the descriptors<u></u><u></u></span></p>
        <p><span style=3D"font-size:11pt;font-family:Symbol;color:rgb(31,73=
,125)" lang=3D"EN-US"><span>=C2=B7<span style=3D"font:7pt &quot;Times New R=
oman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span style=3D"font-size:10pt;font-famil=
y:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">dpdk_num_mbufs=3D4096</span=
><span style=3D"font-size:10pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)" lang=3D"EN-US">
          </span><span style=3D"font-size:11pt;font-family:Calibri,sans-ser=
if;color:rgb(31,73,125)" lang=3D"EN-US">and
          </span><span style=3D"font-size:10pt;font-family:Consolas;color:r=
gb(31,73,125)" lang=3D"EN-US">dpdk_num_desc=3D2048</span><span style=3D"fon=
t-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN=
-US">
          </span><span style=3D"font-family:Wingdings" lang=3D"EN-US">=C3=
=A0</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;colo=
r:rgb(31,73,125)" lang=3D"EN-US">
          </span><span style=3D"font-size:10pt;font-family:Consolas;color:r=
gb(31,73,125)" lang=3D"EN-US">benchmark_rate</span><span style=3D"font-size=
:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"> =
fails to launch (gets stuck after </span><span style=3D"font-size:10pt;font=
-family:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">[INFO] [X300] X300 in=
itialization sequence...</span><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">)<u></u><u></u></span=
></p>
        <p><span style=3D"font-size:11pt;font-family:Symbol;color:rgb(31,73=
,125)" lang=3D"EN-US"><span>=C2=B7<span style=3D"font:7pt &quot;Times New R=
oman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span style=3D"font-size:10pt;font-famil=
y:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">dpdk_num_mbufs=3D8192</span=
><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)" lang=3D"EN-US"> and </span><span style=3D"font-size:10pt;font-fami=
ly:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">dpdk_num_desc=3D2048</span=
><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)" lang=3D"EN-US">
          </span><span style=3D"font-size:11pt;font-family:Wingdings;color:=
rgb(31,73,125)" lang=3D"EN-US">=C3=A0</span><span style=3D"font-size:11pt;f=
ont-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">
          </span><span style=3D"font-size:10pt;font-family:Consolas;color:r=
gb(31,73,125)" lang=3D"EN-US">benchmark_rate</span><span style=3D"font-size=
:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"> =
=C2=A0launches and completes, but throws plenty of
            errors in the process saying </span><span style=3D"font-size:10=
pt;font-family:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">bnxt_rx_pkt():=
 mbuf alloc failed</span><span style=3D"font-size:11pt;font-family:Calibri,=
sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">, dropping plenty of sample=
s (i.e. 3%) even at
            25Msps and timeouts happen.<u></u><u></u></span></p>
        <p><span style=3D"font-size:11pt;font-family:Symbol;color:rgb(31,73=
,125)" lang=3D"EN-US"><span>=C2=B7<span style=3D"font:7pt &quot;Times New R=
oman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span style=3D"font-size:10pt;font-famil=
y:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">dpdk_num_mbufs=3D32768</spa=
n><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31=
,73,125)" lang=3D"EN-US"> and </span><span style=3D"font-size:10pt;font-fam=
ily:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">dpdk_num_desc=3D4096</spa=
n><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31=
,73,125)" lang=3D"EN-US">
          </span><span style=3D"font-size:11pt;font-family:Wingdings;color:=
rgb(31,73,125)" lang=3D"EN-US">=C3=A0</span><span style=3D"font-size:11pt;f=
ont-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">
          </span><span style=3D"font-size:10pt;font-family:Consolas;color:r=
gb(31,73,125)" lang=3D"EN-US">benchmark_rate</span><span style=3D"font-size=
:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"> =
launches and completes with no error messages,
            but drops plenty of samples (i.e. 3%) even at 25Msps, but no
            timeouts.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            <u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">All of the above happ=
ens with the
          </span><span style=3D"font-size:10pt;font-family:Consolas;color:r=
gb(31,73,125)" lang=3D"EN-US">[INFO] [X300] Maximum frame size: 1556 bytes<=
/span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rg=
b(31,73,125)" lang=3D"EN-US"> message that started this thread.<u></u><u></=
u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas;color:rgb(31,73,125)" lang=3D"EN-US">bnxt</span><span style=3D"font-=
size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-U=
S"> is the driver that DPDK loads to manage the
            eight (8) Broadcom BCM57414 NetXtreme-E 10Gb network
            interfaces that I have to manage my four (4) USRPs X310. For
            this test I=E2=80=99m just using two interfaces for a single x3=
10.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Any ideas?<u></u><u><=
/u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)">Best,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)">Guillermo<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
        <br>
      </div>
    </blockquote>
    <b>So, for DPDK 18.11, which is the version supported by current
      UHD, I see NO evidence that DPDK even supports the bnxt
      driver--only Intel and Mellanox.<br>
      <br>
      But I understand that can be mis-leading.=C2=A0 The fact that it was
      never tested against a given 10G NIC driver doesn&#39;t mean that it
      won&#39;t work.<br>
      <br>
      <a href=3D"https://doc.dpdk.org/guides-19.08/rel_notes/release_18_11.=
html#" target=3D"_blank">https://doc.dpdk.org/guides-19.08/rel_notes/releas=
e_18_11.html#</a><br>
      <br>
    </b>
  </div>
</blockquote></div>

--000000000000ee065905d0ee31c9--

--===============5227011257352216710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5227011257352216710==--
