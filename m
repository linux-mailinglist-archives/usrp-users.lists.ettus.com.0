Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA7AA415B7
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 07:58:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B06C5385EB7
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 01:58:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740380306; bh=LoE6jkN+VvBOP5GEaLbif04uOUOSN/dU3i/bCD9wx/c=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tcBbfWFa0B4/TnnNVWUMzuGONksl5Smr4sbdeOGqVoVKthBxE64h+3wtoZBIgKu6N
	 1XTF8znQc51doSwXAT4bjvo0TjcGQVvYC3P/WKZ4ZxgN1n5+cunueK+IJzEx47CMXR
	 aNqIxt2aQsH8Mk12Nm+xpooYDj1IW8ZXHoyWmC/QfK4cVdNETiIDYZ5Mo7lQSFoOF9
	 5wFU0iqOWPd4R0FjL6y9c7pwU4dFKRgSNbcHBAExlEHDmBqUFp/FESX2hwAqpHLQ5q
	 TkkvG25pED6c1B4zpLTIfxMdeSWl2rGYb2ztuFJC7W3mE6Rtscf53ckrLJm/SLj+8l
	 3ONT4HkDDXaBQ==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 628EA385E75
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 01:57:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="eAITSQOf";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e0452f859cso6241768a12.2
        for <usrp-users@lists.ettus.com>; Sun, 23 Feb 2025 22:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740380247; x=1740985047; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZoLWrKMDdykkQQYCC+HzTWljxm0GK1nc/xaOd362BUQ=;
        b=eAITSQOfk5izYePUkDUZ9PGpJhJMzP2aOVPomcB4P62kVm89vhBp8SFKIMglicaX1+
         hTvswfOT/ciJYPdxD1aszxYEK5btP/McSDNZsAtIoozSDGRvx6Ewyxkr8ENBK/mgt38S
         Z2P+w+QC338EUZ77jx2mfrJUDCt7/xyVPoqq5HQ2DiV2KFnEZc11O4U1pq1WODWIp0FC
         hUw9nfsNbI91JR2HyAaq7FMkwhsxs88AZYyujEU5tKHV0UZ2hpKWuNGCj1t2pszVNc5+
         9GAD6OkiDXjVv+V8/KwXqFF8qYQ/ofq+9A0peZk3E1ks850e4AxnVyqVydxSN/EAw9Mg
         riTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740380247; x=1740985047;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoLWrKMDdykkQQYCC+HzTWljxm0GK1nc/xaOd362BUQ=;
        b=F7tgHVUBT+yWEewG8wqDe4AqBvQW15ZG1ebXSZUosHtHmVXh5LnqUU/T/LieFzs/wz
         mfhzG1iVoXJApq+Sptl2F5bSqIrjuHJG8Ny3+aiIKZWu5nBOyFAbFS3Lonec+gWc5w05
         kcNU3YKM8VTK+Yb392ZKvdKrJkhfbID45BBymVE2u77XfJu533UTWMPDQsUDXATK3Wc5
         EuiclZH6scDrPHCB1qrQXO02eajbdZeS+SKnOAReg2wE/jTIVXbb0n4HJVuoBpthsP6d
         LQ1E3ypfgoCygz8I/2QM7GpJWmbR+91epn8TfRSz/KlQvqJzJYBoofbCDHZg7mpnvRId
         GesQ==
X-Gm-Message-State: AOJu0YwaMnV1R9PxJxbMqGuLocdwBu4o6r2OrcOB61mTT1SrMZjnq2sp
	1FmimN0NbeZkbTwTfvUYyl1Dd0KUh6dH8ULZiNexGfy6VgNn8hNFa7VBuwPe6mak4zU4Vo92FRs
	eLmhT96ZFFC43TN2jVGvW7uaPoVHyg4vxrxioRTEo9umioo6nGuXRvw==
X-Gm-Gg: ASbGncubMH1aaDjz0a5fcLTpySCWil520eHogBauRsCP38smrkd23oV1KiD6tdtmLqY
	d1oCF1zmzTpH1FIZfg9Sb0NnZlJn5WgUuiinqmOFxY7tNewO8ynvul+GDlYI9SZtU4LqoO8riGi
	4JmSxRiAUFHH/B43y4mCp/I+gKpkVeC21XWC2HLw==
X-Google-Smtp-Source: AGHT+IFKFmwochc7oQrsJvD2FB4gHHMV4hrMyd1SMX/+PgAHYaNAwcy/k3CDg7dr7DwGsxTIVWmFUl1WsXdfPy1EiT4=
X-Received: by 2002:a05:6402:e02:b0:5d0:8197:7ab3 with SMTP id
 4fb4d7f45d1cf-5e0b70b5fc7mr11780248a12.3.1740380246674; Sun, 23 Feb 2025
 22:57:26 -0800 (PST)
