Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2100B251A56
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 16:00:29 +0200 (CEST)
Received: from [::1] (port=37848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAZUu-0007On-Lw; Tue, 25 Aug 2020 10:00:24 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45222)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kAZUr-0007JQ-5l
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 10:00:21 -0400
Received: by mail-ot1-f54.google.com with SMTP id 5so7596914otp.12
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 07:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YpxvjXghNVj5NlFpb1VnJmh2nTTn3bOHhS9BY+07jJk=;
 b=Estsc5dpOJgRhvDO57uMq7K49oFt9s0ZgwzSZBu9+whESMsGefwzvpG0iNXGugB4bN
 0bSJxvDqfT1PlRU0okvSvDI+faKLN8lCBilefPEIAi3Qqpj9n74ZOkhPxOax3A2yMGG5
 N0c7iX5FqklByDw2MyGL6hUhxA8Je5Kp45+zA6YX8iIDUe7YGgnndIhuHsE1w5nV+orh
 f0oj9jKKEfud+0fJEx2QV7JQ900qlQ/JYg6hWCEmYlyidEPRvuk34I3mTQnnCuCdPfxN
 1M1CNIPdBSmf//5qfao8UqJ/8IOfwD26xdbYHmduEZbyLPOvUKXAglFe7+AHwRkzEEOI
 LdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YpxvjXghNVj5NlFpb1VnJmh2nTTn3bOHhS9BY+07jJk=;
 b=K9n/MoGlyzEBqHiCL16DXSHQcWStyRhTnFRHCsLmIWmxTiih66VikTcjZ7yh5sEIHO
 NEEi/eTto5f+UK5/zJjEJIeU7sPr8lpKrlwCX6xcWXEBDpO5s2pAdIvDcQmdtvko/LpT
 p4+kTWzPHmSS8248tEn2eWCTuFK0NONrXXJIE4u6UXn3bw11uz2SlhRQ0nImn336GCm1
 1aRDe/fGU/9nVltRNdMFSBgQ1OOeXQ675VMQm+YYgEhC19qI9euzjl1Tn8iRnN5oiTQ1
 pYGLMSykUv8c9hB+7gMZh2lQnjwdryjIj9I5dXFINl+6YFFGHEvMVSnoEMp4FikAPZ19
 GSsQ==
X-Gm-Message-State: AOAM531nwwjzU2dJOcXdlh7mt5A7nfWldg8VRxFGkmJiKRgTQDIZL14H
 0gnWRlq2wN8pGtVzY5qTe17JTmUFnTAxz8F8DD9QMg==
X-Google-Smtp-Source: ABdhPJykz1R7JxDJ7jnEo4unZZmDzVOdZ4PF9rXAVkwEVS8YTK+gfXQR9CDZfjDu3VvjVvo7OYZftjDb/DUFWmQ4tpU=
X-Received: by 2002:a9d:604c:: with SMTP id v12mr6699151otj.301.1598363980245; 
 Tue, 25 Aug 2020 06:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
 <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
 <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
 <CAB__hTRbkX2HVfC5zVK7p17W9Q1keFoGMO7K9xC3GfaLVUjWFg@mail.gmail.com>
 <6ced606fafac42f28485978c0a087227@kongsberg.com>
 <CAB__hTQ4yy8Mrbgn4tn1hJj8GmeY4W5hi1sMSbuMhp3cAFELfg@mail.gmail.com>
 <1b04cfb3f883498198f57a793d8c55e7@kongsberg.com>
 <CAB__hTTVvDbo-A5oS3i85y=BdjYVD=Dj9DEHNLk-myhLedxJkg@mail.gmail.com>
 <CAB__hTREsrpeC7tqqTMUkAGbfqePU48maQsSRiCSCRyAqkOVRQ@mail.gmail.com>
 <7f7405916dd74d6893d0ce89e7703a92@kongsberg.com>
In-Reply-To: <7f7405916dd74d6893d0ce89e7703a92@kongsberg.com>
Date: Tue, 25 Aug 2020 09:59:29 -0400
Message-ID: <CAB__hTRHAZOjROC3eEnN25rB=V_reRFusJmrz_9ZaxqyoBej5A@mail.gmail.com>
To: Andreas.Bertheussen@kongsberg.com
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8257400126294276253=="
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

--===============8257400126294276253==
Content-Type: multipart/alternative; boundary="00000000000043f67b05adb41d49"

--00000000000043f67b05adb41d49
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,
You might want to verify that benchmark_rate also misbehaves if you use
"--ref=3Dexternal --pps=3Dexternal". I wasn't able to do this because I don=
't
have an external reference handy. Regarding reporting of the bug, you could
do so with gihub as you suggested, but I have been lazy in the past and
just sent an email to "support@ettus.com". This generally just causes them
to create the issue.

