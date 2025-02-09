Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5100CA2DB1C
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2025 06:09:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E909385EDA
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2025 00:09:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739077744; bh=/ugz3qx7Q3y7SD2EzU5kvhSdFwfpn7jHFfl01o/JLE4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WTnrq6cDzZ3GhZIzaBhaUFzRmyGYw5hfwnVEGAojx0+YS25TtVbgzwyZDVX3mXaO1
	 cSWTXVIlEU/LCq6aOK+BoG2LjckSFMe8KoS0Vsw23Neu8HS35HadqPkksap13BaRE4
	 kUXGXgfr0IqsjOtcNg41zM5YJmN7EI4XWYN9B29/spWqHcaMi88PvJcdFcv66I8a4s
	 XUqdabeZVk6vMqbEJl7x9qkQyMfPevA2D2PVsxZPEsOfPTJyBPhmWMNhEMDb2mgM9k
	 KKVfJ2BOWb738Tosql6uEq+Ytp3IKx6U8TY/c1XI6MXpZ+FRMQWzWrKvBtXC7Nq8NI
	 QxgoWFrA9m9Wg==
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E09F9385D0D
	for <usrp-users@lists.ettus.com>; Sun,  9 Feb 2025 00:07:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="QTYjljZz";
	dkim-atps=neutral
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e589c258663so3532984276.1
        for <usrp-users@lists.ettus.com>; Sat, 08 Feb 2025 21:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739077679; x=1739682479; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WeXFzInP5zd/cup0zeontDPKk6CyfTN28lQhF62NQp4=;
        b=QTYjljZzkrHO0jRINAiQeCUH4wR+KiMMCNrt4CNa4ORU15FyqCGQSo4CouHLCANP4T
         lBGiTVGipy/mVafug1UlXpboXTv+SOd7zBswrH3VPZtHWaKk94EtWmHQOosLP50m47OH
         mN9RKv2X/cciqfWQ7LOKdabrcs3nKF5Op0z1GfVVSh32L5YBo8btK3CuBK0JW6s2CqPw
         v+Hx2FD4TfwtyQKcp1B47oLe7uKDFUx/u7LMMr3aK+sfl0CpmjOcHLpJcdvNu1Z4UpJd
         hi4C3lobL9+1N9SMx/zSdB772zb/qWaoa80q2ruL4NFzd0xufR8gb78zxxdhUyHgcL8h
         jksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077679; x=1739682479;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WeXFzInP5zd/cup0zeontDPKk6CyfTN28lQhF62NQp4=;
        b=M6djvFOXVYPhjNg1p1yQ3URnxyxxrxWs3LLc3H0DaNAL4z+6sHLCZ7KjDhzoCc8zlq
         a3bDFpOZ5z6VfB8jo5jPJe2tx4RaOZ9A0/MgsXUp0j0m4PcCHl8ZGFxCGX7SZFieAc0Z
         Y/vYjUF90FzZk8kC3fjhAvekxRlVPf6iS2m4C+p1tNPSuQiCQQLzGgR+iZEBMEU8k3we
         vHoddxOsYm2bQso4/JidVACG5kcpN46RDs7ig5b/51HGqRgtdQgQHmh7nCQaLb/wHe4V
         mCyBd2BXUJUjJpzsYWCQXY/pktDbvrKJ0h/RzRcn8+PAB1m9boDnGDmktmnBgWm3xTHV
         JK/A==
X-Forwarded-Encrypted: i=1; AJvYcCVU6Kn81k3Ei66x8xkZ0APtUoOczUTISym+m3JwezEuvftRB79aXJnuyO1M0O2Gim202aeUP9gaczaJ@lists.ettus.com
X-Gm-Message-State: AOJu0YyqQiw027w/JxmgHCKQQDURqUal9pWLcWYISNFnUKpa3mS1XcWp
	sZZBnixS31/C4JndLrL79jDo3KbnCiLvD/0mWViwcZQlViz7H+udDxTxdfg8SK8DcKci17NU1EV
	QtUUaPecZdic+SAtmrs3G5K0aiTQpk1C4NznCbgKqbmn8DEfyOsfDC0La
X-Gm-Gg: ASbGncswUCwIErlXjz4GtqdGvKeiMmMgPz+oF/J7fju5Zzt/0H8fD7zLJinEHPWBBRp
	cb7+xw1M/dd/HCqlJpLVFJHLiC+v31ZyKcZT1NfTDIgkjXeJzMGTK0l12BIqms08nT+4LZprm
