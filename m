Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5768B7C0189
	for <lists+usrp-users@lfdr.de>; Tue, 10 Oct 2023 18:24:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3413138544A
	for <lists+usrp-users@lfdr.de>; Tue, 10 Oct 2023 12:24:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696955090; bh=LVBRa2r6Qa8arSZUNN4IPTytOIFXbOXCYCFo147NDeE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Y7ntY9gbm/AWyzPfXp8JI/33BoGDOLr2actC1B1/39fsjaEZX0yYvpPSpAmkDcTzP
	 0M3M549DghAA/Zy/8Chp/7fYs0HB+hi366Hpjwy91lCubeX3766E55C1QYpMmKRfQX
	 5lntASfpj91XkrHf8BH1yy11BpdEpZMTlK2ej9cIz2Cca0h4evVJ8UX4QesPhXlnay
	 4WD7QRsJpZUncuYPkqy+nC1kKUS1++BktH2yJ3POAondHZ6rM0UtIRWdrY2d5YTfVq
	 Moz2MNJdvQXDlaWzToLCxUJj2SbnwYNlkONferHaHPeuEB5rzUZAO43tECFo+F/3ma
	 IA4szzRFpq1BA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id E0914384DE0
	for <usrp-users@lists.ettus.com>; Tue, 10 Oct 2023 12:23:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="QnSt/pJL";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-53406799540so10504383a12.1
        for <usrp-users@lists.ettus.com>; Tue, 10 Oct 2023 09:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1696955000; x=1697559800; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=teOoFwJ0zpcPrXscUKjLwyk38w3DiMqHnU3DKw2NDNg=;
        b=QnSt/pJLnOfM77CIdzDiGwmr80JuDGDlqYN8Hwf2jRtr7yK5SjM0ZzfDU6N4qE6nzg
         GSKOGDOIr7q5Bg9BwpDKPqLVu3Iy+MBZnrJZnSlGjDFENTJtc2ntIrvK74ZISjL+ttPM
         51IWchcbGL1xBVg07MeRy0AX5s1A2eZlLB6ruri3kYUOOS9zFXW6XBPhHuCTumYWaekd
         1E4GUualxMgZFjf9vBjYABeBf8mHOmjzl5vSBZA7lstFjFWNlH1qhi6pBoAepXzHWQbw
         sedeY5+3Gke01hfFkgJpVtHQ0an4c6ki2PgjmFoqzqujnk+6cI3MGEj5ccxQObc4XH5q
         NbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696955000; x=1697559800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=teOoFwJ0zpcPrXscUKjLwyk38w3DiMqHnU3DKw2NDNg=;
        b=KM0rWLLJsoUmq6fyxHd/WJY2RMfY5mZgCV8xgAPbSdoqqtq/uLCtNMWtf2/xVpNwBt
         HibFBv6bKrlWZlsxjDMpucp4FvGkjciWGdqClv/lSmHUSa/KZV6HMsgjUhP2P6w07PvO
         p00GcXtUVclYUcCuuwprXkHskN+7UIUhooZKq8zcS0L/VW+AKC8fWn+ve10+rvNueDjm
         abRAIOMUCjvlUMLJ5xg/hyn57W90WM9w4CIApdL0G2LSkNJjWV50WWmExQCFuR522E1m
         iCKVMm3pVUmwIDW03qv8lfFpCFniyK8CR6cMUT98jx8j0WgEMQYjisiTU7U9CxuoOEiR
         yvrg==
X-Gm-Message-State: AOJu0Yw3NScHCFV6HB5z8sxIUkQW6Ic08pnhRjyBKuZCKRFin72lK5Qq
	NCEWV6s3oCNJP0C35jTQ2842V24xChAOEns7eaMnK22i
X-Google-Smtp-Source: AGHT+IEkXCye2NzfgmrVZhGFNkDyhLKF/RHWIQ5ZgJU9PBFZQdDL7Yl9Iu+cmSDnabuVcsWGhIvvXfLHz1ZdxauoBmk=
X-Received: by 2002:a17:906:55:b0:99b:dd1d:bc58 with SMTP id
 21-20020a170906005500b0099bdd1dbc58mr18702944ejg.41.1696954999563; Tue, 10
 Oct 2023 09:23:19 -0700 (PDT)
MIME-Version: 1.0
References: <44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc@lists.ettus.com>
In-Reply-To: <44KOO8DxRyYMwQ7Lvs6MUkXW4X0jZTqVAIQl8l2ofc@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 10 Oct 2023 11:23:03 -0500
Message-ID: <CAFche=iJD3cKcj4=CT+M9m+GJYrQRLm_8ZQLkoYb8z9L0mj59Q@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: M2FVDN3ACDSSS4MQSTVIAKRMZOI3LHZE
X-Message-ID-Hash: M2FVDN3ACDSSS4MQSTVIAKRMZOI3LHZE
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC TB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M2FVDN3ACDSSS4MQSTVIAKRMZOI3LHZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0728399557573774448=="

--===============0728399557573774448==
Content-Type: multipart/alternative; boundary="000000000000f3024b06075f1f47"

--000000000000f3024b06075f1f47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, you can do that.

Wade

On Tue, Oct 10, 2023 at 7:19=E2=80=AFAM <adri96roll@gmail.com> wrote:

> Hi every one,
>
>
> I would like to use the rfnoc testbench but with my own signals and remov=
e
> this condition:
>
>
> `ASSERT_ERROR(
>
> sample_out =3D=3D sample_in,
>
> $sformatf("Sample %4d, received 0x%08X, expected 0x%08X",
>
> i, sample_out, sample_in));
>
> In conclusion, I would like to read the inputs from one file and write th=
e
> output to another.
>
>
> Is it possible with the configuration of the testbench?
>
>
> Thanks in advance
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f3024b06075f1f47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, you can do that.</div><div><br></div><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Oct 10, 2023 at 7:19=E2=80=AFAM &lt;<a href=3D"mailto:adri9=
6roll@gmail.com">adri96roll@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p>Hi every one,</p><p><br></p><p>I wo=
uld like to use the rfnoc testbench but with my own signals and remove this=
 condition:</p><p><br><code>`ASSERT_ERROR(</code></p><p><code>          sam=
ple_out =3D=3D sample_in,</code></p><p><code>          $sformatf(&quot;Samp=
le %4d, received 0x%08X, expected 0x%08X&quot;,</code></p><p><code>        =
            i, sample_out, sample_in));</code></p><p>In conclusion, I would=
 like to read the inputs from one file and write the output to another.</p>=
<p><br></p><p>Is it possible with the configuration of the testbench?</p><p=
><br></p><p>Thanks in advance</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f3024b06075f1f47--

--===============0728399557573774448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0728399557573774448==--
