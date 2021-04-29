Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6152D36F0D0
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 22:10:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F19D38450E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 16:10:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="dTvmipK8";
	dkim-atps=neutral
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 48C58383FF0
	for <USRP-users@lists.ettus.com>; Thu, 29 Apr 2021 16:09:30 -0400 (EDT)
Received: by mail-ed1-f51.google.com with SMTP id h10so80046814edt.13
        for <USRP-users@lists.ettus.com>; Thu, 29 Apr 2021 13:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8ad8pXnoytKUBAmG/aM/Y3H5tBIAgBVZydFyvGyxVho=;
        b=dTvmipK8vmMALMER8y9DPKaR+kVkfBnLDCN+iL0vT1WYTJXQQe8n+tE6WQ8Ds60Bil
         5puWMjutpgCxcSuSVsVTxidQlhK0ARV3Svn71xFbAUTZAPEPJxWranAAoRFje7H1VlaJ
         6gWUwBt+OkipKxbLmoa9axc/PwH8tGNYz2xb6xgPCSIpVnfVnvLvMvne3KrM38MkrvCr
         rKd0BF5jsb1iJGhHNeSvPgqjA+RA+GrOZoO78Bfo5DrLDvvrRV8vlZET8r4wbvQCdYXy
         JoKruKvqaANYAzuoi7eUycMjoItU41FC1SBKCmzKBKPrlXwvamYJR7f96FreoLzmXa+E
         mBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8ad8pXnoytKUBAmG/aM/Y3H5tBIAgBVZydFyvGyxVho=;
        b=CseA1LH2u3h1VBDhWZscb0jfFgDgtY2eovHRhsuMFf5LwA20bPw0APYECx5DUOJoMJ
         FqxCVyXzLxNCFFCrslNm/n6PVPfEHbme9trF/Kijes3auYWqEkAkxWQ8/EVN5IJIOMrR
         RUw7uJsDvs9fKNN7ISz8Vb+Bzv6Mx7qCbDMztrLbAa3sPeeCDe6ssgH/zs8/9ii85si/
         qMNWwu7Dcipa4L2Sr+jwQPI7s1nVrFXQYxM2TXPqF5LBpZrP3SR6k77ckfMCShT/SiEl
         zDIHqtV9Vgd6GDdeRzdxkxVbX7Hw7JAGTf41WZU3pH8/c7g0uu2n/P+wvEfdziKNEUBR
         xY4g==
X-Gm-Message-State: AOAM532+yFVRRwflawPrc8mghxFdLmvyiEDluNcY5NtDZlhBI8n9fILc
	cd2cOuCIlzb/A1yzLo9IH3ZzmM3GzS6x3pgtlkQbtCY1
X-Google-Smtp-Source: ABdhPJxBKzIpG0qKxF63X4s0JaTEgyAT9qEn6qD2TplPnRr4RHkDEA6nN3dzvAUPYBwcGbf5Qe7tjcxys7u6G4flQtc=
X-Received: by 2002:aa7:db87:: with SMTP id u7mr1675762edt.16.1619726969202;
 Thu, 29 Apr 2021 13:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <e5825df7934e4dca8d6acc1fe3e18c05@gtri.gatech.edu> <B77AEAD3-732D-40EB-A93A-80572E0CC83D@gmail.com>
In-Reply-To: <B77AEAD3-732D-40EB-A93A-80572E0CC83D@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 29 Apr 2021 16:09:18 -0400
Message-ID: <CAGNhwTPLUxe0j+Yxwk-+Qfmx3t5MhTJO8hMuf-dM41i-+yzfaw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: LGO6GBPEB4H63XUQWRMUFODOCBYLUXET
X-Message-ID-Hash: LGO6GBPEB4H63XUQWRMUFODOCBYLUXET
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>, USRP list <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n3xx series questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LGO6GBPEB4H63XUQWRMUFODOCBYLUXET/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5866995539834609126=="

--===============5866995539834609126==
Content-Type: multipart/alternative; boundary="000000000000a2025205c1221205"

--000000000000a2025205c1221205
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

According to the Ettus KB < https://kb.ettus.com/N320/N321#RF_Specification=
s
>, the N320/N321 USRPs have a tuning time of 245 microseconds ... that
offers up to around 4000 hopes per second. I have never measured this to
verify. - MLD



On Thu, Apr 29, 2021 at 4:03 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> The N310 uses AD936x family of RF front end devices. They are not speedy
> to retune.
>
> The N320 uses a discrete LO and mixer approach and I would suspect that
> it=E2=80=99s comparable to the WBX.
>
>
>
> Sent from my iPhone
>
> On Apr 29, 2021, at 2:33 PM, Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> How many rfnoc Computation Engines (CEs) are available on the N3xx radios
> FPGAs? For example, i read online that the x3xx has 16 CEs.
>
>
> How does the tuning speed compare between the N2xx and N3xx radios? I saw
> a whitepaper a few years back that listed the max sustained hop rate of t=
he
> N210+WBX of approximately 250 hops per second. I'm wondering if the N3xx
> radios have comparable tune times or faster/slower?
>
>
> Thanks,
>
>
> Jeff
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a2025205c1221205
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">According to the Ettus KB &lt; <a href=3D"https://kb.ettus=
.com/N320/N321#RF_Specifications">https://kb.ettus.com/N320/N321#RF_Specifi=
cations</a> &gt;, the N320/N321 USRPs have a tuning time of=C2=A0245 micros=
econds ... that offers up to around 4000 hopes per second. I have never mea=
sured this to verify. - MLD<div><div><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><=
br></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 29, 2021 at 4:03 PM Marcus=
 D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"auto">The N310 uses AD936x family of RF front end devices. =
They are not speedy to retune.=C2=A0<div><br></div><div>The N320 uses a dis=
crete LO and mixer approach and I would suspect that it=E2=80=99s comparabl=
e to the WBX.=C2=A0</div><div><br></div><div><br><br><div dir=3D"ltr">Sent =
from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 2=
9, 2021, at 2:33 PM, Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"lt=
r">=EF=BB=BF





<div id=3D"gmail-m_2472546922563095504divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>How many rfnoc Computation Engines (CEs) are available on the N3xx radio=
s FPGAs? For example, i read online that the x3xx has 16 CEs.<br>
</p>
<p><br>
</p>
<p>How does the tuning speed compare between the N2xx and N3xx radios? I sa=
w a whitepaper a few years back that listed the max sustained hop rate of t=
he N210+WBX of approximately 250 hops per second. I&#39;m wondering if the =
N3xx radios have comparable tune times
 or faster/slower?</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>


<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a2025205c1221205--

--===============5866995539834609126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5866995539834609126==--