MIME-Version: 1.0
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com> <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com> <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
 <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com> <594aa31a69b35f8e23be755e5075d740@atindriya.co.in>
In-Reply-To: <594aa31a69b35f8e23be755e5075d740@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 24 Feb 2025 07:57:15 +0100
X-Gm-Features: AWEUYZnHGmuBEsakGNPmKoDl9NINsXytucPNh3pEXgUOhqPSZq83Dhro-AIN36M
Message-ID: <CAFOi1A6cNimH2QuNARK_Ls6bss_cWj1Mty0--WHDet69fO4xiA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: GTTUC2DRRVY4XOERAVC5OVJ55OWI6VPF
X-Message-ID-Hash: GTTUC2DRRVY4XOERAVC5OVJ55OWI6VPF
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GTTUC2DRRVY4XOERAVC5OVJ55OWI6VPF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8970891784695246613=="

--===============8970891784695246613==
Content-Type: multipart/alternative; boundary="00000000000060a475062eddda6b"

--00000000000060a475062eddda6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You don't specify a delay, you send one timed command to make the pin go
HIGH, and another timed command to make it go LOW. And the two
command-times should be "your delay" apart.

This may help:
https://www.youtube.com/watch?v=3DppD06ZETnek&t=3D75s&pp=3DygUPZ3Jjb24gdXNy=
cCBncGlv

--M

On Sat, Feb 22, 2025 at 12:12=E2=80=AFPM <kavinraj@atindriya.co.in> wrote:

> Hi,
>    How to give the delay in uhd_usrp_set_command_time(uhd_usrp_handle
> h,int64_t full_secs,double frac_secs,size_t mboard) function?
>
>
>
>
>
>
>
>
>
> On 2025-02-22 00:10, Marcus D. Leech wrote:
> > On 21/02/2025 23:56, kavinraj@atindriya.co.in wrote:
> >> Hi,
> >>   Can I use usleep(1) or any other technique is there for GPIO .
> >>
> > You might be able to use timed commands:
> >
> > https://files.ettus.com/manual/page_timedcmds.html#timedcmds_gen_cmds
> >
> > But since usleep() cannot guarantee any kind of maximum period that
> > your process will go to sleep, it is an unreliable
> >   method when precision and repeatable timing of ANY kind of "doing
> > stuff with external hardware" is required.  Even if
> >   usleep() at microsecond-scale intervals *WAS* reliable and
> > repeatable, there's no guarantee about all the *other* things
> >   that are required to launch a command over a latency-not-guaranteed
> > bus to the external hardware, including kernel-layer
> >   USB drivers, etc, etc.
> >
> >
> >>
> >> On 2025-02-21 23:37, Marcus D. Leech wrote:
> >>> On 21/02/2025 23:22, kavinraj@atindriya.co.in wrote:
> >>>> Hi,
> >>>>  Thanks for answering.
> >>>>  Can you explain me clearly?
> >>>>
> >>>> Thanks.
> >>> I'd suggest, at a minimum, looking at the MAN page for usleep().
> >>>
> >>>
> >>>>
> >>>>
> >>>>
> >>>> On 2025-02-21 23:11, Marcus D. Leech wrote:
> >>>>> On 21/02/2025 23:05, kavinraj@atindriya.co.in wrote:
> >>>>>> Hi,
> >>>>>>    In USRP B205mini-i I am able to access the GPIO Pin. I have to
> >>>>>> create a Pulse in the GPIO pin. I want to make high the gpio pin
> >>>>>> for 1microsecond and low for 999microseconds. How to achieve this
> >>>>>> timings through coding. Can you give me the solution for this?
> >>>>>>
> >>>>>>    In coding after making high I am giving usleep(1) function but
> >>>>>> when I am check in the oscilloscope it is showing 64microseconds.
> >>>>>> How?
> >>>>>>
> >>>>>>
> >>>>> Because an application-land program executing on an ordinary
> >>>>> general-purpose operating system is unlikely to be able to
> >>>>>   achieve repeatable, 1usec-scale timing.  This has nothing to do,
> >>>>> per se, with UHD or USRPs, but rather, to understanding
> >>>>>   how applications execute in a general-purpose operating system
> >>>>> that isn't ruthlessly optimized for "hard" real-time tasks.
> >>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>> _______________________________________________
> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000060a475062eddda6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You don&#39;t specify a delay, you send one timed com=
mand to make the pin go HIGH, and another timed command to make it go LOW. =
And the two command-times should be &quot;your delay&quot; apart.</div><div=
><br></div><div>This may help: <a href=3D"https://www.youtube.com/watch?v=
=3DppD06ZETnek&amp;t=3D75s&amp;pp=3DygUPZ3Jjb24gdXNycCBncGlv">https://www.y=
outube.com/watch?v=3DppD06ZETnek&amp;t=3D75s&amp;pp=3DygUPZ3Jjb24gdXNycCBnc=
Glv</a></div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb=
 22, 2025 at 12:12=E2=80=AFPM &lt;<a href=3D"mailto:kavinraj@atindriya.co.i=
