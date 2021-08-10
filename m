Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFE03E5E13
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 16:35:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBEF0384417
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 10:35:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="amOSNgGH";
	dkim-atps=neutral
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 238FA38435E
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 10:34:22 -0400 (EDT)
Received: by mail-oi1-f178.google.com with SMTP id s13so19783390oie.10
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 07:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DPWAQmp2yDjy/DHek0j+8eSiCuiFKa3tnWQvcUVIVfI=;
        b=amOSNgGHkzDIR4VzLgFMe6jDor+IMxaGqoDIanqBIdApJ+BTiP+cCyVNPTKm3iH8/H
         O3obNXD59bQPmLV66j7+I3gBKLaRKTdnIqPkzqcEyKhKVyMmOh1dPBIn/4A1eJCTscHg
         c70YjiSnCGSkaiy3hqZ7ElZ7urayEzJgXZ16vl1m4p956En12uKKdzo5+m6pzi2XHf4A
         JBnO8WWS4TunrqAe6trZD1ap9z0gLXpGwekcyYp1TJvqn36BuH/DoFUEWelpFWDWdalg
         FcOVhcmRi+PACuaGfnF4x8VDQ1dCOFveoE6jzWFNvCWL5MEUqTpG3+yR3zjKpiePn84B
         Ienw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DPWAQmp2yDjy/DHek0j+8eSiCuiFKa3tnWQvcUVIVfI=;
        b=TVezs3oK2F8uo3e9lQflCQguOnunmAvgXisEOGYCAr6pkXdSg6REqTBo0EXcIoZl6Z
         +5ZbvLjIG4ng1TJNIxiPuEFRtBs0THT2Fx1ERL7QmIHHoGeRvTm7VvvFK2Zm9f/9F3mG
         nXLvfLo+x9D+vitO4BcJkDGhG5CzF0pYkDDX/avziKEET0Z3y47rDCB6OAT7ZkL2RY71
         k26zXLXSkd03fhPUzRdHMHiPl7ZRvwbXkDHBZTAkObZNkY3Q7kW3vQEPLLDQZfDK4TOo
         6EftL0wcsb7Ooc4UU+nKYzjXLLRgR34rrQfoWD/7LoDpWogSda670VdAGH5LzM7Te+Sn
         fq6A==
X-Gm-Message-State: AOAM533W70+DCkasVK31e/uSBnLPc6DHAcBBeOm/XYRcdJ19U6Q2x2in
	RIq2FSvmQ+nVoXCeTzN7QbWI3WWln/IrUUJ3R0E=
X-Google-Smtp-Source: ABdhPJwj86+d9ry/g2ZARayGoBeilhkRyrWFzpl1+M6182xSbyCS/w10XgXMRZkU/naHRt+qo7lLDzew0Fo3080EzTI=
X-Received: by 2002:aca:aac7:: with SMTP id t190mr3782692oie.96.1628606061439;
 Tue, 10 Aug 2021 07:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com> <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 10 Aug 2021 10:34:10 -0400
Message-ID: <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com>
To: Jonathan Tobin <Tobin@augustusaero.com>
Message-ID-Hash: 4VWWDS3TYOXEHKJ4JDLEH5QWHBTVH3Q5
X-Message-ID-Hash: 4VWWDS3TYOXEHKJ4JDLEH5QWHBTVH3Q5
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4VWWDS3TYOXEHKJ4JDLEH5QWHBTVH3Q5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8944879573117354235=="

--===============8944879573117354235==
Content-Type: multipart/alternative; boundary="000000000000c56f9205c935658d"

--000000000000c56f9205c935658d
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 10, 2021 at 9:39 AM Jonathan Tobin <Tobin@augustusaero.com>
wrote:

> Hi Brian,
>
> No - only intention would be to receive for 10 seconds and save data. What
> would you suggest?
>

Modify the program to write out to a file on a high performance drive and
receive smaller parts at a time from UHD.

Brian

>

--000000000000c56f9205c935658d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Aug 10, 2021 at 9:39 AM Jonathan =
Tobin &lt;<a href=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Brian,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
No - only intention would=C2=A0be=C2=A0to receive for 10 seconds and save d=
ata. What would you suggest?</div></div></blockquote><div><br></div><div>Mo=
dify the program to write out to a file on a high performance drive and rec=
eive smaller parts at a time from UHD.</div><div><br></div><div>Brian</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000c56f9205c935658d--

--===============8944879573117354235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8944879573117354235==--
