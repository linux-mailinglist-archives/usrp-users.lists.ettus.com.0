Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F03A4471EB
	for <lists+usrp-users@lfdr.de>; Sat, 15 Jun 2019 21:28:04 +0200 (CEST)
Received: from [::1] (port=54868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcELJ-00020f-Aa; Sat, 15 Jun 2019 15:28:01 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:40553)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hcELG-0001v7-86
 for USRP-users@lists.ettus.com; Sat, 15 Jun 2019 15:27:58 -0400
Received: by mail-oi1-f182.google.com with SMTP id w196so4373165oie.7
 for <USRP-users@lists.ettus.com>; Sat, 15 Jun 2019 12:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fxc+lwNSEUwtVuX0LmG6Z4vugouaLsVzZRn+Pn1cFsk=;
 b=0ITEuaw5PYZOwjVeMDpQCkGZ5OFdq932Y1d7Ol4f/eUU5PRN+BznTky5nSo+ot6qsP
 ur+D17z87/DSSq+N8pxVRFyyb9zVYp7c1hAbnzKEwzD0K4Fyq+2S9+Bwt2y+sCtGI/CQ
 GR8pV3a8Agxw6FS5iSVyUGgpdi3YV8arwmYE7+5xiBOGF6P4N9mRHAULyUmnLiWBpaag
 RKAAvPVmqZ8CV8aTvogwcBs7knByrYWZh7DZ+gJ/niOHPBiCP3bd0o7XzjP6R/YFFLFK
 pkz5lIxIJ5HU7joGZUkOq0EEmYwDiLfJZNOF/lQop49y3acd8JtCUV5kptDzUoZLomd3
 zhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fxc+lwNSEUwtVuX0LmG6Z4vugouaLsVzZRn+Pn1cFsk=;
 b=bceL7IllfX/XV9gOAwUzUBfvA+9naKcqiS9yE5UG5EM/ZbsJ/tPDR7z046qnvEf+k4
 7dB0GEYEPUaqow895/VwMFBjyxRxLwWXNue+V9DRAdtZ1ywjwYrje1AYnW4G5JEw7wfL
 OrN4JSWNUE73AhgR5aKmj+No7fNurHto94qh+OAGArup8F5PEXf+HB7YjcVZFYuKW9mH
 4gX7bFOj7D6N+FPsc9lLsP01OjfKn3MaFSfDh8xIzLf1cO2DtXOd4y4nPN6wis/UxT2d
 fkDqeneRNl9BudtdT4CDHIaQGVwvimIAaxNSMq4vpn4MdTt3nBegzWmTwd9t5nZ2vKSh
 0BOA==
X-Gm-Message-State: APjAAAU+ihLMppOO7it+qA8FIRSmPFHm96Kg5FyV9557lrnaqPkzy5cM
 fHUro+wTy5QB1kwAHrZBOeGAf+ALnxq+ymh+f46uonYJ
X-Google-Smtp-Source: APXvYqwN8nWEwhkp0jMAFjZdu0Hl5MnQqu5WktO0rd8HKVetpKXWRuMdZwKl+kQ49CipbBEeiOVtbcvOHB2G1jlVMwk=
X-Received: by 2002:aca:338b:: with SMTP id z133mr5641921oiz.97.1560626837483; 
 Sat, 15 Jun 2019 12:27:17 -0700 (PDT)
MIME-Version: 1.0
References: <CA+JMMq8vzuW8yHWmkzRODB4MvVgYnWjfNauagmnTM3ENZoNxhg@mail.gmail.com>
 <52507679-27D3-4388-8FD2-F666B682F842@gmail.com>
 <CA+JMMq_hGfmpCAQ4vLnfjkhSOOV+2+ewhG6PFDcpr1iMzb7kUQ@mail.gmail.com>
In-Reply-To: <CA+JMMq_hGfmpCAQ4vLnfjkhSOOV+2+ewhG6PFDcpr1iMzb7kUQ@mail.gmail.com>
Date: Sat, 15 Jun 2019 12:28:06 -0700
Message-ID: <CAL263iy8Nbf6V+eye4BztEcmSCkXYdimhWkM=q2C1=a=FtYyiw@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] X310 master clock rate incorrect?
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: Ian Buckley <ian.buckley@gmail.com>,
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7737969586396474089=="
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

--===============7737969586396474089==
Content-Type: multipart/alternative; boundary="000000000000468abb058b61c0e7"

--000000000000468abb058b61c0e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,

This sounds like there may still be a bug in the new DDC/DUC's since the
change from CORDIC to DDSes [0]. There was a similar issue [1][2] but the
patch was merged in at 3.14.0.0 [3].

Could you try a UHD version pre-3.12.0.0 to see if it resolves the issue?
3.11.1.0 or 3.10.3.0 would be my recommendation.

[0] - https://github.com/EttusResearch/uhd/blob/master/CHANGELOG#L365
[1] - https://github.com/EttusResearch/uhd/issues/211
[2] - https://github.com/EttusResearch/fpga/pull/35
[3] -
https://github.com/EttusResearch/fpga/commit/fdd77081c4aaa2c79d56eb08516bdb=
563f9b6a89


Regards,
Nate Temple