n">kavinraj@atindriya.co.in</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0How to give the delay in uhd_usrp_set_command_time(uhd_usrp_ha=
ndle <br>
h,int64_t full_secs,double frac_secs,size_t mboard) function?<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
On 2025-02-22 00:10, Marcus D. Leech wrote:<br>
&gt; On 21/02/2025 23:56, <a href=3D"mailto:kavinraj@atindriya.co.in" targe=
t=3D"_blank">kavinraj@atindriya.co.in</a> wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt; =C2=A0 Can I use usleep(1) or any other technique is there for GPI=
O .<br>
&gt;&gt; <br>
&gt; You might be able to use timed commands:<br>
&gt; <br>
&gt; <a href=3D"https://files.ettus.com/manual/page_timedcmds.html#timedcmd=
s_gen_cmds" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/ma=
nual/page_timedcmds.html#timedcmds_gen_cmds</a><br>
&gt; <br>
&gt; But since usleep() cannot guarantee any kind of maximum period that <b=
r>
&gt; your process will go to sleep, it is an unreliable<br>
&gt; =C2=A0 method when precision and repeatable timing of ANY kind of &quo=
t;doing <br>
&gt; stuff with external hardware&quot; is required.=C2=A0 Even if<br>
&gt; =C2=A0 usleep() at microsecond-scale intervals *WAS* reliable and <br>
&gt; repeatable, there&#39;s no guarantee about all the *other* things<br>
&gt; =C2=A0 that are required to launch a command over a latency-not-guaran=
teed <br>
&gt; bus to the external hardware, including kernel-layer<br>
&gt; =C2=A0 USB drivers, etc, etc.<br>
&gt; <br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; On 2025-02-21 23:37, Marcus D. Leech wrote:<br>
&gt;&gt;&gt; On 21/02/2025 23:22, <a href=3D"mailto:kavinraj@atindriya.co.i=
n" target=3D"_blank">kavinraj@atindriya.co.in</a> wrote:<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt; =C2=A0Thanks for answering.<br>
&gt;&gt;&gt;&gt; =C2=A0Can you explain me clearly?<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Thanks.<br>
&gt;&gt;&gt; I&#39;d suggest, at a minimum, looking at the MAN page for usl=
eep().<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; On 2025-02-21 23:11, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt; On 21/02/2025 23:05, <a href=3D"mailto:kavinraj@atindr=
iya.co.in" target=3D"_blank">kavinraj@atindriya.co.in</a> wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 In USRP B205mini-i I am able to acces=
s the GPIO Pin. I have to <br>
&gt;&gt;&gt;&gt;&gt;&gt; create a Pulse in the GPIO pin. I want to make hig=
h the gpio pin <br>
&gt;&gt;&gt;&gt;&gt;&gt; for 1microsecond and low for 999microseconds. How =
to achieve this <br>
&gt;&gt;&gt;&gt;&gt;&gt; timings through coding. Can you give me the soluti=
on for this?<br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 In coding after making high I am givi=
ng usleep(1) function but <br>
&gt;&gt;&gt;&gt;&gt;&gt; when I am check in the oscilloscope it is showing =
64microseconds. <br>
&gt;&gt;&gt;&gt;&gt;&gt; How?<br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; Because an application-land program executing on an or=
dinary <br>
&gt;&gt;&gt;&gt;&gt; general-purpose operating system is unlikely to be abl=
e to<br>
&gt;&gt;&gt;&gt;&gt; =C2=A0 achieve repeatable, 1usec-scale timing.=C2=A0 T=
his has nothing to do, <br>
&gt;&gt;&gt;&gt;&gt; per se, with UHD or USRPs, but rather, to understandin=
g<br>
&gt;&gt;&gt;&gt;&gt; =C2=A0 how applications execute in a general-purpose o=
perating system <br>
&gt;&gt;&gt;&gt;&gt; that isn&#39;t ruthlessly optimized for &quot;hard&quo=
t; real-time tasks.<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp=
-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettu=
s.com</a><br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a=
><br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000060a475062eddda6b--

--===============8970891784695246613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8970891784695246613==--
