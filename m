Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 288A087BB33
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 11:24:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F125384ED0
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 06:24:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710411886; bh=Y5UmdWUqjTvk7P/dN7ygvmQ3FVG6f/uc/WOLRYBF3aU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OoI7l0RYPmeqavqkiprdHJ6PVf7w/u5fPHxK8pDrcbg9zLtNxAI20s7iBrp0UKQoq
	 OvAYcp1C7FWjK2neB67n56iz8+PAu9FJiuof7/rYKSCnkv3U9coOLzdVBh1ctETWJU
	 OBqeJTUYNn6NJu99YXuUR8ldScWKhvGdIAp95NgwinvpXnSNqPODgM0hzhibcau2zw
	 fqXvKhBE2Hgor+5MAtWOV8H0EQANyT25F0kMrXxaPAQU0U8tTP1iGF4hjE54rHFhTR
	 TtuXEgo+RPFiSGaHeLAMXZhUE4hSrcgL7+9k9oehogkcUIiSy80O5+cn5M9FAbnIhe
	 Kjg/3C8M6YRGQ==
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 188A6384DFA
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 06:24:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="IykBrlMr";
	dkim-atps=neutral
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d094bc2244so9856481fa.1
        for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 03:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1710411861; x=1711016661; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aZqOvcikp1lOFxIykFPKnD/BmFxVelFWwjqqE+Ig9lE=;
        b=IykBrlMrFCuTtuUyy84wq5IeGo6y5A0ig+beqiWApvZ8oU94aFK0PuSOVX6OfPGpNp
         +Y0G5f+pm0ts42MH1TVnXevAmvb1EXFJlFATx/B1oAzeNQajmh5OOoHbrJdQ8EV22m11
         kLE74ZkUqg/xGoawgl7/ndqxlJ+CkxwPy/aMyLfydoWLW8g9g6cVI6KKywm1aGBVfisi
         yyCISNGAu/at+ENRW9KMtaryK1svk0ZrlRhKmaufmAwJp19zOzVdQA9cl4ZRlhq+lp90
         6+RtD0h6w+bSwdbH1E2wlHcOPhFC4sWNHM9dseyL/oxFB3Ya0U7Ikk7lg60myDnN0tll
         h+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710411861; x=1711016661;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aZqOvcikp1lOFxIykFPKnD/BmFxVelFWwjqqE+Ig9lE=;
        b=rtMGVoSszEWSi08vaBdkJY65UwmrkXOcpqyYvw3o7UzxUBiaYttg111k2El/VYfZON
         e0AuxZIvDUBbKOLkVgrhG+obuTLTCri295Z324J5nSxWtQhrrrqA+eDe3O7dF1r8lF90
         NVOqGou2FDU8dvNk8qTpH7yXDzZdRl3W9kpZjmKaMgXtshD7e+hZ+AglUx4wtWhfKMCf
         OkRxl09ALIjDdMUr00cSPCY9Nqj6hwP/fHHldF6ad2pzgnlSG1zNH3D8fXY+Zad7DgrI
         8A7oreHlZ/xdyKtBhnxygumw9cJvTkBsAP0LRLIKkjGeC2KIUWXVDCVJ3aqTbLFqmD5E
         JvFA==
X-Forwarded-Encrypted: i=1; AJvYcCXHZTlPTtRHm+ZWY0O2CxRYp3DVFrFbgF9/pJ73xX4pwHSy2nStM20Ds0QxK1slU3C8m2i/nJ0qr/qfn2p9Dz0qezLGK07T/kzD2A==
X-Gm-Message-State: AOJu0YxpH50BFlXKBNd8ZRiwIbAVAeoslqnLZXEcK9Pghc4Jj7aA/uja
	ZpulcyDGbByVbqIEgqxMQXLZrHuQbSFoLXq8+EvuRpBUXVY4RJoAgouTEL8t6DNKp64gELnwnOd
	wcjE=
