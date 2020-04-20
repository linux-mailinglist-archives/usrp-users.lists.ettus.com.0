Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A49621B1933
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 00:12:50 +0200 (CEST)
Received: from [::1] (port=48114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQeen-0002nv-9H; Mon, 20 Apr 2020 18:12:49 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:38628)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jQeek-0002gM-4Z
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 18:12:46 -0400
Received: by mail-oi1-f169.google.com with SMTP id r66so10299093oie.5
 for <usrp-users@lists.ettus.com>; Mon, 20 Apr 2020 15:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9lxFwCGTUK3F+GppXAGiVXyb5gX+rRIfxA0m14uz0L8=;
 b=gjXD7z+6paI6UcnyWtArd+TIq3EsuWLr1ovChsEG1lCCU7Z6XyzGd4r5FF4x8jdsz4
 7d+/cLqzeBiiyRfkblfzmdMDuorhMKo3yCKI1n+7Ay4lbOPZdNK3EPaErcHVtJqOtIuH
 S26b/savaBj+gjYwa3BnddHLGj4kxm7/IozI7JVXyQTP22LyuymWo/e7kt6Hd3NhqdeO
 uXI8Fotg48AioXDBeo/P1N+swGhagOaFiMfv3QW66cqMzHyoouqYPVDEdAqj/oV+T2Wo
 pYUnb/9w86GHLvOvMeXptmfke9FyCv2ioBP8IPFzTLIVE6b4QYfEblEMZInshYjpsMUI
 vApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9lxFwCGTUK3F+GppXAGiVXyb5gX+rRIfxA0m14uz0L8=;
 b=FGVFoFhLhjNjyQa2Ed1MO3SFXZxRumFfJgj87dq2Zhd/NFNCXPkiAemBSzSc0bYJjM
 PB6csZuo3qcOXOeIR9pxd4a9UVpDGSOLzSj3AKJBBmOP/9LvxUtaoEZKNw/4ypm3V5U8
 Y05vEJn3CO2GuLjnmJop60scxEHx+0aJIZCHdz7b2M0R5f0EZSXxMApVsdWYbCpaedun
 c6iekwZNYJXpbAanv/I0diEb6FR2Pe73vURGgtYXznvd8wMzObM1rETTj5of9knvsYOm
 CrP/XvAt2a0UUY9nYyIa2C5nayIG/uN5ndh3jjhU+aPw15jOpiPO9iOoeuVrzzN/eoKv
 oh2w==
X-Gm-Message-State: AGi0PuYpc5Ev5WdvlVN0kfVog4nbZYRe9FCRqpIwaBB/NrNCVhTRzIGX
 FnUckBT3w4ALiFl//zVG8hQeLrXdy01fPSNUqiQ=
X-Google-Smtp-Source: APiQypIu464ZUzRbH7Eps42AZ5YNrhuilScSU+rgToU/Xs11pB7oLpo3umiQ1TsW62fAFkmrckMERXcUiL5iwwUHVO8=
X-Received: by 2002:aca:fd93:: with SMTP id b141mr1139520oii.177.1587420725437; 
 Mon, 20 Apr 2020 15:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <eb1fa60c44c4410a814e83a4fdf45df9@MLBXCH12.cs.myharris.net>
In-Reply-To: <eb1fa60c44c4410a814e83a4fdf45df9@MLBXCH12.cs.myharris.net>
Date: Mon, 20 Apr 2020 18:11:53 -0400
Message-ID: <CAEXYVK4synzzXW-SOAJYXUTWyAdn5_iL_CL=Nx1YNX6+6dokAw@mail.gmail.com>
To: "Harris, Dan" <Dan.Harris@l3harris.com>
Subject: Re: [USRP-users] Cygwin build of E310_SG3
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8230952380522446520=="
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

--===============8230952380522446520==
Content-Type: multipart/alternative; boundary="00000000000072f8d005a3c03009"

--00000000000072f8d005a3c03009
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 2:24 PM Harris, Dan via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> Is the windows Cygwin build of the E310_SG3 target being maintained?
>
>
>
> I have been following the build instructions and have Vivado 2019.1
> installed.  It is failing in multiple points in the generation of the IP.
> I had to correct some paths that should have been windows-ized but did no=
t
> seem to be in tools/make/viv_hls_ip_builder.mak.
>
>
>
> I can build at least one of the components (IP fifo_short_2clk), so I am
> somewhat confident that Vivado is installed correctly, and that my =E2=80=
=98source
> setupenv.sh=E2=80=99 was done properly.
>

This seems strange.  You need to have Vivado 2018.3 installed for the
setupenv.sh to run properly.  Try installing 2018.3 and ditching 2019.1
first.

Also, just as a point of reference, I've successfully used WSL (linux on
windows) to install Vivado and build successfully.  Running in cygwin
sounds like a real pain, and I fully recommend linux (native or wsl) for
building.

Brian

--00000000000072f8d005a3c03009
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Apr 20, 2020 at 2:24 PM Harris, D=
an via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6735098668517692048WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is the windows Cygwin build of the E310_SG3 target b=
eing maintained?
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have been following the build instructions and hav=
e Vivado 2019.1 installed.=C2=A0 It is failing in multiple points in the ge=
neration of the IP.=C2=A0 I had to correct some paths that should have been=
 windows-ized but did not seem to be in tools/make/viv_hls_ip_builder.mak.<=
u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I can build at least one of the components (<span st=
yle=3D"font-size:9pt;font-family:&quot;Lucida Console&quot;">IP fifo_short_=
2clk</span>), so I am somewhat confident that Vivado is installed correctly=
, and that my =E2=80=98source
 setupenv.sh=E2=80=99 was done properly.</p></div></div></blockquote><div><=
br></div><div>This seems strange.=C2=A0 You need to have Vivado 2018.3 inst=
alled for the setupenv.sh to run properly.=C2=A0 Try installing 2018.3 and =
ditching 2019.1 first.</div><div><br></div><div>Also, just as a point of re=
ference, I&#39;ve successfully=C2=A0used WSL (linux on windows) to install =
Vivado and build successfully.=C2=A0 Running in cygwin sounds like a real p=
ain, and I fully recommend linux (native or wsl) for building.</div><div><b=
r></div><div>Brian</div></div></div>

--00000000000072f8d005a3c03009--


--===============8230952380522446520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8230952380522446520==--

