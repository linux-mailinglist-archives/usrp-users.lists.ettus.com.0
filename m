Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8148B4B1287
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:18:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BA7B384911
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 11:18:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="x6/XLWzx";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 66F823847E3
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 11:17:18 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id g14so16915331ybs.8
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 08:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3j5S6Dy2i0s6qO29WkjyKJ1NhB+q5eQub4MfO6vNUwQ=;
        b=x6/XLWzxD0Q0vHV+5pxpismVXkckj6fJR5n+T8deju8PMvs5PvZBmofP0JfceoLbC9
         nxugle2o0mULbAeSuLcSxTZ24jowscY/ILsRFVoO3QpkUhH5nzqNYbY61X1rBTJwkI+T
         jk1elTZk5rgsnRDrprbvJwS0pJtQhM+hvJi1d5PzLuPMxi/nOPOEZYQd/Fcu8RYA68vf
         z6RrgDSxWWNfBIjpLNxqhbA68wEFBqMGg8y6YrEma0sYuGicuONLgJoe71LKFx7Nl8JW
         pQXJCH7+PeAmyIf9U0p7z9MvfKHlMf4aa5CQPuNXJH60xtapTPxXmlvTolXdLx2giHpJ
         xr/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3j5S6Dy2i0s6qO29WkjyKJ1NhB+q5eQub4MfO6vNUwQ=;
        b=N6qFgR0QrBpsOBX4H1UxbMgnaD7mGtCpEJxPfx2AD65q6BKL8zVogbNJG6sDA1pLKS
         zOYlxxWMrkgmxz6o/ycM1Ulz+k92i022VpqXJAKXokUk8qiL2cVB8SbjfJMfsJdDtZW0
         QeCJs+Z/DUhrdt0DM5JU9LA6Qzo7IR5G7qx37SKWOWQPaGGJ56I2HRSdyKlX/H6hGtwk
         TaNhLDpF9KeAz9yF2Imy6F/jJBQsOQ/L1Nn8bAFZooQFU0Bp/ChaYa1aWMAnxSC+8J1+
         2eWy3SAuhLpHBinQWoOpoDCIsKjBemBFA+T43NYDY4powaBkpIqLldz1SIWYcJm6Dhx4
         aRGQ==
X-Gm-Message-State: AOAM532Orl741x+VsijgxMpdeARKTqZgr2UOTvJHL6s1Yq4F9cKiN3CU
	BQDewNJtq3iHwGe32li36rJo0iPbu6MuqVfAg+Fy0e15
X-Google-Smtp-Source: ABdhPJyKQkc1NiYcAMqj+OZPg6MUb3kaZamXig0czi7g2tyiYm1pWR5W7V9elln9pG0mwbJrmvksD4hpeMwiqi+nx8Q=
X-Received: by 2002:a0d:f0c7:: with SMTP id z190mr7851551ywe.61.1644509837725;
 Thu, 10 Feb 2022 08:17:17 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
In-Reply-To: <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 10 Feb 2022 10:17:02 -0600
Message-ID: <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: K55ULLTU22VPHC6SNCCVZTRBQ2Y6EXBF
X-Message-ID-Hash: K55ULLTU22VPHC6SNCCVZTRBQ2Y6EXBF
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K55ULLTU22VPHC6SNCCVZTRBQ2Y6EXBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7207389317125095794=="

--===============7207389317125095794==
Content-Type: multipart/alternative; boundary="000000000000b5290405d7ac4892"

--000000000000b5290405d7ac4892
Content-Type: text/plain; charset="UTF-8"

The E320's DRAM is pretty fast. It should have no problem keeping up for
your use case.

Wade

On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Rob,
>
> As long as the DRAM can keep up throughput wise, you should be fine in
> that configuration. I think the E320 has a BIST you can run that reports
> the throughput.
>
> Jonathon
>
> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi,
>> I am wondering if there are any data rate restrictions for using the
>> Replay block on the E320.  I have a 4-port Replay block for simultaneously
>> playing two streams to the 2-port Radio and capturing two streams from the
>> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
>> this imply that I will have a data throughput issue?
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b5290405d7ac4892
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The E320&#39;s DRAM is pretty fast. It should have no=
 problem keeping up for your use case.</div><div><br></div><div>Wade<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum &lt;<a href=3D"mailto:j=
onathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Ro=
b,<div><br></div><div>As long as the DRAM can keep up throughput wise, you =
should be fine in that configuration. I think the E320 has a BIST you can r=
un that reports the throughput.=C2=A0</div><div><br></div><div>Jonathon</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler &lt;<a href=3D"mailto:rkossler=
@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I am=
 wondering if there are any data rate restrictions for using the Replay blo=
ck on the E320.=C2=A0 I have a 4-port Replay block for simultaneously playi=
ng two streams to the 2-port Radio and capturing two streams from the 2-por=
t Radio.=C2=A0 If the master_clock_rate is equal to the sample rate, does t=
his imply that I will have a data throughput issue?</div><div>Rob</div></di=
v>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b5290405d7ac4892--

--===============7207389317125095794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7207389317125095794==--
