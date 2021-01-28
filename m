Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 554CD3069BC
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jan 2021 02:10:20 +0100 (CET)
Received: from [::1] (port=59466 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4vp9-0001H8-Lr; Wed, 27 Jan 2021 20:10:15 -0500
Received: from mail-vs1-f42.google.com ([209.85.217.42]:36242)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1l4vp5-0001CQ-Dq
 for USRP-users@lists.ettus.com; Wed, 27 Jan 2021 20:10:11 -0500
Received: by mail-vs1-f42.google.com with SMTP id b5so2189751vsh.3
 for <USRP-users@lists.ettus.com>; Wed, 27 Jan 2021 17:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gfof51RmE/KGGH85uUzQE6Q8r9IO3F5nkXpTa1gSZ3k=;
 b=m8bl32G22NtRLwPCNMYOK7vXGbh7bxz7JDPZCs5mjuj55rel7SztCxmfwo3HcWBvzT
 NMIT55ZMBbMLP1sNF1YorE4C48N0YWfkVbQ/JMDFrfRFAIbacJBtT3yQShYXMo1+xGbE
 xuBHVOVU2zKDDmipYPlGZM1fM9yMA9dIwtJgSrldPMcBV70cShorMGA2KkX9oLPOMsRb
 xVi8drfXW+mrQJRRJAyI2mCEXcbzI6NKsp9WFp0ZKqT7iqjIEJ5rfJR495zHBOUoQ8in
 I2N2us40TXJqhAuUlt7BRIaRIMCiHML9mqzHI2Oo8uvYrQp0KyV9hG2NZieCOZeuvbPa
 9u/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gfof51RmE/KGGH85uUzQE6Q8r9IO3F5nkXpTa1gSZ3k=;
 b=n/ebhWQwkcDcJSCCjFkuLYPFWf/8tdYSrPhlYQsLEsLp8YSMO8eoI2XWXcpPWyCzk4
 h8YwqUgXGyNt/UNLBOMoAIIgd44TAkm1jBeFAaMzRTXcpcVQeaFENpXgbOinIyYlaz4F
 9WDqkcQpyzvbDMqCMVtCa5LWJgsdQgAMOfxQlIX+Rlt0VQmJKZi0yjk5+Vp0MHIlYjHn
 31OVGHi5NK4wmTzTtY25QuGCSbjZdQ8idgAUu5ZKv96S0nSEEFgEauiVYWmQKba07hGh
 sXTlb6BarsxpTMl/eFMJpWWxqnBuKeW7S9srr9exqRyENUm59z9CgL1T5SSpTogutZrG
 oa5w==
X-Gm-Message-State: AOAM53117BuqN9SGcPKBs9DlNyo4YZgPH68ROcdZcWF95B/zd6/Ua4mG
 toYfOYQd4sAQl5NdsnBwpD+QJfN7eIYuU+lrTPEyDrhBvxzD0goG
X-Google-Smtp-Source: ABdhPJwOufOV91aKAWRaDdM4Auf8n0saoYNH8FqEcWyxlmtFMnlqViX1SkZX1Bz/pn5kALyWUBg4I1Rajh834HqliyE=
X-Received: by 2002:a67:ff83:: with SMTP id v3mr9923188vsq.8.1611796170541;
 Wed, 27 Jan 2021 17:09:30 -0800 (PST)
MIME-Version: 1.0
References: <becd5987-82b5-51c6-0f7d-539ec8d104d4@apeiron.net>
In-Reply-To: <becd5987-82b5-51c6-0f7d-539ec8d104d4@apeiron.net>
Date: Wed, 27 Jan 2021 20:08:54 -0500
Message-ID: <CAL7q81v7COTZnSjKD6kBKVx0c5vTbVx0_8=Dy5AfsqTo1h9d+w@mail.gmail.com>
To: Geoffrey Mainland <mainland@apeiron.net>
Cc: usrp-users <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] Burst transmissions consistently lead to hard lock
 up on X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============6926508450171972181=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6926508450171972181==
Content-Type: multipart/alternative; boundary="00000000000032487d05b9eb8ac6"

--00000000000032487d05b9eb8ac6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geoff,

There has been a lot of investigation into a potential bug in the DmaFIFO
RFNoC block logic, however it has been very difficult to consistently
reproduce the issue. If you are able to provide code to reproduce the
issue, that would be a huge help. If you have access to Vivado, you can
also try applying the fix from this post and see if that helps:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/057=
721.html
.

Jonathon

On Tue, Jan 26, 2021 at 1:56 PM Geoffrey Mainland via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I=E2=80=99m encountering a consistently reproducible problem on the X310 =
platform
> that causes the radio to lock up to the point where I have to power cycle
> it or flash it over JTAG to return it to a working state.
>
> My application is DragonRadio
> <https://github.com/drexelwireless/dragonradio>, Drexel=E2=80=99s DARPA S=
C2
> competition radio. This radio can use either a TDMA MAC, which uses timed
> TX bursts with a time spec, or an FDMA MAC, which uses TX bursts without =
a
> time spec (has_time_spec is false). The problem occurs in both cases, so
> it doesn=E2=80=99t seem to be related to the use of timed bursts.
>
> After several minutes of data transfer, one of the X310 radios will
> produce the following error and lock up:
>
> EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no response packet =
- AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [w=
ith uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D lon=
g unsigned int]
>   at /root/dragonradio/dependencies/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>
> At this point, I have to power cycle the radio or flash it over JTAG to
> use it again.
>
> I am currently using UHD 3.15, but I have tried every UHD release since
> 3.9 (except 3.12), and the same problem occurs. UHD 4 fails too, but the
> error is slightly different:
>
> [ERROR] [X300] 192.168.40.2: x300 fw communication failure #1
> EnvironmentError: IOError: x300 fw peek32 - reply timed out
> terminate called after throwing an instance of 'uhd::assertion_error'
>   what():  AssertionError: reply.sequence =3D=3D request.sequence
>   in virtual uint32_t x300_ctrl_iface_enet::__peek32(uhd::wb_iface::wb_ad=
dr_type)
>   at /root/dragonradio/dependencies/uhd/host/lib/usrp/x300/x300_fw_ctrl.c=
pp:165
>
> The problem *does not* occur with UHD 3.9.
>
> Both MACs only end a burst when they run out of data to send continuously=
,
> and keeping them fed prevents the hang.
>
> My problem seems to be the same that is described in the closed GitHub UH=
D issue
> 203 <https://github.com/EttusResearch/uhd/issues/203>. As Brian Padalino
> suggests in that issue, resizing the DRAM FIFO so latency is reasonable a=
nd
> then zero stuffing the TX pipeline also prevents the radio from locking u=
p.
> I have not tried skip_dram=3D1. I also haven=E2=80=99t figured out how to=
 resize
