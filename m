Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5851467A54A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 23:01:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C07138408E
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 17:01:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674597669; bh=tjwEjc6BqXanO8qHWrKx0+QiNScxfbrpYSUd/HgVHPQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=POwrbHxiBQF2bL20U6Cl36E8jeeGMZ+EfmyseWZn8Ax4EuyPERlIez4+HHxx/BV/2
	 qB+GvRP6oJiZdPU+TB3hSqECnZiDn3pyJIscq8GabszqzU2eWAOI8m3imJ+QmSriwb
	 ygGZkeomEQucUu90pjrO2Gz+yEP6fKmIhjdRI1cm0ErQmpAMHqBQ3wp83zRu/thCgQ
	 NEnoPCUiU7wTVNo+L/vNFKvVTm2nfqjOEI5PhBbdkCTxcOzSIvP4iZH0QnLtLn4I2U
	 WyznXU0OStgTSUMr4v+CVsC+QMQz9zIvRKxRQyRIWu4sybkCAUYWkvtwtFx7ek2ot5
	 YAJTmK79vRQAw==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F2FC383BB0
	for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 17:01:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="KYsmVImE";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id m199so4981368ybm.4
        for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 14:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c6gBFQcMNdEgMj/lCzS/cFPs/c3lFqKp5CFrdLNUkgQ=;
        b=KYsmVImEyr5WJmB9ClFbagvra1/gJ5IipgttBlBKDCvEggQtqDYaQ+YQ+5fav4GNi/
         k/jBcqwu6iFsyK+rtMjuoxfmkYmEyWmrrssjcZC22G4UPzG7eFGVdUtREG1f4j1taXwR
         ghli5MSn/M+5MtvfrqlzH0sGYj6lPo5p3t/qttRcD43N3b5i7hvMz0kmv+QXawz5fZPx
         kItpLM6tv77doFlpALzvv/8gd1kWMKYIXbtq0t6FPkMY7TBg28R7QVKpqTccZ4fsKdOQ
         q3bRxgLwtKGB3dYO8rjLEg32JNLghmlQQqhDX1u+DTqDNZmmLMZiaxJhvFnQtKfVPu/U
         lSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6gBFQcMNdEgMj/lCzS/cFPs/c3lFqKp5CFrdLNUkgQ=;
        b=VHGxyqW0T9EpeSnKVWU7rfI319rsN9JZnMZWtDzowglRxs0cbLGVSMane/mqf63k9w
         HNffYdib1a2nP/Po9q1YtCuwWqS40V5tcWsRTDmQoO33/lyrG3OlddGLsxR5UFnI4rMd
         OD5N4OC5mtisc/mTPt8pGw7PaUdE67OiDeDCz/NxXtz+4F1ATi01S1uJCkW3IsURfLok
         vjYU57q7Jxscwr8SSszqTQZuQ8mcJs0nH+gDXZ1phz/Dwm4RVMCeP1zTuVqE8KM4P3bN
         tuSibfy+sQZnBUNo5vOJRw1mh/B2u2zP2q3ytAFFTdX+C898DBCC9bNf2UJOPRMsKqYy
         aA8g==
X-Gm-Message-State: AFqh2kq+fJmbqVZ89E5cAOkzPftv8TG684+FojMT4xzmlQap0ckDkxO9
	si8sri2M7tU1yQcd1rvMMNhpXKFBjjuVX6Layum7NlGO
X-Google-Smtp-Source: AMrXdXuzRPBG/heCVp07t4sgml4FRRKxTelt/xPJgWeSzzuq4pq0CAJnN55Xr8/JGtAUMFbHQMm8xWW99H+D3oIqfsg=
X-Received: by 2002:a5b:143:0:b0:7fa:b607:7b65 with SMTP id
 c3-20020a5b0143000000b007fab6077b65mr2642678ybp.79.1674597663023; Tue, 24 Jan
 2023 14:01:03 -0800 (PST)
MIME-Version: 1.0
References: <23b3bf7f-1982-296f-6c70-e481de09f19f@gmail.com>
In-Reply-To: <23b3bf7f-1982-296f-6c70-e481de09f19f@gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 24 Jan 2023 17:00:52 -0500
Message-ID: <CAL7q81t=RYqNtmP5LeuybsT3EtkaagBQP46jaobC2TjP4pknfg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: DD7G3S5IRLIUAZ7MBHRGDSFXNS7LLXDI
X-Message-ID-Hash: DD7G3S5IRLIUAZ7MBHRGDSFXNS7LLXDI
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DD7G3S5IRLIUAZ7MBHRGDSFXNS7LLXDI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7484869497317686207=="

--===============7484869497317686207==
Content-Type: multipart/alternative; boundary="000000000000d8bb2105f309a6db"

--000000000000d8bb2105f309a6db
Content-Type: text/plain; charset="UTF-8"

Hearing you loud and clear

On Sun, Jan 22, 2023 at 8:14 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> Is this thing on?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
-- 

Jonathon


*DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/
<https://www.ettus.com/sdr-software/licenses/>.*

*NI will only perform services based on its understanding and condition
that the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.*

--000000000000d8bb2105f309a6db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hearing you loud and clear</div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 22, 2023 at 8:=
14 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Is this thing on=
?<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><p style=3D"margin:0in;=
font-family:Calibri,sans-serif"><font style=3D"background-color:rgb(255,255=
,255)" color=3D"#000000">Jonathon</font></p><p style=3D"margin:0in;font-fam=
ily:Calibri,sans-serif"><br></p><p><font size=3D"1" color=3D"#999999"><i><s=
pan style=3D"font-family:Arial,sans-serif">DISCLAIMER: Any attached Code is=
 provided As Is. It has not been tested or validated as a product, for use =
in a deployed application or system, or for use in hazardous environments. =
You assume all risks for use of the Code. Use of the Code is subject to ter=
ms of the licenses to the UHD or RFNoC code with which the Code is used. St=
andard licenses to UHD and RFNoC can be found at=C2=A0<a href=3D"https://ww=
w.ettus.com/sdr-software/licenses/" target=3D"_blank">https://www.ettus.com=
/sdr-software/licenses/</a>.</span></i><u></u><u></u></font></p><p><i><span=
 style=3D"font-family:Arial,sans-serif"><font size=3D"1" color=3D"#999999">=
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.</font></span></i></p></div></div>

--000000000000d8bb2105f309a6db--

--===============7484869497317686207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7484869497317686207==--
