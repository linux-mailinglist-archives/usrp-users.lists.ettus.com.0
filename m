Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B56E956CF3
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 16:16:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68F73385388
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 10:16:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724076969; bh=OIRuMgqcu92bTdD6Le8rn0AzllysGyVzoszAdDQovTY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eTVG5TRNxzlhVHSsrZphcFd8+GtfvtpoPgxZGXa5iw8kpq50mnOuWRa6BEQiJoNJc
	 K6ZmqGDkFzGhUqz6lrdE1YegRre0za6vsXq+GMLWMdbHcO8xlNzBlaVarhceb4llY1
	 GKlz8l6ryFvOkclSlm0hjh4W1hAE4eVIoS84gODTIzbS2ECqVjPc8DCrt+X16cu2v6
	 p7AUs/gtXNxwC6WNVsnI9iMcpFiCM+ewlBODzuJrTz9w4oBgYEO2NyLVJ0IlX5WjEs
	 V6nU/Ke1ESBqdCDmH38S08Q8kbDPKmkxNRx2d2DxbQlkcjVHbYIBA2VU3c96GDMaRV
	 8h/qcIq7sIljg==
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 780313852C1
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 10:15:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="K22nx4KM";
	dkim-atps=neutral
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52efe4c7c16so5711985e87.0
        for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 07:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724076949; x=1724681749; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lpawcK9zb6G3eLr2K49ZpUSEOHL7a7ZwG1lGy7mVCQQ=;
        b=K22nx4KMvXbVpaRXH401qifoSbpUvZ/JNvNc6feGYG+5o5us5jT6XI7Tsh/GeUAdE+
         J2glvmq32n8CXRoZ99JTK8vECsxMN2rRN7LjDk8mTSC7ZM6ZpriIlHpoP3U5jc/dhzrP
         JMqCwbNaoN/mIkV73ooZoWOviGIcVB5SwzLzrueodlP6rXnZtJz+vQaVfrYPVkx7UZRW
         FMpi5WJVPofupdECwKwUVhDT674bOuD0RWifVXP1fIEZpdjZYv1yMjy7nqH392NQZ3El
         Xj9Fkpo1lNlmIKm18WIZaj/6u6AR5fB8EmOT4qECI6qSLKCwLfEPHFs1xitbIIrA7Q/Y
         Cddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724076949; x=1724681749;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lpawcK9zb6G3eLr2K49ZpUSEOHL7a7ZwG1lGy7mVCQQ=;
        b=gGmazt+fhEI6yEl8R20omhfvJHIV0kADVgfTUW4l/98u6UVr3pX99e38IlY6hIC0H6
         Mi8hoXl8v9cgzQKj3rmwa0kXuCLL8ixH7IVCe/VH/yIy/zRXieCu47iF1mO0EBOoWInc
         zNcjXhXDcS7HpufjuFZZh99VgiBF6gKCpR2uOX9GudgEboqYNkpWn24cctrkiFwsb2W1
         cSI573WgZGCpjBbGlfm1oOTfZk10QriOIL/Hc5GApTLFY73F1+s/Cf+etWjnsnx+V6u5
         WkCg1hJEFhFpLQuuME3JbYDulMXru1N3LPNpNA9t3qY3GPTqH8dywhVZHraF+jkIOkLW
         1jlQ==
X-Gm-Message-State: AOJu0YwT0ZKFdDtMLLSJDVb89gAM7K/a4K5mgyWlfvEYp4HTLjEcY2nO
	iBJNARdPSKbWm3qmkVHSnj2sGRpyYkGT5q1N/Sy1nTMicuhH+4E2R397h41njoTysx8jDbE4yP6
	ZWKQjUdch3MgY4zNk1YanJm+hhEqDc2TPNGV3bG4+oSBtQtQgJ0Q=
X-Google-Smtp-Source: AGHT+IFqg4zagpbVHntjRD6rqNY5VfIDo2ED9sa5RaA8vPwaoICWKhCrkpSNR7GVXioqdnAryiC0mof2y8UGAIFF7og=
X-Received: by 2002:a05:6512:224e:b0:533:d3e:16e9 with SMTP id
 2adb3069b0e04-5332e07fcabmr4075642e87.57.1724076948583; Mon, 19 Aug 2024
 07:15:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAOYGa71GsP=dmMfi70gSX0orVMg6CzQzHOu-mqiC7u-V22BWRQ@mail.gmail.com>
In-Reply-To: <CAOYGa71GsP=dmMfi70gSX0orVMg6CzQzHOu-mqiC7u-V22BWRQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 19 Aug 2024 16:15:37 +0200
Message-ID: <CAFOi1A4LkjM3JLoOQ6QyKEgDZ6=K7OAd0b-imxmHCk6Cfey2NA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: VKK4SKCAZHNZKUJSSREVJH55NQ3Q7B7P
X-Message-ID-Hash: VKK4SKCAZHNZKUJSSREVJH55NQ3Q7B7P
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Phase Synchonization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VKK4SKCAZHNZKUJSSREVJH55NQ3Q7B7P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9194397608613511721=="

--===============9194397608613511721==
Content-Type: multipart/alternative; boundary="000000000000162402062009f261"

--000000000000162402062009f261
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Steve,

yeah you can lock two E320s to the same frequency reference. You can even
do the same for the time. The phase offsets will not be consistent between
runs or power cycles, but they shouldn't drift a lot (this is not a metric
that we have characterized though).

--M

On Thu, Aug 15, 2024 at 8:25=E2=80=AFAM Steve Hamn <stevehamn311@gmail.com>=
 wrote:

> Hello,
>
> Is it possible to phase synchronize multiple E320's? (e.g. with the use o=
f
> an Octoclock to feed the 1PPS/Ref In). Looking at the block diagram (
> https://www.ettus.com/wp-content/uploads/2019/01/E320-Block-Diagram.png)
> it appears the Ref In feeds a Clocking Circuit which then feeds the AD936=
1
> Local Oscillator. If an Octoclock was driving the same Ref In signal to
> multiple E320's would they be able to be Phase Coherent (i.e. constant
> phase offset)?
>
> Thanks,
>
> Steve
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000162402062009f261
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Steve,</div><div><br></div><div>yeah you can lock=
 two E320s to the same frequency reference. You can even do the same for th=
e time. The phase offsets will not be consistent between runs or power cycl=
es, but they shouldn&#39;t drift a lot (this is not a metric that we have c=
haracterized though).</div><div><br></div><div>--M<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 15,=
 2024 at 8:25=E2=80=AFAM Steve Hamn &lt;<a href=3D"mailto:stevehamn311@gmai=
l.com">stevehamn311@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>Is =
it possible to phase synchronize=C2=A0multiple E320&#39;s? (e.g. with the u=
se of an Octoclock to feed the 1PPS/Ref In). Looking at the block diagram (=
<a href=3D"https://www.ettus.com/wp-content/uploads/2019/01/E320-Block-Diag=
ram.png" target=3D"_blank">https://www.ettus.com/wp-content/uploads/2019/01=
/E320-Block-Diagram.png</a>) it appears the Ref In feeds a Clocking Circuit=
 which then feeds the AD9361 Local Oscillator. If an Octoclock was driving =
the same Ref In signal to multiple E320&#39;s would they be able to be Phas=
e Coherent (i.e. constant phase offset)?</div><div><br>Thanks,</div><div><b=
r></div><div>Steve</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000162402062009f261--

--===============9194397608613511721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9194397608613511721==--
