Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A60D01CDE2A
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 17:08:47 +0200 (CEST)
Received: from [::1] (port=41756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jYA2t-0000XD-3T; Mon, 11 May 2020 11:08:43 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:46693)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jYA2p-0000SH-HZ
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 11:08:39 -0400
Received: by mail-ot1-f53.google.com with SMTP id z25so7761163otq.13
 for <usrp-users@lists.ettus.com>; Mon, 11 May 2020 08:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g8n2Y5x/BUd1Ei0XY7gW4RHUQoZcNJ7sZRRy3xQf94c=;
 b=ZZN5swI+ave1lgRKF+aXxhByQnCLKDDjMuMVsXs6Bl1FJmeK7o9yJ32WNb+Ysr8t/0
 oW1MlSZINQWp5nE1sRokCITAWsiY/qaF8MJXqW8u8IOsr5nCYP6vuJlKak2UwTznXzZv
 W7pwft4MzbLumqEPA9Ub3JKI1JRCBTU2z39R0NUwPVgsuvZd0LpbRXF3dVSrVzSuqlOx
 tD07UW0Dy42vRXhm3lylndkDblEeB7khU/jqm1bpBj7j9rUKLiGJhcxJVnlc0MVYYksC
 O/dvhKefadwffyag/5Qe1q9mGlCnnyhsjfoh8bCCcNfhE35LembS9y991EvQwIqmpGla
 SfZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g8n2Y5x/BUd1Ei0XY7gW4RHUQoZcNJ7sZRRy3xQf94c=;
 b=BJxj3EEIwpVgpyrubxbgKR5wnBa+x4L0rujam3prFhfZtoKRLKQGVwVOQYnilAwTGa
 bKwsTCppFIrGQqdmJ47Hh/gm6iJWpdkraHgoQg8usfIlBdhP+J+4oU951cXpcEksB0uD
 8xgA79VqNlSm3n9jkmS52vm0vIsVUBPvWtFCuBkKWIIU6t048LbyS/hQgBHr5T81YiF3
 FCUejBsS1hsqJ1Vne/OS0KKQQIUXhwRngzQUaV6nHh40qTscIxt3n+2fsSNN+WN9bOfy
 WDAG+X2GMhl4eunC8f3/gH4f19mkgGMXWByIRcQ9agj0xqwC3newMiuzXVSNXlmujadV
 mDlw==
X-Gm-Message-State: AGi0PuabJHOpTBKv6ZMmIO+OL/8V52/LSjUUnDZtDVTrvX2vMMtqXBfb
 u6Wr/Z/SIbX/5LNcexZVVSQFCKSqw2Q0Ja3yvUZDZLpVrHE=
X-Google-Smtp-Source: APiQypJoG35ADHgc0EXfLGEnSGP2R5oOqS9j4WJk9zzOKQ2JCtWgk5QBuM5KiTjXxd41jSoiC+SmlSvcplTdwHuuwp0=
X-Received: by 2002:a9d:d07:: with SMTP id 7mr13432942oti.338.1589209677939;
 Mon, 11 May 2020 08:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPgGrfNJSnX=W5dmKOSnJqA4Ud1-VirMDynjRynTnD_brw@mail.gmail.com>
In-Reply-To: <CAP2eGPgGrfNJSnX=W5dmKOSnJqA4Ud1-VirMDynjRynTnD_brw@mail.gmail.com>
Date: Mon, 11 May 2020 11:07:45 -0400
Message-ID: <CAEXYVK6nt2wNTH+f42WNYzoJRVgGLAqsS6GJLsRO8=7BcM4xQw@mail.gmail.com>
To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Subject: Re: [USRP-users] USRP X310 sample rate of 184.32 MHz
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3364636032811458689=="
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

--===============3364636032811458689==
Content-Type: multipart/alternative; boundary="00000000000053cfa305a560b618"

--00000000000053cfa305a560b618
Content-Type: text/plain; charset="UTF-8"

On Mon, May 11, 2020 at 6:20 AM Carlos Alberto Ruiz Naranjo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I'm using the USRP X310 with CBX-120. I set the radio sample rate to
> 184.32 MHz but I have the following message:
>
> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device:
> 184.32 MHz. Actual rate is: 200 MHz.
>
> Isn't it possible to set it to that sample rate?
>

You need to set the master_clock_rate in the arguments of the USRP to be
184.32MHz.

  https://files.ettus.com/manual/page_configuration.html

Brian

--00000000000053cfa305a560b618
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, May 11, 2020 at 6:20 AM Carlos Al=
berto Ruiz Naranjo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Hello,<br><br>I&#39;m using the USRP X310 with CBX-120. I set the radio=
 sample rate to 184.32 MHz but I have the following message:<br><br>[WARNIN=
G] [X300 RADIO] Requesting invalid sampling rate from device: 184.32 MHz. A=
ctual rate is: 200 MHz.<br><br>Isn&#39;t it possible to set it to that samp=
le rate?<br></div></blockquote><div><br></div><div>You need to set the mast=
er_clock_rate in the arguments of the USRP to be 184.32MHz.</div><div><br><=
/div><div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/manual/page_config=
uration.html">https://files.ettus.com/manual/page_configuration.html</a></d=
iv><div><br></div><div>Brian</div></div></div>

--00000000000053cfa305a560b618--


--===============3364636032811458689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3364636032811458689==--

