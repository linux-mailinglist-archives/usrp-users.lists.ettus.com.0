Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA5967923F
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 08:46:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 975F3383BC4
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 02:46:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674546384; bh=L0xEaa5X3UKUUU+TafUYQuFdrFP3SyW1Ol8ZQBq1uDw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0LpItueI1f0PIf4Q/r70Ew+JSS1VUVpIZVuymtXvq7qIcurj6qfbCIyRbgKxFyjI4
	 wP5DqIprLHplYeZLuAvllvDW1wT2UcMvfIZ/6MhuLGBh2znzJ3UQcgR9Kf1nJN9u6J
	 MbpOqLcZJbKgqWblvmfjrNzI6zFhce7es6VLASwRcXLcoF1lMlPL6e5CxRWgAOtIPr
	 WDASItN1RKmT3wBnEiwpjeIZUj7QEH7woHgasCv0Yc7aaNe3XWafwU3RV5QKOB96MA
	 8WMqyzylmdQsSoIoi6UjHtZ/4w6wtbdUOAdKJTYHY09Faxzx1ThWsWojHq0zo36t9J
	 vZ6s0m4V5Bcew==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C42C383AE4
	for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 02:46:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n6xbF2hb";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id v30so17318938edb.9
        for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 23:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73TieLH1mS/duYCyI/VTqA8TQS4Uy8+i34wIy292L4M=;
        b=n6xbF2hbgEPl2p3h61zFmw22dsBwknWJ1qd6A12eNvru4etLZt9AkpoSGobMIrm+VL
         U7kY60RgNXn2us6Mk2/mabbeZbtLTD/pBJPxyRq06WLMUtp07lQ053MyKXyNeLrSWkLP
         EMcHjM6o/OcJHeS1+MGjY2TwKUVz/YVmSRr0eFt8wYgV86kPadNKsNRuq3fN2zxVazzS
         9wQfQfhV1HpQeFEkn2USsNR2I22ReMf4A3b02/TH/QXXeBZuhqktxiEUgpGB5LhwWtyu
         yjrN5FNp+Xg4iVmkOioqUUY4oSYW0B2i30kNZmwarDPsARueJAMxRbR9TIUHtM7TfDrL
         udoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=73TieLH1mS/duYCyI/VTqA8TQS4Uy8+i34wIy292L4M=;
        b=ktOlULHfHJBNu3eDQtB/OGSJymY+t9QyYS5mQ33fy4bt3fg7O4gU2C6hVMK9/rRMID
         +rkyE2b4BihTCS9aHOpO622beQkdcqkxXta6N9g7JvW6JL1k5R5v/pwE/O2wGCmxqXaS
         4H3C6NRESiZh66jy5+r1pbQEOPSztbI+G/yAg73DJ63xSsCBqM4uDRe/CnQ/QDZHwqXU
         2O0hsEFqEzMk2U2Yiva+MH8Q8KuPuqpgPpWPpWwatZVe4q8QOwZzX4oe0M2rzC+z/f3K
         rxmVG20Ee8+CxTH8JgyR6FvpdQhziHKOkTHCHTvlirYuG4JXf3OIzFm0Z9a3om9fBzyg
         neXA==
X-Gm-Message-State: AFqh2kpSHBXqCGDGymllXawYm3e2WXUItXa0b+wFVqNZXKwZLj2l8waK
	A10/GHKPIrEwd/LJmgGSgZq2+FUEjZSvxZKGpw==
X-Google-Smtp-Source: AMrXdXsj287viOK0xWDSVzAWo7cJE9LNJphIIzKOgQuYxhkS2ZCjrf06ZbtH/G2YZoKRDU371O7p0eyBoibMyuPw0Ek=
X-Received: by 2002:a05:6402:4485:b0:468:15f1:54b5 with SMTP id
 er5-20020a056402448500b0046815f154b5mr3597117edb.8.1674546376375; Mon, 23 Jan
 2023 23:46:16 -0800 (PST)
MIME-Version: 1.0
References: <CALooG3-i1-T_FRDmuhBFXDeVVrTwO6oKf_x_Z1s=3fJWnCtTQQ@mail.gmail.com>
 <1dad107d-4211-ca7d-8e0f-1bd9f212e47b@gmail.com> <CALooG38N4H9i4tHhBDVWq_U=d5+nOm1A0S+Pr9512rZGC4hdHg@mail.gmail.com>
 <94984b6d-b5ab-6a6d-63e9-aa7cb5823387@gmail.com>
In-Reply-To: <94984b6d-b5ab-6a6d-63e9-aa7cb5823387@gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Tue, 24 Jan 2023 10:46:05 +0300
Message-ID: <CALooG382ZXiWkNw6kiBsHcOrU42Y210Ltks7EHXz=cSmzy9Ocg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users <usrp-users@lists.ettus.com>,
	david@synopticengineering.com