> the DRAM FIFO with UHD 4, so I don=E2=80=99t know if the work-around appl=
ies to
> that version.
>
> This problem is 100% reproducible with a few minutes (1=E2=80=9320) of ru=
n time.
> Constructing a minimal failing example would be a lot of work, but the
> radio I=E2=80=99m using is open source, so anyone should be able to repro=
duce the
> problem (I=E2=80=99d be happy to provide additional instructions for doin=
g so).
>
> Has anyone else seen this kind of behavior? There definitely seems to be =
a
> bug in the DRAM FIFO.
>
> Thanks,
> Geoff
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000032487d05b9eb8ac6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Geoff,<div><br></div><div>There has=C2=A0been a lot of =
investigation into a potential bug in the DmaFIFO RFNoC block logic, howeve=
r it has been very difficult to consistently reproduce the issue. If you ar=
e able to provide code to reproduce the issue, that would be a huge help. I=
f you have access to Vivado, you can also try applying the fix from this po=
st and see if that helps:=C2=A0<a href=3D"http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2018-August/057721.html">http://lists.ettus.com/=
pipermail/usrp-users_lists.ettus.com/2018-August/057721.html</a>.</div><div=
><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 26, 2021 at 1:56 PM Geoffrey Main=
land via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
 =20

   =20
 =20
  <div>
    <div lang=3D"x-unicode">
      <p>I=E2=80=99m encountering a consistently reproducible problem on th=
e
        X310 platform that causes the radio to lock up to the point
        where I have to power cycle it or flash it over JTAG to return
        it to a working state.</p>
      <p>My application is <a href=3D"https://github.com/drexelwireless/dra=
gonradio" target=3D"_blank">DragonRadio</a>,
        Drexel=E2=80=99s DARPA SC2 competition radio. This radio can use ei=
ther
        a TDMA MAC, which uses timed TX bursts with a time spec, or an
        FDMA MAC, which uses TX bursts without a time spec (<code>has_time_=
spec</code>
        is false). The problem occurs in both cases, so it doesn=E2=80=99t =
seem
        to be related to the use of timed bursts.</p>
      <p>After several minutes of data transfer, one of the X310 radios
        will produce the following error and lock up:</p>
      <pre>EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no respons=
e packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double=
) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D=
 long unsigned int]
  at /root/dragonradio/dependencies/uhd/host/lib/rfnoc/ctrl_iface.cpp:151</=
pre>
      <p>At this point, I have to power cycle the radio or flash it over
        JTAG to use it again.</p>
      <p>I am currently using UHD 3.15, but I have tried every UHD
        release since 3.9 (except 3.12), and the same problem occurs.
        UHD 4 fails too, but the error is slightly different:</p>
      <pre>[ERROR] [X300] <a href=3D"http://192.168.40.2" target=3D"_blank"=
>192.168.40.2</a>: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw peek32 - reply timed out
terminate called after throwing an instance of &#39;uhd::assertion_error&#3=
9;
  what():  AssertionError: reply.sequence =3D=3D request.sequence
  in virtual uint32_t x300_ctrl_iface_enet::__peek32(uhd::wb_iface::wb_addr=
_type)
  at /root/dragonradio/dependencies/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp=
:165</pre>
      <p>The problem <strong>does not</strong> occur with UHD 3.9.</p>
      <p>Both MACs only end a burst when they run out of data to send
        continuously, and keeping them fed prevents the hang.</p>
      <p>My problem seems to be the same that is described in the closed
        GitHub UHD <a href=3D"https://github.com/EttusResearch/uhd/issues/2=
03" target=3D"_blank">issue
          203</a>. As Brian Padalino suggests in that issue, resizing
        the DRAM FIFO so latency is reasonable and then zero stuffing
        the TX pipeline also prevents the radio from locking up. I have
        not tried <code>skip_dram=3D1</code>. I also haven=E2=80=99t figure=
d out
        how to resize the DRAM FIFO with UHD 4, so I don=E2=80=99t know if =
the
        work-around applies to that version.</p>
      <p>This problem is 100% reproducible with a few minutes (1=E2=80=9320=
) of
        run time. Constructing a minimal failing example would be a lot
        of work, but the radio I=E2=80=99m using is open source, so anyone
        should be able to reproduce the problem (I=E2=80=99d be happy to pr=
ovide
        additional instructions for doing so).</p>
      <p>Has anyone else seen this kind of behavior? There definitely
        seems to be a bug in the DRAM FIFO.</p>
      <p>Thanks,<br>
        Geoff</p>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000032487d05b9eb8ac6--


--===============6926508450171972181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6926508450171972181==--