X-Google-Smtp-Source: AGHT+IHnmS6M17kg6D/pmPU5xb+UecP9l0p0tAtjjx4Cte1W2OL8fFRj0GRIfpF+t6bjVAFKOLTHwg==
X-Received: by 2002:a2e:805a:0:b0:2d4:292a:7a44 with SMTP id p26-20020a2e805a000000b002d4292a7a44mr792126ljg.36.1710411861349;
        Thu, 14 Mar 2024 03:24:21 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc49:a500:10fc:1619:bea3:90d1? ([2001:16b8:cc49:a500:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id k11-20020aa7c38b000000b005684fa1c4dbsm572374edq.52.2024.03.14.03.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 03:24:20 -0700 (PDT)
Message-ID: <6a3c3fe6-2b35-492c-89d6-0d62b62956f3@ettus.com>
Date: Thu, 14 Mar 2024 11:24:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tim Vancauwenbergh <tim.vancauwenbergh@hotmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PAWP192MB21509697372FC12333801419992A2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
 <6e128ccb-4508-490f-9c1c-1b5d2f80363c@ettus.com>
 <PAWP192MB2150902CD13A1340D43054E299292@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <PAWP192MB2150902CD13A1340D43054E299292@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
Message-ID-Hash: XR47QBGE2UPJQE7IPPZSJ4FW276PQ537
X-Message-ID-Hash: XR47QBGE2UPJQE7IPPZSJ4FW276PQ537
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source blocks in GNU RC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XR47QBGE2UPJQE7IPPZSJ4FW276PQ537/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5932559525457060445=="

This is a multi-part message in MIME format.
--===============5932559525457060445==
Content-Type: multipart/alternative;
 boundary="------------KJ28Rug290KWz5W7FgN1QV0W"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------KJ28Rug290KWz5W7FgN1QV0W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Negative times don't make much sense, the device keeps positive times; th=
e -1 was probably=20
just mean to signifiy "immediately". So, try with, say 10.0 and 10.1 .

Best regards,
Marcus

On 14.03.24 10:00, Tim Vancauwenbergh wrote:
> Hi Marcus
>
> Thanks for your reply! I have been experimenting with the start time. W=
ith the default=20
> being "-1.0" for both tx and rx, I set the tx time within the range of =
-0.9 to -0.9999=20
> (to start later than rx) but there does not seem to be a clear differen=
ce in the qt gui=20
> time sink.
> The delay between tx and rx remains inconsistent and between 1000 to 25=
00us.
>
> Is there no other way of getting tx and rx to be synchronised by a pilo=
t pulse for example?
>
> Best regards,
>
> Tim Vancauwenbergh
> -----------------------------------------------------------------------=
-------------------
> *From:* Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:* Wednesday, March 13, 2024 3:42:33 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: B210: synchronise USRP Sink & USRP Source b=
locks in GNU RC
> Hi Tim,
>
> that delay will vary, the way you're currently are setting things up, a=
nd there's likely
> going to be an underflow on the transmitter side, because you start bot=
h "roughly" at the
> same time, but it takes some time for RX to produce some samples, while=
 TX expects samples
> to be ready.
>
> Solution is to actually use the "set start time" functionality, with th=
e RX starting a
> couple milliseconds before the TX (try 100 for a start, and reduce for =
as long as you get
> reliable operation without underflow indications).
>
> Best regards,
>
> Marcus
>
> On 13.03.24 14:18, Tim Vancauwenbergh wrote:
> > Dear
> >
> > I am using a B210 in a loopback configuration to achieve delay measur=
ements.
> > Currently, a basic software setup is made in GNU Radio Companion, con=
sisting of a UHD:=20
> USRP Sink block (TX) and an UHD: USRP Source block (RX).
> >
> > I generate a pulse every few milliseconds. When starting the flow, th=
ere is a clear=20
> delay between the transmitted pulse and the received pulse when visuali=
sed in a QT GUI=20
> Time sink. I suppose this is due to the delay between providing a sampl=
e to the USRP=20
> sink block and the actual transmission + the delay on the receiver side=
.
> >
> >
> > Is there a method to make sure both sink and source blocks start at e=
xactly the same=20
> time or at least can be visually synced? The delay seems to vary every =
time the=20
> flowgraph is run. In this loopback configuration, the delay between TX =
and RX should be=20
> 0. When adding a lengthy cable it should no longer match.
> >
> > In the sink and source blocks I have set the sync setting to PC Clock=
 on next PPS, and=20
> left the start time at its default.
> >
> > Any ideas how to get a good sync?
> >
> > Best regards,
> >
> > Tim Vancauwenbergh
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
--------------KJ28Rug290KWz5W7FgN1QV0W
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Negative times don't make much sense, the device keeps positive
      times; the -1 was probably just mean to signifiy "immediately".
      So, try with, say 10.0 and 10.1 .</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 14.03.24 10:00, Tim Vancauwenbergh
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PAWP192MB2150902CD13A1340D43054E299292@PAWP192MB2150.EURP192.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Hi Marcus</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Thanks for your reply! I have been experimenting
        with the start time. With the default being "-1.0" for both tx
        and rx, I set the tx time within the range of -0.9 to -0.9999
        (to start later than rx) but there does not seem to be a clear
        difference in the qt gui time sink.</div>
      <div dir=3D"auto"><span style=3D"font-size: 12pt;">The delay betwee=
n
          tx and rx remains inconsistent and between 1000 to 2500us.</spa=
n><br>
      </div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Is there no other way of getting tx and rx to be
        synchronised by a pilot pulse for example?</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Best regards,</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Tim Vancauwenbergh=C2=A0</div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          M=C3=BCller <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:m=
arcus.mueller@ettus.com">&lt;marcus.mueller@ettus.com&gt;</a><br>
          <b>Sent:</b> Wednesday, March 13, 2024 3:42:33 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: B210: synchronise USRP Sink
          &amp; USRP Source blocks in GNU RC</font>
        <div>=C2=A0</div>
      </div>
      <div class=3D"BodyFragment"><font size=3D"2"><span
            style=3D"font-size:11pt;">
            <div class=3D"PlainText">Hi Tim,<br>
              <br>
              that delay will vary, the way you're currently are setting
              things up, and there's likely
              <br>
              going to be an underflow on the transmitter side, because
              you start both "roughly" at the
              <br>
              same time, but it takes some time for RX to produce some
              samples, while TX expects samples
              <br>
              to be ready.<br>
              <br>
              Solution is to actually use the "set start time"
              functionality, with the RX starting a
              <br>
              couple milliseconds before the TX (try 100 for a start,
              and reduce for as long as you get
              <br>
              reliable operation without underflow indications).<br>
              <br>
              Best regards,<br>
              <br>
              Marcus<br>
              <br>
              On 13.03.24 14:18, Tim Vancauwenbergh wrote:<br>
              &gt; Dear<br>
              &gt;<br>
              &gt; I am using a B210 in a loopback configuration to
              achieve delay measurements.<br>
              &gt; Currently, a basic software setup is made in GNU
              Radio Companion, consisting of a UHD: USRP Sink block (TX)
              and an UHD: USRP Source block (RX).<br>
              &gt;<br>
              &gt; I generate a pulse every few milliseconds. When
              starting the flow, there is a clear delay between the
              transmitted pulse and the received pulse when visualised
              in a QT GUI Time sink. I suppose this is due to the delay
              between providing a sample to the USRP sink block and the
              actual transmission + the delay on the receiver side.<br>
              &gt;<br>
              &gt;<br>
              &gt; Is there a method to make sure both sink and source
              blocks start at exactly the same time or at least can be
              visually synced? The delay seems to vary every time the
              flowgraph is run. In this loopback configuration, the
              delay between TX and RX should be 0. When adding a lengthy
              cable it should no longer match.<br>
              &gt;<br>
              &gt; In the sink and source blocks I have set the sync
              setting to PC Clock on next PPS, and left the start time
              at its default.<br>
              &gt;<br>
              &gt; Any ideas how to get a good sync?<br>
              &gt;<br>
              &gt; Best regards,<br>
              &gt;<br>
              &gt; Tim Vancauwenbergh<br>
              &gt;<br>
              &gt;<br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list -- <a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
              &gt; To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              _______________________________________________<br>
              USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a><br>
              To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
            </div>
          </span></font></div>
    </blockquote>
  </body>
</html>

--------------KJ28Rug290KWz5W7FgN1QV0W--

--===============5932559525457060445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5932559525457060445==--
