Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 631E6251DA2
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 18:55:11 +0200 (CEST)
Received: from [::1] (port=39574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAcE1-0006yV-L1; Tue, 25 Aug 2020 12:55:09 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:40937)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1kAcDx-0006qM-50
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 12:55:05 -0400
Received: by mail-qk1-f176.google.com with SMTP id z3so7276291qkz.7
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 09:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cQvmMh00swt3eTXIMFhHAL0PCbaV0wUokYOIxVnxoeo=;
 b=Dy7zIBqJSI9Y8+8TmqDcYSZ7uVTVdqz5Q6SiWzQlYp37Xi9Rif6Nl9bz06nmhM820b
 Y6aloqhZKymHuBgZ4Diqa4R6LMBXkZEXZt84mjHS1eI0h4niXEGnTOpaQLqD1vQ+X205
 zTtODGF1I3enBAapMhuhyi+B4ZcIQLQRpz0cEKGOt6VJT7V7Q+nWEgprnAoHyGZZ1yN9
 Zj0o/FWxu/uDaNuVP0QmaAzu0qhk3SjLmO5qJ0nLnCJMC6n1ga9kes5VwiZPDAK0Ms5J
 9rPb05epgRGYXBvOcdix5bqXCkgfkmeFDt/1F7tZ7ccEwSQTtS2qwMH8Wh5RXVPAZ0xy
 XSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cQvmMh00swt3eTXIMFhHAL0PCbaV0wUokYOIxVnxoeo=;
 b=EK0EJH6OsWGkvJ3XBkgTDGfkxR7ZC1qYoIR3BjEauhFf51Yl/wqE9yFKtv4/d7jZdn
 dXb2cGhJ8gVmq/D00AN1zVr+NNwp/PMtxWvl5LnTIv54sBXkX4yUmtBl5n+pOoFiePmZ
 9g2qJLdBeS+TzyRG8zwI2P0brQ52OtkWnIIt6nEjaDzy+R63KB0FM1aYLF1rjwA4qusx
 +ynfyo8TnLIkGhBoHlZJ12C91YVWp33BWE43o8XQnxjy7xEQaH14tgPLV4uT5up4+Sb3
 JxfBFUsJffVWAL0aApqBfMqlHOGY5liBM7QA9WVARR608Oduwobi3uD7bhJ6TGXbWqrY
 UdEA==
X-Gm-Message-State: AOAM5334zYAANNRQlsrHEzG8k/x+aYOuh27UHyHiCU9P1vdE9gUQuhMF
 RsCCKan2bXL6t9MxzAkeeM+OL8upFF2ZQOujohE=
X-Google-Smtp-Source: ABdhPJzbltQY09UQBP26TQQFBhWI+91T8/8gjzMvVyfZhI2IyHsia7FyGV4utXYNFEj5LtMTmw9SyYFz2a1aOwHazao=
X-Received: by 2002:ae9:f106:: with SMTP id k6mr9735861qkg.3.1598374463721;
 Tue, 25 Aug 2020 09:54:23 -0700 (PDT)
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
 <CAB__hTRHAZOjROC3eEnN25rB=V_reRFusJmrz_9ZaxqyoBej5A@mail.gmail.com>
 <d4b7d58acf9e4987b94c69cd2e0e32b4@kongsberg.com>
In-Reply-To: <d4b7d58acf9e4987b94c69cd2e0e32b4@kongsberg.com>
Date: Wed, 26 Aug 2020 00:54:12 +0800
Message-ID: <CACjmV_nsf1MboeJNt8xQiyL_mbOvwc1c8gfWdYWT15w7m6kh9A@mail.gmail.com>
To: Andreas.Bertheussen@kongsberg.com
Cc: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
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
From: Damon qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Damon qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============7660476921783243723=="
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

--===============7660476921783243723==
Content-Type: multipart/alternative; boundary="00000000000020d5bb05adb68e2c"

--00000000000020d5bb05adb68e2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

Great job. Hope this issue can be solved as soon as possible.

Best regards,
Damon

On Wed, 26 Aug 2020 at 00:42, <Andreas.Bertheussen@kongsberg.com> wrote:

