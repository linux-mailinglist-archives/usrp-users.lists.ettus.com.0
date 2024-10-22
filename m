Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 265849A9DAF
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 10:58:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0541A38546C
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 04:58:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729587538; bh=7/lAMgBgKzKnSZLRqJmSbNw+DBfneRkhQjYWBhGV4dI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MrE8H6gclxr2EULhu7iWCQPZ8h0sWcTj/COH8OMlbY0qBxP1NloGfErKhU8sEJrPk
	 hZHqypdch3CyZcPp1Dl/oevjw8vKFDAS5WM2biC+5UuysxJmJ7FJ1wRcfhVC5VLHbM
	 afftxkdZ1Mfv/RpMk0W5fE4JxISOGmQdLBSke3OcUXw7VsRqy/+gVD5X9udjM5iclg
	 ULUwIMynD3UiOjmx47bpSV6dPmZg1ZX+Za09djmjGHCNvWIVMU6fbKOKB6LyMY22X1
	 ArbZlqiGvs/lPI7JUeOSuGWvkKofjsZSE2WXVyvBDuufoP1DMWRSIC/4WMgjWhciWx
	 87MXTCIkDh+Rg==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 40EF83852E3
	for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 04:58:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="PCRgi1WS";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5cb15b84544so3103793a12.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 01:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729587511; x=1730192311; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1md2DHQmNkKa9aHo8fP2gu+H2DiQsy3Lu1426Q4QQr0=;
        b=PCRgi1WSeYn4GWtyNjgz/R2EVrMYFCi2DxH+0ti7D814V2cWWPvc6bR1fNQOvS2yJN
         12GG5JI+sJJpkmP5NErfHmmHpUu0s5seX6ZgFf3LhUJESttiRkLR+xMqBw5a0Ko5XTkx
         Geu+hz+NetAEe6OgGg3zHDS5GpIn7nE+71VojrjxAwQvJu22YcyJAZHdrisOCLEBT85E
         QtQt49C7oBODKes4DB53Sv0/WSfB55Odqve/OGSdq4QioXyqcNQBROHJdro2CTXsHmCK
         yLP8suw1IHIkUxOqiDR86NVvyIfuzo+dg+xhgb5mcfkEHeKcKfni2PjPzD1kXK238RKM
         7QjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729587511; x=1730192311;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1md2DHQmNkKa9aHo8fP2gu+H2DiQsy3Lu1426Q4QQr0=;
        b=My+QZ8u+ld/mdrFwBeTT1NT1wtIDby/Jg1y1iHOo1GGhA6h2eQZLXEKcDy/BjMgn4x
         JYEuY3H78sEBEvqbbMpXacYrBFpuQ8/HXSQMQPJ0hN+TFfCBAoyvWEUKtzAdEgQpCdEp
         BI96gnPNXkMap9VaLhUctZl/4JstZW3TiwqedOVN1O92dLdZ62m8pqksEj+QSYMUwUPp
         rep3Kj0JNnVW6itwsk0nWy48PybV7XoNo9fUFslDBbWtgxNzeShRgcODvTes0/3UMpvt
         USNQ4noxKiQudeKVoGorsyqTWdelH1OBr/sPm2eABqFriyfkMkqx7Hisj+JL0bxV7Q8v
         UrWw==
X-Gm-Message-State: AOJu0Yx/dMAzpmFEARUDbeJl7LyS5AUyI50jctJd/m08t8D7hU2Pw0RD
	nuHv+dBR2PLp7nqR2fTEWJD97tsKjkYrHHRM+VsOwNaQeQhjBuYYmIC+0jtCoLOTQI6bzNufCh6
	wDrE6PEO8txJzqWa7IdBgZUBF0xhVr6wEnajWbSYj
X-Google-Smtp-Source: AGHT+IGsiFBRCFu1OXnD2iCgQsLGnBlOyWs3HNIhxKza72/6rIj8v1Nw0Xd16lk15HewFNKW1oQbfFIgZxD6B/hdGKs=
X-Received: by 2002:a17:907:97c4:b0:a99:4c68:a03c with SMTP id
 a640c23a62f3a-a9a69a6719bmr1262080566b.22.1729587510897; Tue, 22 Oct 2024
 01:58:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=K0BGKQzHX=-vVc1dki_9e35YyE3hMcdc0fXGynZknvUH4xQ@mail.gmail.com>
In-Reply-To: <CAF=K0BGKQzHX=-vVc1dki_9e35YyE3hMcdc0fXGynZknvUH4xQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 22 Oct 2024 10:58:19 +0200
Message-ID: <CAFOi1A6jGhVk8aqzCxq23NyRnJf3p5yY=RXmVDzTNFkBZ-AwoA@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: IOVBJTD3OLW6UAWKZKRHI26IZYKNGLAF
X-Message-ID-Hash: IOVBJTD3OLW6UAWKZKRHI26IZYKNGLAF
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error on using RFNoC Digital Down convetor (DDC).
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IOVBJTD3OLW6UAWKZKRHI26IZYKNGLAF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1450895139078837213=="

