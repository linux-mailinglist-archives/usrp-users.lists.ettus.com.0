Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C8C48F2A0
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 23:47:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77D1B385E32
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 17:47:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="onFvMMmv";
	dkim-atps=neutral
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 72F42385C9D
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 17:46:42 -0500 (EST)
Received: by mail-lf1-f53.google.com with SMTP id bu18so11837230lfb.5
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 14:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8QVOxQKItERVM2ozyAnhQIbiSYRAz3fRBr7mcJhyF7M=;
        b=onFvMMmvecDhKn9zWEreC42YGVvFCPrte5dqdGACunLGtFomljGA3fUi7lwp/FPxCN
         AGMtzAh28IrAdhwreTr59OYm3Z8ynT/A6f1BPm7zgQyV/APRbKhFt6zxCJdwHGnYAekU
         mkRkEq0BsbX/5ii1M05iXT/2vacfEfTIXOepPRBzzBW1wFOGdSibZ5wfpR+B4sy4ywY4
         FjPE+18hZ/YJsfSP/+nJMnRCFW1gbXdOSpGMMP6H5m6DYO7L++n5Pv7iFGNQCfFGBUez
         6cEN1a5MdKYudjEjY89PcCo4rjr4uvMWTQbeN5MJ71lqjDWcJE6BWBBNgMXmiZegbA9j
         qcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8QVOxQKItERVM2ozyAnhQIbiSYRAz3fRBr7mcJhyF7M=;
        b=8PP0/uvwI4nPE2vEWLtI0aLB2PpGbc3AXyE7iF8MK7ZfN3Xn24Swvg7bcRkgINmx/d
         0Px9BsPr80oHPjRWKM9K78kIj1WHALEo1J/6xRsjCkLg3aRzuB6Hb9c/fm5guWfd0Gy3
         /I0dnV9+NA3L0nzJ6BLPLWJgo+hONS+8ZeEqL2q7w0sSqzCnN9ivt7hmI8NcMTCyqM4x
         /qnARbpwXGDL7NPCYNm4JlrNQX09U8RCBp6MmNrvU++McIVauwjLBx0XSVpIJcM1xltr
         HD8yv2znWcRrSb0CXBxM5El7vNXS29vUXeP6NTuoPBqXGJAJv21FTflfbRUH0FTe8UKv
         w+9w==
X-Gm-Message-State: AOAM533EJgDGUOZUKNrnX/L1e/kaDFz5QoaCpmSMTeuRCcmJnI7DrErH
	v1L0XENhawLp50Fk9GxOanR4OAhUysSIvoZCip8=
X-Google-Smtp-Source: ABdhPJxNTlet4xRk4S8NzwEK4OJ1QcESP3r8JiUcX2XNHUU6ukZV2jCe2uIlH1merPKmVlK56NSvpQFN/63EL8CqbJk=
X-Received: by 2002:ac2:568e:: with SMTP id 14mr8567095lfr.659.1642200401137;
 Fri, 14 Jan 2022 14:46:41 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com> <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
In-Reply-To: <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 14 Jan 2022 17:46:30 -0500
Message-ID: <CACwKM9+jMv6Y61b6cPa-Pp77vY49ruZ2wrB4psy_Rp4JJwkiMg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: S52C2A7ORSZR6TUANCMQNQTSJBVFGI4C
X-Message-ID-Hash: S52C2A7ORSZR6TUANCMQNQTSJBVFGI4C
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S52C2A7ORSZR6TUANCMQNQTSJBVFGI4C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6835536198335538153=="

--===============6835536198335538153==
Content-Type: multipart/alternative; boundary="0000000000008f53ab05d59293c3"

--0000000000008f53ab05d59293c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

so, the LO export is confirmed to be going out of TX OUT0 from the
screenshot i sent before.
 I think i need to come back to this on monday





On Fri, Jan 14, 2022 at 5:32 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-14 17:30, Rob Kossler wrote:
>
> These thare the UHD commands. I don't know how these translate to gnuradi=
o.
>
> % set both LO sources to use external
> set_tx_lo_source(=E2=80=9Cexternal=E2=80=9D, =E2=80=9Clo1=E2=80=9D, 0)
> set_tx_lo_source(=E2=80=9Cexternal=E2=80=9D, =E2=80=9Clo1=E2=80=9D, 1)
>
> % export the internal LO to the 1:4 splitter
> set_tx_lo_export_enabled(true, =E2=80=9Clo1=E2=80=9D, 0)
>
> % enable the 1:4 splitter output port
>
> get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/=
0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
>
> I don't think the current GR code has support for controlling the
> splitter, so a "code snippet" would likely be required.
>
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>

--0000000000008f53ab05d59293c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>so, the LO export is confirmed to be going out of TX =
OUT0 from the screenshot i sent before. <br></div>=C2=A0I think i need to c=
ome back to this on monday<br><br><div><br></div><div><br></div><br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Jan 14, 2022 at 5:32 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-14 17:30, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div><font face=3D"monospace">These thare the UHD commands. I
            don&#39;t know how these translate to gnuradio.</font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">% set both LO sources to use
            external</font></div>
        <font face=3D"monospace">set_tx_lo_source(=E2=80=9Cexternal=E2=80=
=9D, =E2=80=9Clo1=E2=80=9D, 0)<br>
        </font>
        <div><font face=3D"monospace">set_tx_lo_source(=E2=80=9Cexternal=E2=
=80=9D, =E2=80=9Clo1=E2=80=9D,
            1)<br>
          </font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">% export the internal LO to the 1:4
            splitter</font></div>
        <div><font face=3D"monospace">set_tx_lo_export_enabled(true,
            =E2=80=9Clo1=E2=80=9D, 0)<br>
          </font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">% enable the 1:4 splitter output
            port</font></div>
        <div><font face=3D"monospace">get_device()-&gt;get_tree()-&gt;acces=
s&lt;bool&gt;(&quot;mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribut=
ion/LO_OUT_0/export&quot;).set(true)</font><br>
        </div>
      </div>
      <br>
    </blockquote>
    I don&#39;t think the current GR code has support for controlling the
    splitter, so a &quot;code snippet&quot; would likely be required.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div class=3D"gmail_quote">
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</=
a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>
</blockquote></div>

--0000000000008f53ab05d59293c3--

--===============6835536198335538153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6835536198335538153==--
