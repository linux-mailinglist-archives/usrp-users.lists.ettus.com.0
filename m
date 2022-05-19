Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7838252D5D5
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 16:22:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2512A384120
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 10:22:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652970133; bh=bCNDEdC3GmOYoDo+QL5wsTz4ucKAJ5bUT8dYb+vNwpY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=f7aBA//eGIbzIFzvvT3zTHf/oCwWOsa9Bev97hZdrc8GEN19ytvlKfFGGj9uHtKYC
	 dMsInwkHZgAV4gV3m0MPq1/v0EtbMdI8Jag3cwd+Mz/QWvRJzETGm2wzzoHfFyn2UH
	 j4luPN0hRegfXgdKatJQ5aRgxuKDXFpLs5lzcH4vqWhtkPLDaJxvE+UtujlaCMMvxa
	 r/UBetfVzRs1uibbCdPNPoUKXOboqn2sNNWI/zEM7VAXUv62ZHsmzAO/cD7ToXcxYD
	 igaItELwJmwGD4MYuld33vEaFIWlO9mQU4eSKUo25btDrGmZrt2NmguIFESo1SCaX3
	 uvfPNV4eByKIQ==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 03769384A50
	for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 10:21:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="B5r7EAML";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id p139so9266943ybc.11
        for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 07:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aKknZReT79ZY6QHRpiRwDnoKPjwOz63qu60laPYMFhk=;
        b=B5r7EAMLldv4pTCqZLF6cKVD0QhM+mKfoM2kjx5viMmU/EyhE++GcACf0ZW3YBeADU
         jyJdOphx2ckLDQxr5N0bHj0DU0SWEucVmXnyeW3+w/qqP3mNkccH9AZcr+tfwE2UOtAQ
         G3TviO/Dk33+qjbRaCkf/s6M/EH4IG4z2jECjTIsE8RTCxocxHr8SexdcIw7Zj1e8Gpd
         UxrHLxNUbpHFUWdqBk3bO2aIXJIY9ce2+nHDQWqalTUFHo6N+d8KxM2/q6eB2v3bVTvn
         lJQUUPnsTrTchBFzSx6mnVJv8EJ4CQbuUVrAU2fDvi1/Rw0izRUymMYK1sosr8PJ/PUy
         jDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aKknZReT79ZY6QHRpiRwDnoKPjwOz63qu60laPYMFhk=;
        b=bmzpyl0lVV2CCGXIn9VeFE5rDcnRe84xW4HCccBe3L64GN3jR1MweYe7OgairqShRQ
         3iCCXLSGAPhlnOnNH0lo3rDj67sEZ1hcivwIKR+iSGS6zpTybNy7HhxfWo8Mfxj4fLHQ
         bECfuQgXTS2Zc//ZOZPg1Pp0pjsTcnznX0XaMWYqMjhpHlJBq6hY48diZqyYlad4A0C/
         aT6UWVLjQbFEmH40vFMUch5mH6FSNAFWGhfwbNx4NBmnavgqu4X/zsl944qsZ3XvM+/k
         u0aCK1Nv7LF0zDnyCq9PGneXszC/9aEYxKjLNvDJx70dYf/x6V4ODLieUOH31yuCnEV+
         3Whg==
X-Gm-Message-State: AOAM53078ySGDhG5kBATYsnL259CpfZU0Xq9PYtMMUje5BH1dj6WQdBB
	cbcKlU5p3peX5tGu6eL759bye1k3F7RPlqa7qZTxvw==
X-Google-Smtp-Source: ABdhPJx/MTSpZMm7HW/oMQFWa0dJAum3Ug/FY9Wq1vvng4QyX3tOrUiKEXyKFP/cqBtV0aZOpk6FNrgbEElOAwAvpXo=
X-Received: by 2002:a25:abc3:0:b0:64d:eafe:d61e with SMTP id
 v61-20020a25abc3000000b0064deafed61emr4641796ybi.218.1652970074178; Thu, 19
 May 2022 07:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <1652294738824.26535@unibw.de> <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
 <1652297098503.13596@unibw.de> <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
 <20220512085008.t5jsg4uojzhalmiz@barbe> <1652360244186.66576@unibw.de>
 <1ec218ac-86dd-555d-623d-dc918a382b7d@gmail.com> <1652368743151.58468@unibw.de>
 <1652967412443.25901@unibw.de>
