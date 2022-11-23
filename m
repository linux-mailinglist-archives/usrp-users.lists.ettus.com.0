Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A074636BC5
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 22:03:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 536CF38434D
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 16:02:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669237379; bh=2OXb4FoCl12GUIFgmqVBSwDndkf1r/vS220tMGOg3T8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=B6wbhcABanzF0PABubal61NkaLOB/UBXnMDcFCGuwOuCX33N+7AwjOIk8d3FKFvcT
	 z0HmC5EVTC8YpQk/dk3QkEggVW5qPJh1AjPYP21cqT+WiChEX3XDA7vLI81fKK+/Rc
	 XTu7Q3InZInptkq3NQSxMBUkrkhVeIDyZUQ0ouZS6+Tgv8kWfQ90eQOpQRQA95JCS2
	 59hw/LoCDshptD+9Hq+V0kDcHrJg6UjuFl+bX23F1E/pw+daZc5A8ZlUjPMV8wgInn
	 Xx2wBBhjitSktMIfLD5oa5nrdV5C5KFM9NbdYf3UxV7IAIKlROQBbXCymgb6tlVb7z
	 I68PZB7cVR+IQ==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 12E5838434A
	for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 16:02:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="GrlshZrc";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id mx15so1207970qvb.1
        for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 13:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0ONrXV6mAETiRalC067XlZ2+Q363IK/Lrjwkjgzyk/4=;
        b=GrlshZrc3rwkYuLoV28n4PQP9CxCP+7nvcM4Hg8/IyIx8J8eAHJN7mSHMUFeanu3Ej
         7L9nN6zQM7z4XmYe6gBSuMWWPVv4Vy/tNTibpctOCvyJWkE3iyITD555wwHL8F7ciGWD
         V0W384Vu+TDqsOL8qd4Xv2IIILdOfrXvKF6kYtrwdUgq4qZyxVBQkjsWsJuDV6ouH2vI
         rbMETCrTjR1A6epqNWz60FzPoFaZQ1xHC8Bq57ndCgyEqtNUa6P5f9tGgA506DOHJmWA
         cD3CD+Gg+ddemIFyRRtaM8syQQ83F8eSMnb7ySD1w4M5vOLr57CFOR0wBKvdr/mZ5Ndb
         fcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ONrXV6mAETiRalC067XlZ2+Q363IK/Lrjwkjgzyk/4=;
        b=x3QIh2dSZdojEcWeoIfc4Wv4GZ/LylaZh/5jDGf40P0L8cuTuyyGe3a/5mtyYhjPiY
         G8vCeHzDv1UsR2nn8ihs8rM/zOo2v0WpQDwlcmxXOIa78ZGAKpF3tbLcu+INDjBhQ9Xg
         0gDfpMNoDB9+aLaDsqdOqnP4yNisoTb04iZOF4YKrsLe+XyEUME1P1gn8lguRWxoQMNL
         Aohasw327W25VYLvG6Hx84UkhPVqSR97xH59wmkUaPtqZDFmw/RdDbUnJRbmI8NZUNiO
         SB/wTs+2/cZeZPWMqqTNE0H4Ylnrjms/sS+r0XBjQTMAa0wSlMDzOrQ6aoyQiWWq1CRJ
         5UGA==
X-Gm-Message-State: ANoB5pnNUsZagBkLzrdvdD68WoJz6XVd0Z4HM5qfa+3RynWExfFwMGoL
	pliw9UJHHcjiVfL3p6trQtdJxNjB5lIZALrW67aHb7HIU0zIcA==
