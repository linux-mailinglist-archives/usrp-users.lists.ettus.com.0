Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B4A5332DF
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 23:14:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60F77384E5C
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 17:14:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653426884; bh=uwrAar2ego+3gVZPsljhRMLg7kaurc0rhmwcC+4ZWLk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hIMfmcVfsP5DjlqjGzbRuJS9w2iC6zVbG0Lv4tofHf2PXd8s3dNElkHx5P9etYpPz
	 DEg2w7odYgU+ES2BnHGMGcJ7j3h3yklX5mt//j/KwWq/CAPX454lFS80itfloMyVmc
	 ji8BpETYrs8CzNnKTeYKPdFrALkFOWrqOMSyO+nOTF+wPg/00GEB0y6ko1ERI8vmY/
	 rvsvN4e+Jc2uAmal+PXjxRqq2BJMDRGuHxuf4YdyqenvxHQAfKXVYnydLt5YYM2MFC
	 rA0Cmxiy+UYbsgefGWwNJYhD2mAAidpCrogrQNrdWZ/iWqQmejPHWIpU7CxGcyAfHg
	 DN3JTTNMOmIyw==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id CACBE384DEA
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 17:13:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="zpe2K33z";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id w18so4036386ybi.12
        for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 14:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aySZk6P14JEr7jXVJjGf3lrmO95wOb4SqM7dZhY2CUQ=;
        b=zpe2K33zffj3ZMbqZPsNr3ByrF8UcnuWVSz7nJo/EDjh8avmXv0/akmAjYIXLK7s/9
         GywSnT0ZhDhBMf0Gwz43R2W/PB9qc0nGVnVnudxNj/kGymQldyQRfP8doqzBQkb9STLk
         /ruyrvDHw8VBmk4azpI7RZW8JWCjksXBUQnYAvmi/u44v6LrEDvvElh+XHb7NSFpum5p
         v5fIEiFqU9+kxXZLxgUDmyQFRWFHsc4yNUOi+qNLxmSUpBWWEiLALuLEoOQqJXRVQgdC
         RH1DcR2GdAwxRDaLa6g8abKm3wF2l0vsnHhrRrkgOwauFvi0GiFcg02Lkmd7OAvZJFCx
         4uug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aySZk6P14JEr7jXVJjGf3lrmO95wOb4SqM7dZhY2CUQ=;
        b=hLVyTVVdkHmldViexooVsFBoLVel1f0UfBuz6ffk2/6wLIcevUro9VY7KAK4sr65Xm
         Ct8fxBwKqqLsVe+9p/QTd1m/Qzez5p7t3psIv9jR8Z9JcpG/MjUOskl47ne47z5j8o81
         Lhp0rxalhBUlPhKLLLxZabfFzCHAY8v+tlYF+cIPlbPIqNL0uA8ipVAvAFf64u//m+r2
         DkzJrJEmBt4pvH38CE32At5cc0EwjqSjnLthfMxXoJvTB2MDG2287ihlB+79kCLKf9Ys
         eMQ1bwhPMX1RcbXeP77KcaXd0gjYZq/7bAxlV/8LUOPHlWmhGoSNy0G3fWod9kzLMWFF
         hq5A==
X-Gm-Message-State: AOAM532HEOFdyZ4BsiqRgu9fZowXl2XhiTtCdDqKlkOs5i1PQX8exwJK
	pExcAp+mpUydzUdOFqO4E+Rcbmi9ApNMO80rSJf0uL1oIGkG5n5X
X-Google-Smtp-Source: ABdhPJxRvXARKECp+ZdqojO8GwC6hWkXjxKOoMhQWOdbQAWdmFq+7xCBQ1SmEPSCrBORL8mWcGWqXzkEZ1dFgqC68lA=
X-Received: by 2002:a25:c0d1:0:b0:64d:6eaa:a32c with SMTP id
 c200-20020a25c0d1000000b0064d6eaaa32cmr26689335ybf.108.1653426822228; Tue, 24
 May 2022 14:13:42 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR14MB419208B3D6D040C84DD4B229CDD79@MN2PR14MB4192.namprd14.prod.outlook.com>
In-Reply-To: <MN2PR14MB419208B3D6D040C84DD4B229CDD79@MN2PR14MB4192.namprd14.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 24 May 2022 16:13:26 -0500
Message-ID: <CAFche=hz23g1CAiTtAjxrUDd22ydLYY9pLy0K-bHx4GTegzbDw@mail.gmail.com>
To: Xingjian Chen <xingjian@umass.edu>
Message-ID-Hash: QVCP5X4BO36R7LWHPLCFDUXWQ77L5HTZ
X-Message-ID-Hash: QVCP5X4BO36R7LWHPLCFDUXWQ77L5HTZ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 firmware load image
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVCP5X4BO36R7LWHPLCFDUXWQ77L5HTZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7284020010701173050=="

--===============7284020010701173050==
Content-Type: multipart/alternative; boundary="00000000000066c06805dfc86e0b"

--00000000000066c06805dfc86e0b
Content-Type: text/plain; charset="UTF-8"

I'm not sure which firmware you're interested in, but much of the firmware
is loaded from the SD card. There are instructions for updating the SD card
with the latest image in the user manual.

https://files.ettus.com/manual/page_usrp_e3xx.html#update_sdcard

Wade

On Tue, May 24, 2022 at 11:03 AM Xingjian Chen <xingjian@umass.edu> wrote:

> Is there any way to update the firmware image for E312?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000066c06805dfc86e0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m not sure which firmware you&#39;re interested=
 in, but much of the firmware is loaded from the SD card. There are instruc=
tions for updating the SD card with the latest image in the user manual.</d=
iv><div><br></div><div><a href=3D"https://files.ettus.com/manual/page_usrp_=
e3xx.html#update_sdcard">https://files.ettus.com/manual/page_usrp_e3xx.html=
#update_sdcard</a></div><div></div><div><br></div><div>Wade<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, May 24, 2022 at 11:03 AM Xingjian Chen &lt;<a href=3D"mailto:xingjian@uma=
ss.edu">xingjian@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Is there any way to update the firmware image for E312?</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000066c06805dfc86e0b--

--===============7284020010701173050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7284020010701173050==--
