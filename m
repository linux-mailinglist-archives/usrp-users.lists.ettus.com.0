Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17125364CEB
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 23:15:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CC92384799
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 17:15:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ezkKsyku";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 04C0E38447F
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 17:14:12 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id j3so17620776qvs.1
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 14:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=xQHy0NulZuuHJQI5z9PLotV2l2kf7vU0zajK4EXZFEw=;
        b=ezkKsykuXLNbnnAyl67DsvZX7PrUuFvKZmsHs+yySZyFBrQFmeFVY+FMROhnFeoypg
         H7E3S3WxZSvZOq+RhKXAyUonb0bMAFJxXJ72HW4cBZg3Ww9fLuG2fbWNNeOixHQw9QHJ
         xA/2xAYx81AOis6f04kQ1kfCkN9pAJHd/+Ut10SA+P7ZyyeoRMyRe8Olkm9sH+y2j7zv
         lCDk1jvP6yccJNJi2uFZkL5RDkp6kuttPfjkkxlWBQCmTtjIpBTqlSohbEzx14jiZ33e
         rdFKCDaobglIvwfRylLeNstom5cWul0E+9wFoG5xWULjXDRZasIIdGlPV9l10iegg2uS
         J6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=xQHy0NulZuuHJQI5z9PLotV2l2kf7vU0zajK4EXZFEw=;
        b=R9XkGrhfo8pjCn03kSnMYXBuKGidjy48TcUBGOxNUTsIImY/u/XKF3zWQCWTg2KKcL
         r4Mnp5zbvoizks/QFtekv7H1+7Kt1mXYwcVU/xoIAFy4yiidCsHRuvpKOsRRCe37rNZo
         tD7ObpRo+K/a0axLAHqGbrEeW1FjmqD+F8tblh0J9evZ6weSkamdgV4c6EZkCguTw//c
         Vq69cNqKQQH3dQP5Ejasmx/VcyTPEH6/cfiuu77hYUgqLBYaIJvl6XUcoq03Djm6EgUn
         lVXIeJogq+YQhIZbSAaF9lFDVBytODT+ci6+uwOt+vIuvp7AqsS5lnz+mL+nrP4p3Y5E
         6YFA==
X-Gm-Message-State: AOAM531JbeNNsDt3GLLRmCTi8Ani+8Y4C/U88TG8vRGXz6O255tQ8w+u
	mvkF6lnXHWUJjJ9H4EKkVWo=
X-Google-Smtp-Source: ABdhPJz+hfWvI/qk2e3wq3bH01dPIVwB/sGPneVsJzAmFDSNstO6Zyzuz5LPJB/QDdeaxb1j1c/4ng==
X-Received: by 2002:a05:6214:a8d:: with SMTP id ev13mr2463950qvb.23.1618866852541;
        Mon, 19 Apr 2021 14:14:12 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b8sm2946463qka.117.2021.04.19.14.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 14:14:12 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 17:14:11 -0400
Message-Id: <26B46D48-8B2D-4437-8DB5-8FAC2868D375@gmail.com>
References: <CAKhiL6W-8cDDkQxLP3vDJZAN2VSmGuJP0cO10F_iBd-Qv7gfwg@mail.gmail.com>
In-Reply-To: <CAKhiL6W-8cDDkQxLP3vDJZAN2VSmGuJP0cO10F_iBd-Qv7gfwg@mail.gmail.com>
To: LoyCurtis Smith <ljsmith9@ncsu.edu>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: HQE2OV5LVZAD45O3K2OG5T5RVXADMWFC
X-Message-ID-Hash: HQE2OV5LVZAD45O3K2OG5T5RVXADMWFC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 6GHz Tests
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HQE2OV5LVZAD45O3K2OG5T5RVXADMWFC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7573071629823063093=="


--===============7573071629823063093==
Content-Type: multipart/alternative; boundary=Apple-Mail-D6D86D26-CC34-483C-BF5F-C84813489EBA
Content-Transfer-Encoding: 7bit


--Apple-Mail-D6D86D26-CC34-483C-BF5F-C84813489EBA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

As long as It presents 50 ohms to the radio, the CBX does not care.



Sent from my iPhone

> On Apr 19, 2021, at 4:48 PM, LoyCurtis Smith <ljsmith9@ncsu.edu> wrote:
>=20
> =EF=BB=BF
> Hey,=20
>=20
> I am trying to measure within the 6GHz frequency range with a USRP x310 wi=
th a CBX-120 daughterboard. I am in need of an omni-directional antenna that=
 is capable of up to 6 GHz as well.=20
> So far, I have come across the following 6GHz capable antennas:=20
> MPDP2.5/3.5/4.5 - manufacturer Hascall-Denke
> TG.35.8113W - manufacturer Taoglas
> ANT-W63WS1 - manufacture Linx Technologies
> Has anyone tried any of these with a USRP x310? or does anyone have any re=
commendations?
>=20
> V/r
>=20
> LoyCurtis Smith
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-D6D86D26-CC34-483C-BF5F-C84813489EBA
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">As long as It presents 50 ohms to the radio=
, the CBX does not care.<div><br></div><div><br><br><div dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 19, 2=
021, at 4:48 PM, LoyCurtis Smith &lt;ljsmith9@ncsu.edu&gt; wrote:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr"><div>Hey,&nbsp;</div><div><br></div><div>I am trying to measure wit=
hin the 6GHz frequency range with a USRP x310 with a CBX-120 daughterboard. I=
 am in need of an omni-directional antenna that is capable of up to 6 GHz as=
 well.&nbsp;</div><div>So far, I have come across the following 6GHz capable=
 antennas:&nbsp;</div><ul><li>MPDP2.5/3.5/4.5 - manufacturer Hascall-Denke</=
li><li>TG.35.8113W - manufacturer Taoglas</li><li>ANT-W63WS1 - manufacture L=
inx Technologies</li></ul><div>Has anyone tried any of these with a USRP x31=
0? or does anyone have any recommendations?</div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><font color=3D"#073763"><br></font></div><div dir=3D"ltr"=
><font color=3D"#073763">V/r</font><div><span style=3D"background-color:rgb(=
255,255,255)"><font color=3D"#073763"><br></font></span></div><div><span sty=
le=3D"background-color:rgb(255,255,255)"><font color=3D"#073763">LoyCurtis S=
mith</font></span></div></div></div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-D6D86D26-CC34-483C-BF5F-C84813489EBA--

--===============7573071629823063093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7573071629823063093==--