X-Google-Smtp-Source: AA0mqf4hJgtCFjvoKKUvMZcKTfezxIS6tg1Y+cQmTS8WV0gaT9FDrqqaOgz5wUOOeFbWNqbBqsnwT/wIsikgHr0KFZs=
X-Received: by 2002:a0c:eacd:0:b0:4bb:d68d:2744 with SMTP id
 y13-20020a0ceacd000000b004bbd68d2744mr10036730qvp.5.1669237369515; Wed, 23
 Nov 2022 13:02:49 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3=mKYwV0c2FnKPrkY1nr3f-sDhE5PRXQSsnOnv5a=NFEA@mail.gmail.com>
 <da183c42-4676-8995-919b-8ca3b2250bc9@gmail.com>
In-Reply-To: <da183c42-4676-8995-919b-8ca3b2250bc9@gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Wed, 23 Nov 2022 22:02:38 +0100
Message-ID: <CAKHaR3m0WR9pZyjoeom2eUAmbPc-J_9y=+pSuUF2CpzVvNTn=g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 26E5JGCXAG5B277XMV3SBGA3ESWPEZY3
X-Message-ID-Hash: 26E5JGCXAG5B277XMV3SBGA3ESWPEZY3
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/26E5JGCXAG5B277XMV3SBGA3ESWPEZY3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0800417287334457599=="

--===============0800417287334457599==
Content-Type: multipart/alternative; boundary="00000000000074c44805ee299c4b"

--00000000000074c44805ee299c4b
Content-Type: text/plain; charset="UTF-8"

Yes it does. It states that it is related to divisor being =8 or something
similar. Apparently that frequency seems not supported anymore on 100 MHz
be FPGAs. I also noticed 100 mhz be FPGA seems being deprecated on uhd 4.3.
issue is I need to stay at 100Mhz as that is sufficient for my application
and leaves more free space for user logic

Dario Pennisi


Il Mer 23 Nov 2022, 21:52 Marcus D. Leech <patchvonbraun@gmail.com> ha
scritto:

> On 23/11/2022 15:24, Dario Pennisi wrote:
>
> Hi,
> i am using a XG-100 FPGA and moved from UHD4.0 to UHD4.2 and found out
> that master clock rate changed from 125 to 122.88MHz. in my application i
> need radio clock to be 125MHz but it seems it's not possible, at least with
> the 100 MHz bandwidth variant.
> is there anything i can do to restore sampling frequency to 125 MHz?
> thanks,
>
> Dario Pennisi
>
>
> That's probablhy jsut the *default* master clock rate.
>
> Specify "master_clock_rate=125e6" in the device arguments--does that fail?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000074c44805ee299c4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes it does. It states that it is related to divisor bein=
g =3D8 or something similar. Apparently that frequency seems not supported =
anymore on 100 MHz be FPGAs. I also noticed 100 mhz be FPGA seems being dep=
recated on uhd 4.3. issue is I need to stay at 100Mhz as that is sufficient=
 for my application and leaves more free space for user logic<div dir=3D"au=
to"><br><div data-smartmail=3D"gmail_signature" dir=3D"auto">Dario Pennisi<=
br><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">Il Mer 23 Nov 2022, 21:52 Marcus D. Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; ha scritto=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 23/11/2022 15:24, Dario Pennisi
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div>i am using a XG-100 FPGA and moved from UHD4.0 to UHD4.2
          and found out that master clock rate changed from 125 to
          122.88MHz. in my application i need radio clock to be 125MHz
          but it seems it&#39;s not possible, at least with the 100 MHz
          bandwidth variant.</div>
        <div>is there anything i can do to restore sampling frequency to
          125 MHz?</div>
        <div>thanks,</div>
        <div>=C2=A0<br clear=3D"all">
          <div>
            <div dir=3D"ltr" data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:=
Calibri,sans-serif;font-size:13.3333px">Dario
                  Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:C=
alibri,sans-serif;font-size:13.3333px">
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    That&#39;s probablhy jsut the *default* master clock rate.<br>
    <br>
    Specify &quot;master_clock_rate=3D125e6&quot; in the device arguments--=
does that
    fail?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--00000000000074c44805ee299c4b--

--===============0800417287334457599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0800417287334457599==--
