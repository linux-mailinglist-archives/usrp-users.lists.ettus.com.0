Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E983F36965E
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 17:47:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E892384CD9
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 11:47:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="Wpg5P3hz";
	dkim-atps=neutral
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 0237B38455E
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 11:46:52 -0400 (EDT)
Received: by mail-vs1-f48.google.com with SMTP id w24so897136vsq.5
        for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 08:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kzzw7dFLi0BaWikNyo2dvF+6EVao8kitFUD0g11mNcU=;
        b=Wpg5P3hzFOW3B3ozCn05wKXPtY7b59ZKRh+dMFzTLyLmGf3pNQ321JkBf7afsM08eQ
         /lT5QwN8opY/lRdJQ3WMZ3eoRIf+vhD7qo8MMqQwsByFvjPPeVhAE+UcEkw9nU7VaAcQ
         oifxh04PA65Q2rOfT8v+onPB9Gz0MmClqpkesv2Mnl5+NqBpsu6VArewNZ/ZKPY/pq1F
         HkUK4RMcCS8fx7YGUZQeSa2fsIC2eJRmcQVBN053C8bRpzTk/3XNit3NFYtsbt6Zp97B
         XxY9/AVXhXnQiA5fcq5j+Nga+qMUPNftoYZnaD3mqIZAsqRA8YqVtpTdT6e0WwIiNVwK
         nf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kzzw7dFLi0BaWikNyo2dvF+6EVao8kitFUD0g11mNcU=;
        b=bv5G2Hi/19CiHth9FtrlPsQROb6X4a543cKgd3G2vTKQhmC/EJrysef/SQ1ebSuVOL
         9+uTA4zUUj/fb7iBs4CZ0a05bDakandDn977vCLlO8hFcaWn6wPlz70BXUnNVJztP2g1
         27zMV1aCuEN/qqYWJhI/nPSovMJGEdUmkUikOYaOBtHMoJKHcfgsBdpuJpf/53AwsJO7
         0rP5VqAFUhD9cmBtTpRhqB18V+uG5kMST9WzDvdc1LfbwxYnLKRCC5G4GtdC/CO3OkPk
         GsRjnhCXd9wqx24KTBYpoeOEkofVEWGyw7rW1RcFoNJZf/5g/rjaiUagFfR534rHmGC4
         EcJw==
X-Gm-Message-State: AOAM533mlOfQstsJw/mndNf0NEDPDYb3/nDXEgnNspJqUzMtLSl0qSlJ
	kzl9amKziQUojDk5V05JYS4qRVSPyzexmZoJoezSXYCm
X-Google-Smtp-Source: ABdhPJzKMi5UEB2uyOSJ7+SbgSlAa1NTxZCqGc41Ibn0qfDWoE+ZxCrjREU7C002Jx2xzreQJRWsICpTzfVSDj24O3g=
X-Received: by 2002:a67:8c85:: with SMTP id o127mr4242849vsd.18.1619192812433;
 Fri, 23 Apr 2021 08:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII@lists.ettus.com>
In-Reply-To: <XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Fri, 23 Apr 2021 11:46:16 -0400
Message-ID: <CAL7q81vk87-pC+7bGLk=TckeXScmkqZu0cboHDAGxOGac_PETg@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: OZNZMJ27D63P72THDUAAOBFBW5PEEETL
X-Message-ID-Hash: OZNZMJ27D63P72THDUAAOBFBW5PEEETL
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OZNZMJ27D63P72THDUAAOBFBW5PEEETL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0110366448454366154=="

--===============0110366448454366154==
Content-Type: multipart/alternative; boundary="000000000000689a0105c0a5b4af"

--000000000000689a0105c0a5b4af
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

Are you incrementing the count only when both tvalid and tready signals are
high right?

Jonathon

On Fri, Apr 23, 2021 at 11:40 AM <jcasallas2019@gmail.com> wrote:

> Paolo -
>
>
> I have been chewing over the two cases you mentioned, and I think I am
> doing the same as your first case, using the 214MHz clock, my counter
> counts twice when the DDC is set at 100Msps over the duration of the signal
> m_in_payload_tvalid. When m_in_payload_tvalid is in low state, the counter
> stops and then keep counting again when the other CHDR packet comes.
>
>
> Our goal here is count the actual samples or items (according to the RFNoC
> specification).
>
> Thank you so much and let me know your thoughts.
>
>
> Thanks
>
> Julian.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000689a0105c0a5b4af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>Are you incrementing the cou=
nt only when both tvalid and tready signals are high=C2=A0right?</div><div>=
<br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Apr 23, 2021 at 11:40 AM &lt;<a href=
=3D"mailto:jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Paolo - </p><=
p><br></p><p>I have been chewing over the two cases you mentioned, and I th=
ink I am doing the same as your first case, using the 214MHz clock, my coun=
ter counts twice when the DDC is set at 100Msps over the duration of the si=
gnal m_in_payload_tvalid. When m_in_payload_tvalid is in low state, the cou=
nter stops and then keep counting again when the other CHDR packet comes.</=
p><p><br></p><p>Our goal here is count the actual samples or items (accordi=
ng to the RFNoC specification). </p><p>Thank you so much and let me know yo=
ur thoughts.</p><p><br></p><p>Thanks</p><p>Julian.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000689a0105c0a5b4af--

--===============0110366448454366154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0110366448454366154==--