X-Google-Smtp-Source: AGHT+IHe83/qIsq1THfYNpPPJz+urDfBhMevpWPO/VLGuWuEUQV37Qlah8jEebxlQO0KU9R6vIeQH2EZ/X7JSOjUDoM=
X-Received: by 2002:a05:6902:2581:b0:e5b:2427:8480 with SMTP id
 3f1490d57ef6-e5b461e3737mr7392200276.28.1739077678360; Sat, 08 Feb 2025
 21:07:58 -0800 (PST)
MIME-Version: 1.0
References: <uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo@lists.ettus.com>
 <cf99ea0c-7fbd-4927-9f02-1975e7ff5ee5@gsi.de> <CAE0dfYaVac822sghy2Cz1WNujnd2AXTBLqVL3R0q1pFbt-kE9g@mail.gmail.com>
In-Reply-To: <CAE0dfYaVac822sghy2Cz1WNujnd2AXTBLqVL3R0q1pFbt-kE9g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 8 Feb 2025 23:07:42 -0600
X-Gm-Features: AWEUYZkyRl2S9CGNh5-V_C3fUM4n_4gOg1iowa5ZEiKThIiDJeNgZ2Go6vnAB8g
Message-ID: <CAFche=grepcshXkRD+qb58GR6FaaFEDb4NeW=dMWgQCk6B2dMQ@mail.gmail.com>
To: Alex Humberstone <alex.m.humberstone@gmail.com>
Message-ID-Hash: 3ZLHSIUYFUGW6UTFVBZOJYQYPPVYAJTQ
X-Message-ID-Hash: 3ZLHSIUYFUGW6UTFVBZOJYQYPPVYAJTQ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philipp Niedermayer <p.niedermayer@gsi.de>, meni.dali@sabra-microsystems.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Front Panel GPIO to RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZLHSIUYFUGW6UTFVBZOJYQYPPVYAJTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8848111584230720262=="

--===============8848111584230720262==
Content-Type: multipart/alternative; boundary="0000000000004185e0062dae9304"

--0000000000004185e0062dae9304
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I know that Ettus Research is aware of this and it's being looked at as a
possible feature. In the current version of UHD, you still have to make
manual changes to the FPGA to access the GPIO from RFNoC. The changes
aren't particularly difficult, but it can be intimidating if you're not
familiar with FPGA code or RFnoC. It basically involves following the
DIOA_FPGA and/or DIOB_FPGA signals through the design and disconnecting
them cleanly from the normal logic, and then reconnecting them to the RFNoC
image.

Thanks,

Wade

On Thu, Feb 6, 2025 at 7:39=E2=80=AFAM Alex Humberstone <
alex.m.humberstone@gmail.com> wrote:

> I'm working on the same thing, so yes this would be super useful.
>
> Does Ettus Research have any update on that GitHub issue #666?
>
> Here's the link again:
> https://github.com/EttusResearch/uhd/issues/666
>
>
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University (NMSU)
> Las Cruces, New Mexico, 88003
> alex.m.humberstone@gmail.com
> https://ece.nmsu.edu/
>
>
>
> On Mon, 3 Feb 2025 at 02:15, Philipp Niedermayer <p.niedermayer@gsi.de>
> wrote:
>
>> Hi,
>>
>> this is currently not possible without changing the UHD core manually
>> and re-routing those GPIO lines in the Verilog core code. Some years ago
>> I opened a feature request, it contains some hints on what others tried
>> and what would be required. Unfortunately, I never got an answer.
>>
>> Would be wonderful if you could support that by voting on the issue and
>> express your interest there. Or if you manage to get it working, share
>> your solution with a PR.
>>
>> Here is the link: https://github.com/EttusResearch/uhd/issues/666
>>
>> Best regards
>> Philipp
>>
>>
>> Am 3.2.25 um 9:00 schrieb meni.dali@sabra-microsystems.com:
>> >
>> > Hello,
>> >
>> > I need to establish direct routing between the USRP X410's front panel
>> > GPIO pins and custom RFNoC blocks.
>> >
>> > Specifically, I want to read the GPIO signals directly into my RFNoC
>> > block.
>> >
>> > Does anyone have experience implementing such direct GPIO-to-RFNoC
>> > connection on the X410?
>> >
>> > Any examples or technical documentation would be helpful.
>> >
>> > Thanks
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004185e0062dae9304
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Alex,</div><div dir=3D"ltr"><br></div>=
<div>I know that Ettus Research is aware of this and it&#39;s being looked =
at as a possible feature. In the current version of UHD, you still have to =
make manual changes to the FPGA to access the GPIO from RFNoC. The changes =
aren&#39;t particularly difficult, but it can be intimidating if you&#39;re=
 not familiar with FPGA code or RFnoC. It basically involves following the =
