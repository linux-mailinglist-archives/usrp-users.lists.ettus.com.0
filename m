Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DCF3A2240
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 04:23:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E83083847AB
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 22:23:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jvdJi95t";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 74123384316
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 22:22:48 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id g12so13916611qvx.12
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 19:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=fJ+2GAn0Qz0EiD4bb4aLXQctb5qlhPbPRAkoHH+dFjg=;
        b=jvdJi95tPMAGBSahXnLEyr6BOAtoGlBIVF2QXW3Poi0/h5BSOcIlsk/NQhJZ/NbSny
         SFCnaK9J6tK7RSNtT29ndiUGgn8pGLXvNfU/Vu876Xl517VW9+QZShDsW2r4jm+CUMEq
         lIUA2PFRREFQ0HWf7CjYQ7TXc3cxPH2Zz5ZAUlzIFdtozBml58BUYQk+Hl0ciPAaJor5
         cNwu1XYlbk+1cbaZhr6jDkQ2pjk3jetCMxPQ99gNZHTfX1xdKeB6zUSfBNCAWbN8CAa6
         ThUTCU/uETDELtmmZGrkb3WLPydHJaew3RBa0KIXEx0sH6s3UNM8wfgzUiGJYA5fAtz/
         tWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=fJ+2GAn0Qz0EiD4bb4aLXQctb5qlhPbPRAkoHH+dFjg=;
        b=OaXBNpGEwcTE+U2rlDuj54ysMuxK52zRgKmVTZs+BN/dcno0JGQ6dZRdSrYxXgKvxx
         rPD5oEW0ApIgh4QUJSaDShcEHAE03Vazk0lzgiB7lbwLRdHFXHmcDwY9p6VGTvebOtbZ
         oGBuJ4qEguTd8Br4mMrcIeEhzRQrxPS8qSH4hYqRjbcOfP5sXstxyyDRbSXOGeR1H+Dz
         F9h5mUz9kZBW4x3gyc+8kP+dlDzUmZTsOW8T2t5cczccC6R1kGOxzMYrk8eHbvw2i4vJ
         e2sBlQZ+zJG/FfOKM6Vc5itRWUXsA50xmul5JwGubM1+v+Rjn/IaCKIoeHDV5ow1fxeI
         JJHA==
X-Gm-Message-State: AOAM530wCtTu3EBDJJZ9FODdlq7I8uyWMySldYgxQP6k43Kmsp54hu68
	mvxLyH2khDQxBE51QEPkBuLjxQflZeQz4w==
X-Google-Smtp-Source: ABdhPJygm6KR8Zf9BQ/6TaYEpezS4VGxG1ByhBYI2XGxh+4t3eZyToKFJ0zCnZ4oEz3CzEI3/PHt0A==
X-Received: by 2002:a0c:c792:: with SMTP id k18mr2962624qvj.26.1623291767665;
        Wed, 09 Jun 2021 19:22:47 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 4sm1349982qkv.134.2021.06.09.19.22.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 19:22:47 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 9 Jun 2021 22:22:46 -0400
Message-Id: <A4D85519-A78A-4160-B0EB-759D8A8B1836@gmail.com>
References: <CACSyVY3+ah-VOMt-tmLYV1L=WeD5bqwoqBdGZpukc+u3EDTYYw@mail.gmail.com>
In-Reply-To: <CACSyVY3+ah-VOMt-tmLYV1L=WeD5bqwoqBdGZpukc+u3EDTYYw@mail.gmail.com>
To: Kelvin Lok <kelvin.lok266@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: I3VU4EPHDVPS3DS4SX7LQD5HEV23GPBL
X-Message-ID-Hash: I3VU4EPHDVPS3DS4SX7LQD5HEV23GPBL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [KeyError] for X310 on Windows 10, UHD 3.15
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I3VU4EPHDVPS3DS4SX7LQD5HEV23GPBL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8682721168743092529=="


--===============8682721168743092529==
Content-Type: multipart/alternative; boundary=Apple-Mail-36D59C0B-B9C7-45A2-8A67-F4DA3CF91BF6
Content-Transfer-Encoding: 7bit


--Apple-Mail-36D59C0B-B9C7-45A2-8A67-F4DA3CF91BF6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Does computer B perhaps have another USRp on its network port? (Clutching at=
 straws I=E2=80=99ll admit).=20



Sent from my iPhone

> On Jun 9, 2021, at 10:14 PM, Kelvin Lok <kelvin.lok266@gmail.com> wrote:
>=20
> =EF=BB=BF
> I am having trouble with this error message. "Error: LookupError: KeyError=
: Unknown settings register name: DDS_FREQ", on a X310 usrp.
> I have 2 UHD installations of UHD on 2 different computers. Computer A has=
 internet access, Computer B does not have internet access. Both computers u=
se UHD 3.15 built from source (Github), running windows 10. On Computer A, I=
 am able to run uhd_usrp_probe.exe without any issues. On computer B I get t=
he DDS_Freq KeyError.
>=20
> I initially thought it was an image issue, but the same x310 works on Comp=
uter A but faces error on Computer B.
>=20
> Even copying the same uhd binaries and images from A to B, and running on B=
 shows the same error. I also ran a cmd prompt session and reset the environ=
ment variables for uhd_images_dir.
>=20
> Any advice on what I could be doing wrong?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-36D59C0B-B9C7-45A2-8A67-F4DA3CF91BF6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Does computer B perhaps have another USRp o=
n its network port? (Clutching at straws I=E2=80=99ll admit).&nbsp;<div><br>=
</div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr=
"><br><blockquote type=3D"cite">On Jun 9, 2021, at 10:14 PM, Kelvin Lok &lt;=
kelvin.lok266@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">I am having trouble wi=
th this error message. "<b><font face=3D"verdana, sans-serif">Error: LookupE=
rror: KeyError: Unknown settings register name: DDS_FREQ</font></b>", on a&n=
bsp;X310 usrp.<div>I have 2 UHD installations of UHD on 2 different computer=
s. Computer A has internet access, Computer B does not have internet access.=
 Both computers use&nbsp;UHD 3.15 built from source (Github), running&nbsp;w=
indows 10. On Computer A, I am able to run uhd_usrp_probe.exe without any is=
sues. On computer B I get the DDS_Freq KeyError.</div><div><br></div><div>I i=
nitially thought it was an image issue, but the same x310 works on Computer A=
 but faces error on Computer B.</div><div><br></div><div>Even copying the sa=
me uhd binaries and images from A to B, and running on B shows the same erro=
r. I also ran a cmd prompt session and reset the environment variables for u=
hd_images_dir.</div><div><br></div><div>Any advice on what I could be doing w=
rong?</div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-36D59C0B-B9C7-45A2-8A67-F4DA3CF91BF6--

--===============8682721168743092529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8682721168743092529==--
