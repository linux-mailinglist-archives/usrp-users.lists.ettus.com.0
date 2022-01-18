Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83969491E8D
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 05:36:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F0C63853DF
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 23:36:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qUwJUqF1";
	dkim-atps=neutral
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D1E39384AE4
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 23:35:10 -0500 (EST)
Received: by mail-lf1-f41.google.com with SMTP id b14so47281442lff.3
        for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 20:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+sziy0Yv4FKhhAKj9vQs4pFWmpOjh57i1W/olTSvaG8=;
        b=qUwJUqF1JeCb42a8FbMLohrOBWpVzWUuIuwsekrYbSIwqtN71AoIAwk390dVdjsk5N
         /YOqBgMlv0bKImY2a6QJakWKoEsORmYUi51ejSC3v82l4XzmhZOOWMlD5BhiyInVfafs
         tnCUl2UHIkzv32XYuQFdN+PRm0hasbWVXAiAUocrWuz+1wgvT6ITa1XFDhcXUoyTg3EF
         5xhOQ71GepeeuQdrY19BEdngR6BkJLqCSwFk1MaSgP1juDyQnHYQMYtYQa2B0NB1GlcW
         6CymAAElJOJRNPvbm8AZCIBqqepVg6LexVF9ICAItJyGfY83Ou0uulA0LDM0AkEcFcFZ
         nMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+sziy0Yv4FKhhAKj9vQs4pFWmpOjh57i1W/olTSvaG8=;
        b=qETT+cqs/JZly1rNR/ZAjBrGduv9VWyvf5IJRpZcWK6K34FVQd0+H2wdgU+Q14fVxx
         2ecKMsPWJu+iv1lATr1LOhkYM63xMA8EFOERIRdg2uJnzzGeWiTNnl7348RGleT/MPVo
         IjX1G1Bf6/W5ZLhpB23bE3nqnxt+ynGtn9tVQH05ZTcjoX+7Ypmt1NdbI1q5ixJx+0kO
         HufVoiC83RzuKnvK5jvKBfcDv42PvH/ymga9CLN1pTndkT99do/xLGAt4+vq+HudA1ma
         QgFNIgTuUqZXWuyuuzn5ija+KcLBK8B4I5Ognvq7rD/ZPFjzNH+smx0mTm+j6BQdhkfn
         tD0w==
X-Gm-Message-State: AOAM530NF3JdhnsCCZKQUwL8yVMJBh8CTj76+qGWC247L/u6+FFDigrD
	SkY1EdrxfOeLiD677OXlzPWlqypoxB9ATHioJXQ=
X-Google-Smtp-Source: ABdhPJyu/+k6VX23iw3s01hRZDOEVoSwXQD9YOFHabXbKe0ZSKvEoqrIpb7i38coEfqcI2MQJGl4RiM4c9jU/YPIF9Y=
X-Received: by 2002:a2e:b608:: with SMTP id r8mr10000411ljn.294.1642480509178;
 Mon, 17 Jan 2022 20:35:09 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com> <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
In-Reply-To: <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Mon, 17 Jan 2022 23:34:58 -0500
Message-ID: <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
	GNURadio Discussion List <discuss-gnuradio@gnu.org>
Message-ID-Hash: U54PT2UHWOOKVMFVLU75CJ3HH6J42X7P
X-Message-ID-Hash: U54PT2UHWOOKVMFVLU75CJ3HH6J42X7P
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U54PT2UHWOOKVMFVLU75CJ3HH6J42X7P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3239332873437370332=="

--===============3239332873437370332==
Content-Type: multipart/alternative; boundary="0000000000004ce17f05d5d3cbc9"

--0000000000004ce17f05d5d3cbc9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Posting on both GNURadio and USRP lists here, since my application overlaps
both gr-uhd/GNURadio and the UHD API.
The top-level question is, can gr-uhd support all the necessary
N321-specific commands necessary to export the TX LO from RF0 to RF1? That
would include running the command to set the 1x4 splitter. That's the one
in question.

get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/=
los/lo1/lo_distribution/LO_OUT_0/export").set(true)

If not, Marcus suggested using a python snippet. I've used that with RFNoC
before, but how would that work?
I'm guessing it would be an "after-init" and then call the python API for
the above (if that command is supported)?

Thanks

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

--0000000000004ce17f05d5d3cbc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Posting on both GNURadio and USRP li=
sts here, since my application overlaps both gr-uhd/GNURadio and the UHD AP=
I.</div><div>The top-level question is, can gr-uhd support all the necessar=
y N321-specific commands necessary to export the TX LO from RF0 to RF1? Tha=
t would include running the command to set the 1x4 splitter. That&#39;s the=
 one in question.<br><br><font face=3D"monospace">get_device()-&gt;get_tree=
()-&gt;access&lt;bool&gt;(&quot;mboards/0/dboards/A/tx_frontends/0/los/lo1/=
lo_distribution/LO_OUT_0/export&quot;).set(true)</font></div><div><br></div=
><div>If not, Marcus suggested using a python snippet. I&#39;ve used that w=
ith RFNoC before, but how would that work?<br></div><div>I&#39;m guessing i=
t would be an &quot;after-init&quot; and then call the python API for the a=
bove (if that command is supported)?<br></div></div><div><br></div><div>Tha=
nks<br></div><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Jan 14, 2022 at 5:32 PM Marcus D. Leech &lt;<a hr=
ef=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
</blockquote></div></div>

--0000000000004ce17f05d5d3cbc9--

--===============3239332873437370332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3239332873437370332==--