> Thanks Rob.
>
>
>
> I have registered the issue in
> https://github.com/EttusResearch/uhd/issues/367 and nagged their support
> email.
>
>
>
> Andreas.
>
>
>
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* 25. august 2020 15:59
> *To:* Bertheussen, Andreas <Andreas.Bertheussen@kongsberg.com>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Issues with multi-usrp and UHD
>
>
>
> Hi Andreas,
>
> You might want to verify that benchmark_rate also misbehaves if you use
> "--ref=3Dexternal --pps=3Dexternal". I wasn't able to do this because I d=
on't
> have an external reference handy. Regarding reporting of the bug, you cou=
ld
> do so with gihub as you suggested, but I have been lazy in the past and
> just sent an email to "support@ettus.com". This generally just causes
> them to create the issue.
>
>
>
> Regarding UHD logging, take a look at this link
> <https://urldefense.com/v3/__https:/files.ettus.com/manual/log_8hpp.html*=
loghpp_logging__;Iw!!L8f3-wPVSng!S9U4pGFMepWOhBZhYhMgM4Eo2h_07u38lX5tJPAyLi=
WoNH0NpuAgOZuZcxpPHq1XSw3UQgcn0A$>.
> Below are the commands I used in Ubuntu prior to running the program.  Th=
is
> capability should work with any program that uses UHD including your cust=
om
> program. For my own custom program, I also use the UHD logging commands i=
n
> my source code such as UHD_LOGGER_INFO() and UHD_LOGGER_DEBUG() to print
> messages to the user rather than using std::cout.
>
>
>
> export UHD_LOG_LEVEL=3Dtrace
>
> export UHD_LOG_CONSOLE_LEVEL=3Dtrace
>
> export UHD_LOG_FILE_LEVEL=3Dtrace
>
> export UHD_LOG_FILE=3Duhd.log
>
>
>
> Rob
>
>
>
> On Tue, Aug 25, 2020 at 8:21 AM <Andreas.Bertheussen@kongsberg.com> wrote=
:
>
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
>

--00000000000020d5bb05adb68e2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andreas,<div><br></div><div>Great job. Hope this issue =
can be solved as soon as possible.</div><div><br></div><div>Best regards,</=
div><div>Damon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, 26 Aug 2020 at 00:42, &lt;<a href=3D"mailto:And=
reas.Bertheussen@kongsberg.com">Andreas.Bertheussen@kongsberg.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"NO-BOK">
<div class=3D"gmail-m_-3477244464925967687WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Thanks Rob.<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I have registered the issue i=
n
<a href=3D"https://github.com/EttusResearch/uhd/issues/367" target=3D"_blan=
k">https://github.com/EttusResearch/uhd/issues/367</a> and nagged their sup=
port email.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Andreas.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">From:</span></b><span lang=3D"EN-US" style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif"> Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
<br>
<b>Sent:</b> 25. august 2020 15:59<br>
<b>To:</b> Bertheussen, Andreas &lt;<a href=3D"mailto:Andreas.Bertheussen@k=
ongsberg.com" target=3D"_blank">Andreas.Bertheussen@kongsberg.com</a>&gt;<b=
r>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Issues with multi-usrp and UHD<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hi Andreas,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">You might want to verify that benchmark_rate also mi=
sbehaves if=C2=A0you use &quot;--ref=3Dexternal --pps=3Dexternal&quot;. I w=
asn&#39;t able to do this because I don&#39;t have an external reference ha=
ndy. Regarding reporting of the bug, you could do so with gihub=C2=A0as
 you suggested, but I have been lazy in the past and just sent an email to =
&quot;<a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.=
com</a>&quot;. This generally just causes them to create the issue.<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Regarding UHD logging, take a look at this <a href=
=3D"https://urldefense.com/v3/__https:/files.ettus.com/manual/log_8hpp.html=
*loghpp_logging__;Iw!!L8f3-wPVSng!S9U4pGFMepWOhBZhYhMgM4Eo2h_07u38lX5tJPAyL=
iWoNH0NpuAgOZuZcxpPHq1XSw3UQgcn0A$" target=3D"_blank">
link</a>. Below are the commands I used in Ubuntu prior to running the prog=
ram.=C2=A0 This capability should work with any program that uses UHD inclu=
ding your custom program. For my own custom program, I also use the UHD log=
ging commands in my source code such
 as UHD_LOGGER_INFO() and UHD_LOGGER_DEBUG() to print messages to the user =
rather than using std::cout.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">export UHD_LOG_LEVEL=3Dtrace<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">export UHD_LOG_CONSOLE_LEVEL=3Dtrace<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal">export UHD_LOG_FILE_LEVEL=3Dtrace<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">export UHD_LOG_FILE=3Duhd.log<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Aug 25, 2020 at 8:21 AM &lt;<a href=3D"mailt=
o:Andreas.Bertheussen@kongsberg.com" target=3D"_blank">Andreas.Bertheussen@=
kongsberg.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<p class=3D"MsoNormal">Rob<br>
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
se is prohibited, if not otherwise
 explicitly agreed with KONGSBERG. If received in error, please delete it i=
mmediately from your system and notify the sender properly.<u></u><u></u></=
p>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--00000000000020d5bb05adb68e2c--


--===============7660476921783243723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7660476921783243723==--