--===============1450895139078837213==
Content-Type: multipart/alternative; boundary="000000000000320bb906250cf9d8"

--000000000000320bb906250cf9d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nidhi,

I was able to reproduce this error. It looks like running the equivalent
graph on the command-line example rfnoc_rx_to_file works; I'm not sure
what's up here.

If you like, you can report this on the github.com/ettusresearch/uhd issue
tracker, then you'll see what progress we make on this.

Thanks for reporting!

--M

On Sat, Oct 19, 2024 at 1:35=E2=80=AFPM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Hello,
>
> I am having USRP X300 device with following tool versions:
>
> Vivado 2021.1 - AR76780n,
> GNU radio version - v3.11.0.0git-820-g2adbd4ea
> UHD version - UHD_4.7.0.0-84-gbdada1ed
>
>
> I am trying to use the default example present in the GNU radio example
> folder *"rfnoc_radio_ddc.grc"*. *I* am  able to down convert the input
> signal with the desired frequency however on using frequency shift featur=
e
> it hives following error:
>
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError:
> Attempting to overwrite property `freq@USER:0' with a new value after it
> was locked!
> Traceback (most recent call last):
>   File "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_radio_ddc.py",
> line 330, in <module>
>     main()
>   File "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_radio_ddc.py",
> line 309, in main
>     tb.start()
>   File "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py",
> line 116, in start
>     top_block_start_unlocked(self._impl, max_noutput_items)
> RuntimeError: RfnocError: ResolveError: Attempting to overwrite property
> `freq@USER:0' with a new value after it was locked!
>
>
> I have used the default .bit file which includes DDC blocks. Please
> suggest how to resolve this.
>
>
>
>
>
>
>
> --
> Regards,
> *Nidhi Panda*
>
> *Cyronics Innovation Labs Pvt Ltd*
> #11, Electronics Co-op Estate
> Satara Road, Pune - 411009
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000320bb906250cf9d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nidhi,</div><div><br></div><div>I was able to repr=
oduce this error. It looks like running the equivalent graph on the command=
-line example rfnoc_rx_to_file works; I&#39;m not sure what&#39;s up here.<=
/div><div><br></div><div>If you like, you can report this on the <a href=3D=
"http://github.com/ettusresearch/uhd">github.com/ettusresearch/uhd</a> issu=
e tracker, then you&#39;ll see what progress we make on this.</div><div><br=
></div><div>Thanks for reporting!</div><div><br></div><div>--M<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sat, Oct 19, 2024 at 1:35=E2=80=AFPM Nidhi Panda &lt;<a href=3D"mailto:nidh=
i.panda@cyronics.com">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,<=
/div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div>=
<p dir=3D"auto">I am having USRP X300 device with following tool versions:<=
/p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p><p dir=3D"auto"><br></p><p>I am t=
rying to use the default example present in the GNU radio example folder <b=
>&quot;rfnoc_radio_ddc.grc&quot;</b>. <b>I</b> am=C2=A0 able to down conver=
t the input signal with the desired frequency however on using frequency sh=
ift feature it hives following error:</p><p><br></p><p>[WARNING] [0/Radio#0=
] Attempting to set tick rate to 0. Skipping.<br>[ERROR] [RFNOC::GRAPH::DET=
AIL] 0/DDC#0: RfnocError: ResolveError: Attempting to overwrite property `f=
req@USER:0&#39; with a new value after it was locked!<br>Traceback (most re=
cent call last):<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples=
/grc/rfnoc_radio_ddc.py&quot;, line 330, in &lt;module&gt;<br>=C2=A0 =C2=A0=
 main()<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples/grc/rfno=
c_radio_ddc.py&quot;, line 309, in main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=
=A0 File &quot;/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block=
.py&quot;, line 116, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(sel=
f._impl, max_noutput_items)<br>RuntimeError: RfnocError: ResolveError: Atte=
mpting to overwrite property `freq@USER:0&#39; with a new value after it wa=
s locked!</p><p><br></p><p>I have used the default .bit file which includes=
 DDC blocks. Please suggest how to resolve this.<br></p><p><br></p><p><br><=
/p><p><br></p><p><br></p></div></div></div></div><br clear=3D"all"><br><spa=
n class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr">Regards,<div><b>Nidhi Panda</b></div><div=
><span style=3D"color:rgb(136,136,136)"><font color=3D"#000000"><b><img wid=
th=3D"200" height=3D"43" src=3D"https://ci3.googleusercontent.com/mail-sig/=
AIorK4wydcZFixEg0Qccgx_ECRhBJmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZme=
LHAueDJVU"></b><br><b>Cyronics Innovation Labs Pvt Ltd</b><br></font></span=
></div><div><div><span style=3D"color:rgb(136,136,136)"><font color=3D"#000=
000">#11, Electronics Co-op Estate=C2=A0<br>Satara Road, Pune - 411009</fon=
t></span></div></div><div><br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000320bb906250cf9d8--

--===============1450895139078837213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1450895139078837213==--