On Sat, Jun 15, 2019 at 11:08 AM Nick Foster via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Yes to both!. That's what led me to believe the rate was wrong. LFRX is D=
C
> coupled, but the arrangement it's in has the next component in the chain
> blocking DC.
>
> I tested with gr-ettus/device3 today, and the bug isn't there. So I think
> there's something in the legacy driver.
>
> Nick
>
> On Sat, Jun 15, 2019 at 11:03 AM Ian Buckley <ian.buckley@gmail.com>
> wrote:
>
>> Go tune WWV, your friendly Federal signal generator?
>> (Also isn=E2=80=99t LFRX DC coupled?)
>>
>> > On Jun 14, 2019, at 11:43 PM, Nick Foster via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > Got a weird one here. I'm using an X310 with UHD 3.14.0.0-87-g4e084337=
,
>> with two LFRX daughterboards installed. Legacy interface with gr-uhd, no=
t
>> gr-ettus, just testing things in the field. When I tune to 15MHz sample
>> rate at 1Msps, I get a resulting stream that looks for all the world lik=
e
>> it's coming in at 7.5MHz and 500ksps. Because this is a field deployment=
,
>> and because I don't have immediate access to a signal generator, it's a =
bit
>> hard to confirm that. It looks to me (at first blush) like the DDC block=
 is
>> getting an incorrect master clock rate, and setting its tick rate
>> accordingly. When I set the frequency to 30MHz and the sample rate to
>> 2Msps, I get the result I'm expecting.
>> >
>> > I don't believe I'm seeing the same problem with device3/gr-ettus, but
>> I'll test that further today. Anyone seen behavior like this before?
>> There's also an unexpected DC offset I haven't seen before, if that help=
s
>> jog anyone's memory. Since it's direct-sampled, not zero-IF, any DC offs=
et
>> must be the result of the DSP chain.
>> >
>> > Nick
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000468abb058b61c0e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Nick,<br><br>This sounds like there may still be a b=
ug in the new DDC/DUC&#39;s since the change from CORDIC to DDSes [0]. Ther=
e was a similar issue [1][2] but the patch was merged in at 3.14.0.0 [3]. =
=C2=A0<br><br>Could you try a UHD version pre-3.12.0.0 to see if it resolve=
s the issue? 3.11.1.0 or 3.10.3.0 would be my recommendation.<br><br>[0] - =
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/CHANGELOG#L365"=
>https://github.com/EttusResearch/uhd/blob/master/CHANGELOG#L365</a><br>[1]=
 - <a href=3D"https://github.com/EttusResearch/uhd/issues/211">https://gith=
ub.com/EttusResearch/uhd/issues/211</a><br>[2] - <a href=3D"https://github.=
com/EttusResearch/fpga/pull/35">https://github.com/EttusResearch/fpga/pull/=
35</a><br>[3] - <a href=3D"https://github.com/EttusResearch/fpga/commit/fdd=
77081c4aaa2c79d56eb08516bdb563f9b6a89">https://github.com/EttusResearch/fpg=
a/commit/fdd77081c4aaa2c79d56eb08516bdb563f9b6a89</a><br><br><br>Regards,<b=
r>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Sat, Jun 15, 2019 at 11:08 AM Nick Foster via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Yes to both!. That&#39;s what led me to believe =
the rate was wrong. LFRX is DC coupled, but the arrangement it&#39;s in has=
 the next component in the chain blocking DC.</div><div><br></div><div>I te=
sted with gr-ettus/device3 today, and the bug isn&#39;t there. So I think t=
here&#39;s something in the legacy driver.</div><div><br></div><div>Nick<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, Jun 15, 2019 at 11:03 AM Ian Buckley &lt;<a href=3D"mailto:i=
an.buckley@gmail.com" target=3D"_blank">ian.buckley@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Go tune WWV, y=
our friendly Federal signal generator?<br>
(Also isn=E2=80=99t LFRX DC coupled?)<br>
<br>
&gt; On Jun 14, 2019, at 11:43 PM, Nick Foster via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; Got a weird one here. I&#39;m using an X310 with UHD 3.14.0.0-87-g4e08=
4337, with two LFRX daughterboards installed. Legacy interface with gr-uhd,=
 not gr-ettus, just testing things in the field. When I tune to 15MHz sampl=
e rate at 1Msps, I get a resulting stream that looks for all the world like=
 it&#39;s coming in at 7.5MHz and 500ksps. Because this is a field deployme=
nt, and because I don&#39;t have immediate access to a signal generator, it=
&#39;s a bit hard to confirm that. It looks to me (at first blush) like the=
 DDC block is getting an incorrect master clock rate, and setting its tick =
rate accordingly. When I set the frequency to 30MHz and the sample rate to =
2Msps, I get the result I&#39;m expecting.<br>
&gt; <br>
&gt; I don&#39;t believe I&#39;m seeing the same problem with device3/gr-et=
tus, but I&#39;ll test that further today. Anyone seen behavior like this b=
efore? There&#39;s also an unexpected DC offset I haven&#39;t seen before, =
if that helps jog anyone&#39;s memory. Since it&#39;s direct-sampled, not z=
ero-IF, any DC offset must be the result of the DSP chain.<br>
&gt; <br>
&gt; Nick<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000468abb058b61c0e7--


--===============7737969586396474089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7737969586396474089==--

