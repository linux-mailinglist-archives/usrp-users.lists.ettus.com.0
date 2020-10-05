Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 637AC2837F3
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 16:38:28 +0200 (CEST)
Received: from [::1] (port=40636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPRdC-0007qS-BI; Mon, 05 Oct 2020 10:38:26 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:39175)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kPRd7-0007jH-QS
 for usrp-users@lists.ettus.com; Mon, 05 Oct 2020 10:38:21 -0400
Received: by mail-ej1-f54.google.com with SMTP id lw21so8318898ejb.6
 for <usrp-users@lists.ettus.com>; Mon, 05 Oct 2020 07:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lMROv2eeedFuxLsSRjqlDYXe1ogj3B4L0cPZ35umkzo=;
 b=zZj0cODytGrulqyYOh7eLhSYXrugOEcozaBdavkHvxF9atqQAjNBT6pXzXEm4komp+
 nG8Ab3AbwULszNwuRuL8g3labuQV9sgsWDV3EuGHK/TM33Xot8zjv1FnHLyztAy6GEwA
 1ZIRYpe4E7DyeBO4eY9pK7KqVFolPzlZJYuwkASUaQTOjVs+OWnCq2qO+rN71gJ5AkAP
 zQH3rpo59OS+G98zBHPrMJ/3xRXcNKx+FEpyPoeltM0YJ4/Lita8ax58C8nGysw3ivCo
 Fr0np2wSjvOhK7+8mys762ws3mgywfBoE6yg2o9pT779rR5CAP2maog2DxaXzWpc1PMM
 eTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lMROv2eeedFuxLsSRjqlDYXe1ogj3B4L0cPZ35umkzo=;
 b=PmICr8ovqgqBp41Mal/LA4rGrjLX4txAGewT7z/nMFXIA0+CtxWe43f1Wtzgqw4bh+
 Vv23aG67yQ+S1pQ+CppEubpm51XYnl6JOy+7q3HEtJXAwsKBzwKCOqRmE87LjDuXMwtu
 BjzYbVawCY1mCQoGzKhoyrB/e8oY+fBHaaCtV/7VCENjr5TQ3SStBwJXyqo4k1T6QHW7
 IuDC0qd6/nWITRtHMYflegN70wOlgTNaP/meqdfxs+dx7GO7A8SzwFsFKlHkvfLpsGK1
 dN8JCggDd8DuMxzgAJtvyNYhwYxZgk1q/83t+tJVyRwYLYLmZLskmGKWtoXq5GpGSHcV
 tSgQ==
X-Gm-Message-State: AOAM532/lkX9awqcmuLeGGQVyx+uAmzgBCnFrqTW1uJj0fYQ4Zxh0UAA
 2wVL/v2cEOoHutPIlNE+Nz92ecXTxh8XasuW4CYDCHNm
X-Google-Smtp-Source: ABdhPJw9aoa2h1a9FjzjF4WMfGloICXHuld5MRuG70WkaLiPDUrtJBr+T4efH1lom4E3WyHsfy8qvrskJI5Agl0Pq/I=
X-Received: by 2002:a17:906:358a:: with SMTP id
 o10mr2236507ejb.371.1601908660792; 
 Mon, 05 Oct 2020 07:37:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAEP-zC1h9MNePZLF4UnB93013d0MTbA-m+12jPCCDbyy+LeHKQ@mail.gmail.com>
In-Reply-To: <CAEP-zC1h9MNePZLF4UnB93013d0MTbA-m+12jPCCDbyy+LeHKQ@mail.gmail.com>
Date: Mon, 5 Oct 2020 10:37:29 -0400
Message-ID: <CAGNhwTORFAfgUJsHHMjm7e+O_gD0+wmmhgdBeb0PV6Ov8aSkcQ@mail.gmail.com>
To: Anes Rose Rigiel Anony <ra.anes@globaledgesoft.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP and Bladerf Sync
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============5923702557581114541=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5923702557581114541==
Content-Type: multipart/alternative; boundary="000000000000b07b7605b0ed6cd2"

--000000000000b07b7605b0ed6cd2
Content-Type: text/plain; charset="UTF-8"

Hi Rigiel - At least in theory both the Bladerf XA4 and USRP B210 provide
external input for a 10 MHz REF, which -might- allow for some sense of
synchronization between them. It's really not clear to me whether that will
be enough, and whether the software controlling these devices can be
coerced into producing even vaguely time-aligned samples based on the
common REF signal. Maybe others here have used this particular combination
of SDR hardware in a synchronized manner? Good luck! - MLD


On Mon, Oct 5, 2020 at 2:37 AM Anes Rose Rigiel Anony via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Team,
>
> We are using *Bladerf XA4 as Base station 1 and USRP B210 as Base Station
> 2*. Since both devices use an internal clock as the clock source, both
> are *not in sync* so our application fails.
>
> I need to sync these both devices.
>
> *Is there any way to synchronize without an external clock and with an
> external clock?*
>
> Please share the detailed information on this.
>
> --
> Regards,
> Rigiel,
> Cellular.
>
> Disclaimer:This message is intended only for the designated recipient(s).
> It may contain confidential or proprietary information and may be subject
> to other confidentiality protections. If you are not a designated
> recipient, you may not review, copy or distribute this message. Please
> notify the sender by e-mail and delete this message. GlobalEdge does not
> accept any liability for virus infected mails.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b07b7605b0ed6cd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rigiel - At least in theory both the=C2=A0Bladerf XA4 a=
nd USRP B210 provide external input for a 10 MHz REF, which -might- allow f=
or some sense of synchronization between them. It&#39;s really not clear to=
 me whether that will be enough, and whether the software controlling these=
 devices can be coerced into producing even vaguely time-aligned samples ba=
sed on the common REF signal. Maybe others here have used this particular c=
ombination of SDR hardware in a synchronized manner? Good luck! - MLD<div><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Oct 5, 2020 at 2:37 AM Anes Rose Rigiel Anony via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Hi Team,<div><br></div><div>We are using <b>Bladerf XA=
4 as Base station 1 and USRP B210 as Base Station 2</b>. Since both devices=
 use an internal clock as the clock source, both are <b>not in sync</b> so =
our application fails.</div><div><br></div><div>I need to sync these both d=
evices.=C2=A0</div><div><b><br></b></div><div><b>Is there any way to synchr=
onize without an external clock and with an external clock?</b></div><div><=
br></div><div>Please share the detailed information on this.<br clear=3D"al=
l"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div>Regards,</d=
iv><div>Rigiel,</div><div>Cellular.</div></div></div></div></div>

<br>
<div align=3D"left">Disclaimer:This message is intended only for the design=
ated recipient(s). It may contain confidential or proprietary information a=
nd may be subject to other confidentiality protections. If you are not a de=
signated recipient, you may not review, copy or distribute this message. Pl=
ease notify the sender by e-mail and delete this message. GlobalEdge does n=
ot accept any liability for virus infected mails.<br></div>________________=
_______________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b07b7605b0ed6cd2--


--===============5923702557581114541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5923702557581114541==--

