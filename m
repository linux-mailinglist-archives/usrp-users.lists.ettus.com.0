Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6486C3D9D
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 23:19:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F9993845F5
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 18:19:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679437171; bh=h7LBsLPjVGZTkjUFCLTGbnLCK1Om7NDVrl/9JCvr8Sg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iVAcfmDVlUGUWe8hoMytuG+Odj/D4I6PuQZ9r4dpRViqCJBvEg8NAIFnwjmIHkPiq
	 /UOzIDwhNulAhwql4bPORw4FIvx9pIxSwDKjXG+bZbG+bIeOLnlFfIWGIHoqtFdptd
	 Uh/mkBtY09R1uIfC2bdH6rHhGNZC2X15ECpYK9ZHLndJCFCTp7GZLWI7pUfUvO/c7M
	 n+a9BJYRpqNoKeO2wTw/1e4Qi/kFq6Z3U5ueezlhWxJH7VV+Tia51brmW+kxqU0H20
	 C7h0U9cxv1n1pCHGZtbHgjUx8VUpvyGQL8m3lEKG8bHTNQCHUs4DqdgOlLm2yKLOhK
	 pMfyoVnj/Q5ug==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 286FF384574
	for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 18:18:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TT0LY3Uk";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id x3so65487557edb.10
        for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 15:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679437126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QgJ4DXOxgW34uB0Oy/fOCYi2FU7poEXJTmPJMMxU0+c=;
        b=TT0LY3UkGI3Y0JfL6/JH9t3eBGcx9waM3DRdsU5UokHmiGradt6kI97+4JwHCdzBrp
         b4T2Qn4Zgy/0MLrjoXzZ2z53WYWCQyfBSHFuAQYFCYzTNyeSql1RB0SMshVR+La6vzq1
         XvLu56AUxUep1kUm+f4sVDue/fBarFnSi6ho/Xv0nnj4MdEK5vtnQcF7jeOZr18rOBSW
         /tlD/ogmFWBgW/SR4D8HdETMEJ3OoXh9zbns5y0fhortpQMuwTA42L8fjUuQv3gTxFDN
         vLy+hNmneKuM760YwMhSYbQO9vi/tLw9xski0o7LmviqzndcvPQ80h6WEN1Ku4vpo+IE
         SnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679437126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QgJ4DXOxgW34uB0Oy/fOCYi2FU7poEXJTmPJMMxU0+c=;
        b=GA15KbpqThZ6rhTCK22Bdi8ThjVXQE2b8Yx0Vb7d2SNyCxRT3Yf7h7g8QMV6q4dCFk
         Tbix4hk67WxIfYdF7W0H9kWfB01ikGT026Vr/ZY1ZDP2k1nifhJ2COygJ6bpjLabnBJZ
         EBOEazVksW6D6QlDATx6nAc7notHf2utHyAUh1gCw56L4G35IAsFLjbBHTF/kutHtO3U
         sRj/uCam3ByEshMYHF7HBuMVH/vYVgIspOMS5L9D5BpsZuS3wzXOmI3irxt6Ff5xSdtO
         AQcu152uj7dVh6yDTLMMZOi50YPwrf3XzXcrejbLdXdTnYB5QEgOH9x7bbdk5OgQwuct
         LdsA==
X-Gm-Message-State: AO0yUKUdoqes2FJWYeI6z9aN+YcnmS9VHYSeS27fGLvJgdYxICr0hkh8
	O0OrklpJO82fn3cje0dEPjP7vOz4fCUoUJlR+u71ax3EOEE=
X-Google-Smtp-Source: AK7set+1kDc5Kk9yefignPzJm9wOmVafzXS1RpAkDwvfXP3eEV4JAsqIqJt8RYZpWp4Id4YrBk/diuGH3KNxzVWz2TI=
X-Received: by 2002:a17:906:d555:b0:931:ecdc:14dd with SMTP id
 cr21-20020a170906d55500b00931ecdc14ddmr2403634ejc.4.1679437125608; Tue, 21
 Mar 2023 15:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 21 Mar 2023 18:18:34 -0400
Message-ID: <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: ZOFAPJNEEF4FQALL5Z45T2IFSWEN2U4H
X-Message-ID-Hash: ZOFAPJNEEF4FQALL5Z45T2IFSWEN2U4H
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZOFAPJNEEF4FQALL5Z45T2IFSWEN2U4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6409182375372707354=="

--===============6409182375372707354==
Content-Type: multipart/alternative; boundary="0000000000004b6b5205f7706d88"

--0000000000004b6b5205f7706d88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hello,
>
> I want to use an external IQ mixer with an external LO.  My signal is 160
> MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of t=
he
> X310.  Unfortunately the only daughterboards for direct access to the ADC=
s
> are LFRX which maxes out at 30 MHz, and the Basic-RX with a minimum of 1
> MHZ.
>
> I am thinking of spinning a custom daughter board derived from LFRX with =
a
> wideband differential driver such as
> https://www.analog.com/media/en/technical-documentation/data-sheets/6406f=
c.pdf or
> alternatively just replacing the chip on an LFRX since these appear to be
> footprint compatible.
>
> Separately, I was looking at LFTX schematics and the part # for the
> amplifier is not specified.  Can somebody at Ettus/NI save me some time a=
nd
> lookup that part #.
>
> Comments?
>

Have you considered the BasicRX?

  https://www.ettus.com/all-products/basicrx/
  https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf

Brian

--0000000000004b6b5205f7706d88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Mar 21, 2023 at 6:12=E2=80=AFPM E=
ugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver=
@aero.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div class=3D"msg29364865378333502">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I want to use an external IQ mixer with an external LO.=C2=A0 My signal is =
160 MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of=
 the X310.=C2=A0 Unfortunately the only daughterboards for direct access to=
 the ADCs are LFRX which maxes out at 30 MHz,
 and the Basic-RX with a minimum of 1 MHZ.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am thinking of spinning a custom daughter board derived from LFRX with a =
wideband differential driver such as=C2=A0<a href=3D"https://www.analog.com=
/media/en/technical-documentation/data-sheets/6406fc.pdf" id=3D"m_293648653=
78333502LPlnk885883" target=3D"_blank">https://www.analog.com/media/en/tech=
nical-documentation/data-sheets/6406fc.pdf</a>=C2=A0or
 alternatively just replacing the chip on an LFRX since these appear to be =
footprint compatible.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Separately, I was looking at LFTX schematics and the part # for the amplifi=
er is not specified.=C2=A0 Can somebody at Ettus/NI save me some time and l=
ookup that part #.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Comments?</div></div></div></blockquote><div><br></div><div>Have you consid=
ered the BasicRX?</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://w=
ww.ettus.com/all-products/basicrx/">https://www.ettus.com/all-products/basi=
crx/</a></div><div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/schematic=
s/basic_dbs/BasicRX.pdf">https://files.ettus.com/schematics/basic_dbs/Basic=
RX.pdf</a></div><div><br></div><div>Brian</div></div></div>

--0000000000004b6b5205f7706d88--

--===============6409182375372707354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6409182375372707354==--
