Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C49261784F2
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 22:33:35 +0100 (CET)
Received: from [::1] (port=49878 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9FAS-0002GH-JX; Tue, 03 Mar 2020 16:33:32 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:42636)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j9FAN-0002AA-VH
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 16:33:28 -0500
Received: by mail-lj1-f172.google.com with SMTP id q19so4290024ljp.9
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 13:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JvGmAMZT3FOQQi7V/maAORgEFhjFfP/BzJ19mmKkZnM=;
 b=ad6wuTgv5n7tOcPo5hjh/k55slM1kRPjnXG9unrscBM7iD6JYh5/AOSRBYzl5z/zeO
 7GWVXZnq+8A2s4Lx6z87TR0JxT6WcOJspicIPpgpdoLTRJzy51zLPM/GFC7NEo5epfOt
 0FAquBb1SsTlmqpLNPlB4LgniUXiiyDd8Kw7WACVfuDa0iuwgNKfMcr878hnjZrDkCQw
 JiVYR9lTPoMSSwtzwNg4IL5CLsXZAOAuucWlVPrIRqRqKn/HwuBVOEMsESXTvK0ym1oP
 eF27g+KkDfRur35RXUvYPYTYVilNDv2ra/9IV2x4EPL2NxKFFIqERFtAUT7c0DCeZd3i
 +FdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JvGmAMZT3FOQQi7V/maAORgEFhjFfP/BzJ19mmKkZnM=;
 b=aMJk37yiRfD6wW1zo8lx3YMLwVxaNtSlVRALfOLQ7hII0cG9IL5Gk9Uv9MR4/ursRw
 484maCD980I3HiKEN71Eg+v6CQGf4HpKXVUZH1KVj5JNTDG/Dr381MF2Ql5HY2OoyuD8
 Hcp1d+/gCf0OO3yT+WIWU7czKCfVZkIBMJnA1jI78Is9leXh/D3xMUAzWQ7WIUWsn9OK
 zdDldUZ6qrurWmpGDTodJc6oE9mBc7/0/4wJVEkQQKXQMFYBwjIrgTZQzPdlLPYxZQWl
 dajyX/DaKZi+WVHo+IWVk5Tse8aBElUHV9nmvmuYuxRVjdK9JwCxaldsShUJ0IX4va43
 usfg==
X-Gm-Message-State: ANhLgQ2fd472IbDNo3Vl4aHQXAEufL2GnqDorHhO66YJzAdXSQhcwbbq
 HKcCwAoo/6H1h9jTM85/z6qqTnC8pdPpckR8BGaft1UG
X-Google-Smtp-Source: ADFU+vsi8j8qqpcMkc5RtI7/FY7m1rNUj+sKujlu2JfXIINHQWFzWh/FfmCUYuaa0naYS2D8dOLazWn26rFWRs2fA5g=
X-Received: by 2002:a2e:8512:: with SMTP id j18mr3472342lji.12.1583271166781; 
 Tue, 03 Mar 2020 13:32:46 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxuRAKSsG9h6QsFnkT8SFi9Q=MrCLLE2CNNxNn=A0ccF4Q@mail.gmail.com>
In-Reply-To: <CAPRRyxuRAKSsG9h6QsFnkT8SFi9Q=MrCLLE2CNNxNn=A0ccF4Q@mail.gmail.com>
Date: Tue, 3 Mar 2020 15:32:45 -0600
Message-ID: <CANf970a3a-ZPbP5TRRXnPsm9ir6TZboqjrw=ofwZus+8BnUovw@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] Buffer clearing after error 'D' USRP N210
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5272317050107454713=="
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

--===============5272317050107454713==
Content-Type: multipart/alternative; boundary="0000000000007abead059ffa0bae"

--0000000000007abead059ffa0bae
Content-Type: text/plain; charset="UTF-8"

Ivan,

To flush the RX buffer, I think your best bet is to destroy and recreate
the streamer. That being said, [D]ropped packets are usually indicative of
some deeper host issue. Are you able to run without dropping packets at
lower rates?

Sam Reiter


On Mon, Feb 24, 2020 at 4:02 AM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello. I use the N210 board for scanning with frequency tuning. And with the 'D' error, I have problems with correctly detecting the signal frequency. In this regard, the question. How do I flush the buffer in N210?
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007abead059ffa0bae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ivan,<div><br></div><div>To flush the RX buffer, I think y=
our best bet is to destroy and recreate the streamer. That being said, [D]r=
opped packets are usually indicative of some deeper host issue. Are you abl=
e to run without dropping packets at lower rates?</div><div><br clear=3D"al=
l"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div><br>=
</div></div></div></div></div></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 24, 2020 at 4:02 AM I=
van Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div><di=
v id=3D"gmail-m_-6680724724514635520gmail-m_-264610968090117436gmail-tw-tar=
get"><div id=3D"gmail-m_-6680724724514635520gmail-m_-264610968090117436gmai=
l-kAz1tf"><div id=3D"gmail-m_-6680724724514635520gmail-m_-26461096809011743=
6gmail-tw-target-text-container"><pre id=3D"gmail-m_-6680724724514635520gma=
il-m_-264610968090117436gmail-tw-target-text" style=3D"text-align:left" dir=
=3D"ltr"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><spa=
n lang=3D"en">Hello. I use the N210 board for scanning with frequency tunin=
g. And with the &#39;D&#39; error, I have problems with correctly detecting=
 the signal frequency. In this regard, the question. How do I flush the buf=
fer in N210?</span></font></span></pre></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007abead059ffa0bae--


--===============5272317050107454713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5272317050107454713==--

