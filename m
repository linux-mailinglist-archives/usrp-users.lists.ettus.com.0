Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C200137BB7
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 20:01:05 +0200 (CEST)
Received: from [::1] (port=53482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYwhC-0006PU-Um; Thu, 06 Jun 2019 14:01:02 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:40667)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1hYwh8-0006Dq-MA
 for usrp-users@lists.ettus.com; Thu, 06 Jun 2019 14:00:58 -0400
Received: by mail-oi1-f170.google.com with SMTP id w196so2230607oie.7
 for <usrp-users@lists.ettus.com>; Thu, 06 Jun 2019 11:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KwtZD6T+Kw8OWv9oKdD6mPV1BKPkfMGf3PWJYuIirW4=;
 b=CZKYShJosgYG4vMtdRSSS40DJf9sjlUTQhCGqEwEoLHszWzvJFsc1hE8PdvGI4QuII
 HAiOT6AhbertnMvzXgIgZFk1rAzc1PRPc/dXz7azdKSjUJYcsGL0AFdHq3YcGcbOo56J
 OyE8xqLqAKBcaLMQaW+coYZ3bARx0+46QUDjghoiMslehDPg5VsHsEW/f3GvOwLHGoMB
 AItihJNrzUT5JIHaHnUoZlP5oj30PfNh0gB3ViPpZSG5Cqcz+h7tsbD5YuqqTMEMFD+P
 v/+kRRFB1ZaRZiSNe8YI55IiIE7DQwRpfdAZGq64wBXyY6rDlObR9ZALX4qpI0dD8TSX
 bUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KwtZD6T+Kw8OWv9oKdD6mPV1BKPkfMGf3PWJYuIirW4=;
 b=TY8iY+04oGMcN5B4K+krMEcuknN6dS55sfbjiQK6KupT5AxFGca8BgvlvAVKud3mbH
 DXQoDTQfw62607+dhtpUcV71kJLKkZ97tsIvRAdKrv6CBF3SWuCu1BqwZp9s0T8q/TWf
 WDQmuPczSoU/deVyrJdJIOeMSde8mvzYQfNwHBQBD4GoDS7Eq1X42Udlufzm3kTJDRBy
 6Afaglf6v8NuGpja/1MoD+PRve9q2AdkR4pw/R6DC3Kw6l7nlEnkM9opNuxMVqaxnmgv
 hoHg8h8ZHiK5MXA4WESBqii7hNn4SABOWEax7K6g7OrsTZKz0M67+e20LEJgd9CslEWD
 9/WA==
X-Gm-Message-State: APjAAAVGGmrru24FeAMFVBGsppNs7JN7YnXLjwErwHxaSJ69eflt32mv
 CpP2WieFv2SHqhu93s4dnKrzDcp3ucpBp3RHjzWc/vDFt44=
X-Google-Smtp-Source: APXvYqwH1dsMfaDp5+UUjN60gZfZSPpwtaa+W03nHINRqU8BA2uXgA269tNt/jOcA3naeL1v7E8J+AzTPO7b1Fu72Jo=
X-Received: by 2002:aca:fc92:: with SMTP id a140mr957915oii.19.1559844017888; 
 Thu, 06 Jun 2019 11:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com>
In-Reply-To: <8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com>
Date: Thu, 6 Jun 2019 13:00:00 -0500
Message-ID: <CACaXmv8D+NtFt0+ctcuQifEF9sU5-WNeL-fH5JvgrSO-W_4czw@mail.gmail.com>
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Subject: Re: [USRP-users] UHD Comms Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4332406720532490776=="
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

--===============4332406720532490776==
Content-Type: multipart/alternative; boundary="0000000000009773f0058aab7ceb"

--0000000000009773f0058aab7ceb
Content-Type: text/plain; charset="UTF-8"

Hello Mark:

This may indicate a hardware problem.  What is specifically eliciting the
error?  Does it occur with every time that there is a tune request?  Are
you running your own program, or one the example programs, such as
"rx_samples_to_file"?  Could you please try upgrading to UHD 3.14.0.0, and
re-running your test, and let me know your results?

--Neel Pandeya



On Thu, 6 Jun 2019 at 12:47, Mark Koenig via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Please help, with the error I am seeing.
>
>
>
> I am currently using an X310 with a UBX160 daughtercard and I get the
> error below when changing the frequency parameters of the radio.
>
>
>
> RuntimeError: EnvironmentError: IOError: Radio ctrl (A) packet parse error
> - AssertionError: packet_info.packet_count == (seq_to_ack & 0xfff)
>
>   in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)
>
>
>
>
>
> I am currently running UHD 3.9.7, but have also seen a similar error with
> 3.10.2
>
>
>
> Thanks
>
>
>
> Mark
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009773f0058aab7ceb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Mark:</div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">This may indicate a hardware problem.=C2=A0 Wh=
at is specifically eliciting the error?=C2=A0 Does it occur with every time=
 that there is a tune request?=C2=A0 Are you running your own program, or o=
ne the example programs, such as &quot;rx_samples_to_file&quot;?=C2=A0 Coul=
d you please try upgrading to UHD 3.14.0.0, and re-running your test, and l=
et me know your results?</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">--Neel Pandeya</div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif"><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 6 Jun 2=
019 at 12:47, Mark Koenig via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">







<div bgcolor=3D"white" lang=3D"EN-US">
<div class=3D"gmail-m_3955019685721000873WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Please help, with the=
 error I am seeing.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I am currently using =
an X310 with a UBX160 daughtercard and I get the error below when changing =
the frequency parameters of the radio.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">RuntimeError: Environ=
mentError: IOError: Radio ctrl (A) packet parse error - AssertionError: pac=
ket_info.packet_count =3D=3D (seq_to_ack &amp; 0xfff)<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0 in uint64_t ra=
dio_ctrl_core_3000_impl::wait_for_ack(bool)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I am currently runnin=
g UHD 3.9.7, but have also seen a similar error with 3.10.2<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Mark<u></u><u></u></s=
pan></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009773f0058aab7ceb--


--===============4332406720532490776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4332406720532490776==--