Message-ID-Hash: UHD6VG233WLNKXAJWV2UCPP3VURKWA6P
X-Message-ID-Hash: UHD6VG233WLNKXAJWV2UCPP3VURKWA6P
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Autoboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHD6VG233WLNKXAJWV2UCPP3VURKWA6P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3288977854364649943=="

--===============3288977854364649943==
Content-Type: multipart/alternative; boundary="000000000000ec807c05f2fdb5a1"

--000000000000ec807c05f2fdb5a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
thank you for the replies. I have tried the first guide, the problem is
they only have firmware updates for versions between 3 and 6. But my
version is 7. That's why I could not update the firmware. The second
document also has the same firmwares. I have emailed ettus support for
firmware update for version 7. I hope they return back for an answer soon.

Kind Regards,
Yasir.

Marcus D. Leech <patchvonbraun@gmail.com>, 23 Oca 2023 Pzt, 21:11 tarihinde
=C5=9Funu yazd=C4=B1:

> On 23/01/2023 11:35, Yasir =C3=96z=C3=A7al=C4=B1k wrote:
> > Hi Marcus,
> > it works when I manually boot it. Although I followed the
> > documentation for activating autoboot, autoboot does not work.
> >
> > Kind regards,
> > Yasir
> >
> This from one of the folks inside Ettus:
>
>   actually don't have an E320 in my lab right now. Adding on Pendlum sinc=
e
> he does =F0=9F=98=84 Hopefully if what I've written here doesn't help, Pe=
ndlum can
> help!
>
> My gut says that the firmware isn't the right version, not new enough. We
> have 2 FW update guides:
>
> (1)< https://kb.ettus.com/E320_Getting_Started_Guide#Autoboot >  and then
> scroll down to "If setting this flag does not allow autoboot control on t=
he
> USRP E320, then the device boot firmware needs to be updated. This update
> is accomplished via the following instructions."
>
> at the very end of that section, the KB notes an alternative E320 FW
> update guide. This would be:
>
> (2)<
> https://drive.google.com/drive/folders/1VQAO5ai04FwkenEwRA7KpSntXE2qZ6bT =
>
>
> This is a folder with 2 files: a ZIP of the FW, and a PDF manual. This
> version is quite a bit more involved physically in opening the E320 & doi=
ng
> stuff physically with it. This version always works for me; the other
> version worked 95% of the time for me. This version is worth a try.
>
> I hope this is useful! - MLD
>
>
>

--000000000000ec807c05f2fdb5a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>thank you for the replies. I have tried the first =
guide, the problem is they only=C2=A0have firmware updates for versions bet=
ween 3 and 6. But my version is 7. That&#39;s why I could not update the fi=
rmware. The second document also has the same firmwares. I have emailed ett=
us support for firmware update for version 7. I hope they return back for a=
n answer soon.</div><div><br></div><div>Kind Regards,</div><div>Yasir.</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbra=
un@gmail.com</a>&gt;, 23 Oca 2023 Pzt, 21:11 tarihinde =C5=9Funu yazd=C4=B1=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 23/01/2023 =
11:35, Yasir =C3=96z=C3=A7al=C4=B1k wrote:<br>
&gt; Hi Marcus,<br>
&gt; it works when I manually boot it. Although I followed the <br>
&gt; documentation for activating autoboot, autoboot does not work.<br>
&gt;<br>
&gt; Kind regards,<br>
&gt; Yasir<br>
&gt;<br>
This from one of the folks inside Ettus:<br>
<br>
=C2=A0 actually don&#39;t have an E320 in my lab right now. Adding on Pendl=
um since he does =F0=9F=98=84 Hopefully if what I&#39;ve written here doesn=
&#39;t help, Pendlum can help!<br>
<br>
My gut says that the firmware isn&#39;t the right version, not new enough. =
We have 2 FW update guides:<br>
<br>
(1)&lt; <a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Autoboot=
" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/E320_Getting_St=
arted_Guide#Autoboot</a> &gt;=C2=A0 and then scroll down to &quot;If settin=
g this flag does not allow autoboot control on the USRP E320, then the devi=
ce boot firmware needs to be updated. This update is accomplished via the f=
ollowing instructions.&quot;<br>
<br>
at the very end of that section, the KB notes an alternative E320 FW update=
 guide. This would be:<br>
<br>
(2)&lt; <a href=3D"https://drive.google.com/drive/folders/1VQAO5ai04FwkenEw=
RA7KpSntXE2qZ6bT" rel=3D"noreferrer" target=3D"_blank">https://drive.google=
.com/drive/folders/1VQAO5ai04FwkenEwRA7KpSntXE2qZ6bT</a> &gt;<br>
<br>
This is a folder with 2 files: a ZIP of the FW, and a PDF manual. This vers=
ion is quite a bit more involved physically in opening the E320 &amp; doing=
 stuff physically with it. This version always works for me; the other vers=
ion worked 95% of the time for me. This version is worth a try.<br>
<br>
I hope this is useful! - MLD<br>
<br>
<br>
</blockquote></div>

--000000000000ec807c05f2fdb5a1--

--===============3288977854364649943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3288977854364649943==--