DIOA_FPGA and/or=C2=A0DIOB_FPGA signals through the design and disconnectin=
g them cleanly from the normal logic, and then reconnecting them to the RFN=
oC image.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade</d=
iv><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Feb 6, 2025 at 7:39=E2=80=AFAM Alex Humberstone =
&lt;<a href=3D"mailto:alex.m.humberstone@gmail.com">alex.m.humberstone@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div><div style=3D"font-family:monospace;font-size:la=
rge">I&#39;m working on the same thing, so yes this would be super useful.<=
/div><div style=3D"font-family:monospace;font-size:large"><br></div><div st=
yle=3D"font-family:monospace;font-size:large">Does=C2=A0Ettus Research have=
 any update on that GitHub issue #666?</div><div style=3D"font-family:monos=
pace;font-size:large"><br></div><div style=3D"font-family:monospace;font-si=
ze:large">Here&#39;s the link again:</div><div style=3D"font-family:monospa=
ce;font-size:large"><a href=3D"https://github.com/EttusResearch/uhd/issues/=
666" target=3D"_blank">https://github.com/EttusResearch/uhd/issues/666</a><=
/div><div style=3D"font-family:monospace;font-size:large"><br></div><br cle=
ar=3D"all"></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sincerely,<=
br></span></font><div><font size=3D"4"><span style=3D"font-family:monospace=
">Alex-M-Humberstone</span></font></div><div><font size=3D"4"><span style=
=3D"font-family:monospace">PhD Student</span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace">Klipsch School of Electrical E=
ngineering<br></span></font></div><div><font size=3D"4"><span style=3D"font=
-family:monospace">New Mexico State University (NMSU)<br><span><span>Las Cr=
uces, </span></span>New Mexico, 88003</span></font></div><div><font size=3D=
"4"><span style=3D"font-family:monospace"><a href=3D"mailto:alex.m.humberst=
one@gmail.com" target=3D"_blank">alex.m.humberstone@gmail.com</a><br></span=
></font></div><div><font size=3D"4"><font face=3D"monospace"><a href=3D"htt=
ps://ece.nmsu.edu/" target=3D"_blank">https://ece.nmsu.edu/</a></font><br><=
/font></div><div><font size=3D"4"><font face=3D"monospace"><br></font></fon=
t></div><div><font size=3D"4"><span style=3D"font-family:monospace"></span>=
</font></div></div></div></div><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, 3 Feb 2025 at 02:15, Philipp Nie=
dermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de" target=3D"_blank">p.ni=
edermayer@gsi.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
<br>
this is currently not possible without changing the UHD core manually <br>
and re-routing those GPIO lines in the Verilog core code. Some years ago <b=
r>
I opened a feature request, it contains some hints on what others tried <br=
>
and what would be required. Unfortunately, I never got an answer.<br>
<br>
Would be wonderful if you could support that by voting on the issue and <br=
>
express your interest there. Or if you manage to get it working, share <br>
your solution with a PR.<br>
<br>
Here is the link: <a href=3D"https://github.com/EttusResearch/uhd/issues/66=
6" rel=3D"noreferrer" target=3D"_blank">https://github.com/EttusResearch/uh=
d/issues/666</a><br>
<br>
Best regards<br>
Philipp<br>
<br>
<br>
Am 3.2.25 um 9:00 schrieb <a href=3D"mailto:meni.dali@sabra-microsystems.co=
m" target=3D"_blank">meni.dali@sabra-microsystems.com</a>:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I need to establish direct routing between the USRP X410&#39;s front p=
anel <br>
&gt; GPIO pins and custom RFNoC blocks.<br>
&gt;<br>
&gt; Specifically, I want to read the GPIO signals directly into my RFNoC <=
br>
&gt; block.<br>
&gt;<br>
&gt; Does anyone have experience implementing such direct GPIO-to-RFNoC <br=
>
&gt; connection on the X410?<br>
&gt;<br>
&gt; Any examples or technical documentation would be helpful.<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004185e0062dae9304--

--===============8848111584230720262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8848111584230720262==--