Regarding UHD logging, take a look at this link
<https://files.ettus.com/manual/log_8hpp.html#loghpp_logging>. Below are
the commands I used in Ubuntu prior to running the program.  This
capability should work with any program that uses UHD including your custom
program. For my own custom program, I also use the UHD logging commands in
my source code such as UHD_LOGGER_INFO() and UHD_LOGGER_DEBUG() to print
messages to the user rather than using std::cout.

export UHD_LOG_LEVEL=3Dtrace
export UHD_LOG_CONSOLE_LEVEL=3Dtrace
export UHD_LOG_FILE_LEVEL=3Dtrace
export UHD_LOG_FILE=3Duhd.log

Rob

On Tue, Aug 25, 2020 at 8:21 AM <Andreas.Bertheussen@kongsberg.com> wrote:

> Rob
>
> I ran benchmark_rate --args=3D=3D"addr0=3D192.168.10.2,addr1=3D192.168.11=
0.2"
> --tx_rate 5e6 --tx_channels=3D"0,2"
> And I observed the same issue I described earlier =E2=80=93 mostly that e=
ther
> channels 0,1   or channels  2,3, or very rarely channels 0,2 get enabled.
> When I add =E2=80=9Cskip_dram=3D1=E2=80=9D to args, the channel mapping i=
s correct! It is
> prone to underruns but now I can proceed a bit further with my UHD softwa=
re.
>
> How did you make the trace log? And did you do it to my program or to the
> benchmark_rate program?
>
> It is definitely a severe issue I would expect to be fixed, so I will
> report it. Is creating a Github issue the proper avenue?
>
> Many thanks for helping track this down, Rob!
>
> Regards,
> Andreas.
>
>
> ________________________________
>
> CONFIDENTIALITY
> This e-mail and any attachment contain KONGSBERG information which may be
> proprietary, confidential or subject to export regulations, and is only
> meant for the intended recipient(s). Any disclosure, copying, distributio=
n
> or use is prohibited, if not otherwise explicitly agreed with KONGSBERG. =
If
> received in error, please delete it immediately from your system and noti=
fy
> the sender properly.
>

--00000000000043f67b05adb41d49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Andreas,</div><div>You might want=
 to verify that benchmark_rate also misbehaves if=C2=A0you use &quot;--ref=
=3Dexternal --pps=3Dexternal&quot;. I wasn&#39;t able to do this because I =
don&#39;t have an external reference handy. Regarding reporting of the bug,=
 you could do so with gihub=C2=A0as you suggested, but I have been lazy in =
the past and just sent an email to &quot;<a href=3D"mailto:support@ettus.co=
m">support@ettus.com</a>&quot;. This generally just causes them to create t=
he issue.</div><div><br></div><div>Regarding UHD logging, take a look at th=
is <a href=3D"https://files.ettus.com/manual/log_8hpp.html#loghpp_logging">=
link</a>. Below are the commands I used in Ubuntu prior to running the prog=
ram.=C2=A0 This capability should work with any program that uses UHD inclu=
ding your custom program. For my own custom program, I also use the UHD log=
ging commands in my source code such as UHD_LOGGER_INFO() and UHD_LOGGER_DE=
BUG() to print messages to the user rather than using std::cout.</div><div>=
<br></div><div>export UHD_LOG_LEVEL=3Dtrace</div><div>export UHD_LOG_CONSOL=
E_LEVEL=3Dtrace</div><div>export UHD_LOG_FILE_LEVEL=3Dtrace<br></div>export=
 UHD_LOG_FILE=3Duhd.log<br></div><div><br></div>Rob<div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 25, 2020 at 8=
:21 AM &lt;<a href=3D"mailto:Andreas.Bertheussen@kongsberg.com">Andreas.Ber=
theussen@kongsberg.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Rob<br>
<br>
I ran benchmark_rate --args=3D=3D&quot;addr0=3D192.168.10.2,addr1=3D192.168=
.110.2&quot; --tx_rate 5e6 --tx_channels=3D&quot;0,2&quot;<br>
And I observed the same issue I described earlier =E2=80=93 mostly that eth=
er channels 0,1=C2=A0 =C2=A0or channels=C2=A0 2,3, or very rarely channels =
0,2 get enabled.<br>
When I add =E2=80=9Cskip_dram=3D1=E2=80=9D to args, the channel mapping is =
correct! It is prone to underruns but now I can proceed a bit further with =
my UHD software.<br>
<br>
How did you make the trace log? And did you do it to my program or to the b=
enchmark_rate program?<br>
<br>
It is definitely a severe issue I would expect to be fixed, so I will repor=
t it. Is creating a Github issue the proper avenue?<br>
<br>
Many thanks for helping track this down, Rob!<br>
<br>
Regards,<br>
Andreas.<br>
<br>
<br>
________________________________<br>
<br>
CONFIDENTIALITY<br>
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise explicitly agreed with KONGSBERG. If rec=
eived in error, please delete it immediately from your system and notify th=
e sender properly.<br>
</blockquote></div></div></div>

--00000000000043f67b05adb41d49--


--===============8257400126294276253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8257400126294276253==--