In-Reply-To: <1652967412443.25901@unibw.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 19 May 2022 10:21:03 -0400
Message-ID: <CAB__hTTBPJ0tfM-q8udVP7eeeX2rw7T=_4n-=Br5YymPB0XLMQ@mail.gmail.com>
To: "Dobler, Anton" <anton.dobler@unibw.de>
Message-ID-Hash: ABETGPMJ43VWQU2BSTQOBASI7G65NVXK
X-Message-ID-Hash: ABETGPMJ43VWQU2BSTQOBASI7G65NVXK
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC image builder problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ABETGPMJ43VWQU2BSTQOBASI7G65NVXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4191447815685824685=="

--===============4191447815685824685==
Content-Type: multipart/alternative; boundary="00000000000018ded005df5e16e5"

--00000000000018ded005df5e16e5
Content-Type: text/plain; charset="UTF-8"

Hi Anton,
Did you install all of the dependencies listed here
<https://files.ettus.com/manual/page_build_guide.html#build_dependencies_ubuntu>?
The error is a python error in not finding a needed package. It is possible
you need to configure PYTHONPATH to point to a UHD folder.  Did you specify
the FPGA_DIR option to rfnoc_image_builder?
Rob

On Thu, May 19, 2022 at 9:42 AM Dobler, Anton <anton.dobler@unibw.de> wrote:

> Dear community,
>
> does anyone have an idea what the problem is about that import error?
>
> I checked the files for UHD4.0 (the rfnoc_image_builder runs fine here)
> but I am not experienced enough to find the problem...
>
> Any help would be very appreciated!
>
> BR,
>
> Anton
> ________________________________________
> Von: Dobler, Anton
> Gesendet: Donnerstag, 12. Mai 2022 17:19
> An: discuss-gnuradio@gnu.org; usrp-users@lists.ettus.com
> Betreff: RFNoC image builder problem
>
> Dear community,
>
> I am running UHD4.2 on Ubuntu 20.04. When I try to run
> rfnoc_image_builder, I get the following error:
>
> rfnoc_image_builder --help
> Traceback (most recent call last):
>   File "/usr/local/bin/rfnoc_image_builder", line 29, in <module>
>     from uhd.imgbuilder import image_builder
> ImportError: cannot import name 'image_builder' from 'uhd.imgbuilder'
> (unknown location)
>
> What is the issue here? I tried UHD4.1 but got the same issue here...
>
> Any help is very appreciated!
>
> BR,
>
> Anton
>
>

--00000000000018ded005df5e16e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><img class=3D"gmail-ajT" src=3D"https://s=
sl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif">Hi Anton,<div>Did you =
install all of the dependencies listed <a href=3D"https://files.ettus.com/m=
anual/page_build_guide.html#build_dependencies_ubuntu">here</a>?=C2=A0 The =
error is a python error in not finding a needed package. It is possible you=
 need to configure PYTHONPATH to point to a UHD folder.=C2=A0 Did you speci=
fy the FPGA_DIR option to rfnoc_image_builder?</div><div>Rob</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, M=
ay 19, 2022 at 9:42 AM Dobler, Anton &lt;<a href=3D"mailto:anton.dobler@uni=
bw.de">anton.dobler@unibw.de</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Dear community,<br>
<br>
does anyone have an idea what the problem is about that import error?<br>
<br>
I checked the files for UHD4.0 (the rfnoc_image_builder runs fine here) but=
 I am not experienced enough to find the problem...<br>
<br>
Any help would be very appreciated!<br>
<br>
BR,<br>
<br>
Anton <br>
________________________________________<br>
Von: Dobler, Anton<br>
Gesendet: Donnerstag, 12. Mai 2022 17:19<br>
An: <a href=3D"mailto:discuss-gnuradio@gnu.org" target=3D"_blank">discuss-g=
nuradio@gnu.org</a>; <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a><br>
Betreff: RFNoC image builder problem<br>
<br>
Dear community,<br>
<br>
I am running UHD4.2 on Ubuntu 20.04. When I try to run rfnoc_image_builder,=
 I get the following error:<br>
<br>
rfnoc_image_builder --help<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 29, in &lt=
;module&gt;<br>
=C2=A0 =C2=A0 from uhd.imgbuilder import image_builder<br>
ImportError: cannot import name &#39;image_builder&#39; from &#39;uhd.imgbu=
ilder&#39; (unknown location)<br>
<br>
What is the issue here? I tried UHD4.1 but got the same issue here...<br>
<br>
Any help is very appreciated!<br>
<br>
BR,<br>
<br>
Anton<br>
<br>
</blockquote></div></div>

--00000000000018ded005df5e16e5--

--===============4191447815685824685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4191447815685824685==--
