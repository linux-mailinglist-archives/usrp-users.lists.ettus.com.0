Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF80C396834
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 20:57:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F6F2384135
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 14:57:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QA/ue5Vu";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 74DD73840F7
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 14:56:45 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id z1so5962063qvo.4
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 11:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=nqWb8SIE9O0Y3+NX6UME+cDGJoGB45XufsN1Og8X3ME=;
        b=QA/ue5VuYCeI9PhnulZD9CjR0CUJS5LfaO2Mq7hbkkZJOLAmrKG/BaHCK1nk7zRvgt
         Te3lvI2WbKwpXG6CjfXdzeZys1FSM/XT+28RaXSLxWHWY1LCbDM2PaGwcqv0c866Y4xg
         bHAi8DEs/oXPAE5KZbnQfN1R6XrdK+dm+nQX2bMToob2K668kgP0voHe+Yx8Ntp0cULe
         29hn0t+Urk8sHDwHcRbk238CtiIVrQxJ/i3E/mZIV94V9O6gLyEz7NQsevyMrUkLwrFR
         5SITlIEEUyQycmg0XGu3SxOlnVIq1mS4/wCv0eBAQ6HbNc89qNtoXngTPsHuy+1l9xrx
         9VuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=nqWb8SIE9O0Y3+NX6UME+cDGJoGB45XufsN1Og8X3ME=;
        b=SomxLkzU7Bq2LXJE0rTtixhyqq4Ds0EPy1io4UInkzSZtzZtlmoZsk18XiA+spnOyP
         LnrGIGTbtPI6q4iQOpt3tPFoTweQvprxVZwjN0AMwNIhVp6x6A2wLlfuG4O+/ftqeEN1
         mx3XKPqzZ75jYhDtK7d0Ayp2IKZ+0lxfw4vi7o5gCPuHqk2Jjm3rs23f7M+gzxZ5yddO
         Zm5ymS4PFcq33+kDxEzWAQJAn/oZe/3WUeR5M1pP9OS7WAMXk3SoIL6OWoaBwve79SSB
         JalrCJnpMhvMehMpvTD6QSfAzVCTzLFAvluk1D5Enp46lNpufeIbeBd78jm9aruybpcT
         CSsg==
X-Gm-Message-State: AOAM533dv005R4uDlE8QjgnaOflnajsISmxORRab9uXPnq8aFZBnO73N
	nbwD/3v7BgEexhdqS5SRfZE5XegCjVA=
X-Google-Smtp-Source: ABdhPJyfNC7m1up8w7Ugw8LtrhIdlySKIpbUfu5MsPIBANSyTLVjfrmi5lPTvmx72vPV0HHGxsxxzQ==
X-Received: by 2002:a0c:eccf:: with SMTP id o15mr15725918qvq.58.1622487404767;
        Mon, 31 May 2021 11:56:44 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id j28sm9603935qkl.35.2021.05.31.11.56.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 11:56:44 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 31 May 2021 14:56:43 -0400
Message-Id: <3C39A314-B292-4CEF-BF8E-7212C1687F43@gmail.com>
References: <1622487334616.15025@isc.tuc.gr>
In-Reply-To: <1622487334616.15025@isc.tuc.gr>
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: FFRRAAUKOVK4C4AEGX7JWRUJXKWOLKSB
X-Message-ID-Hash: FFRRAAUKOVK4C4AEGX7JWRUJXKWOLKSB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FFRRAAUKOVK4C4AEGX7JWRUJXKWOLKSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7169829773033597822=="


--===============7169829773033597822==
Content-Type: multipart/alternative; boundary=Apple-Mail-CE19D4C4-5826-4D86-9025-950109FD47DE
Content-Transfer-Encoding: 7bit


--Apple-Mail-CE19D4C4-5826-4D86-9025-950109FD47DE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes.=20


Sent from my iPhone

> On May 31, 2021, at 2:55 PM, Skyvalakis Konstantinos <kskyvalakis@isc.tuc.=
gr> wrote:
>=20
> =EF=BB=BF
> So after upgrading UHD I should also rebuild gnuradio right?
>=20
> From: Marcus D Leech <patchvonbraun@gmail.com>
> Sent: Monday, May 31, 2021 9:39 PM
> To: Skyvalakis Konstantinos
> Subject: Re: USRP N200
> =20
> If you upgrade UHD and use GnuRadio you=E2=80=99ll have to at least relink=
 GR against the new UHD.=20
>=20
> But recent vintage distros like Ubuntu allow you to just install as packag=
es. No build from source required.=20
>=20
> Sent from my iPhone
>=20
>>> On May 31, 2021, at 2:30 PM, Skyvalakis Konstantinos <kskyvalakis@isc.tu=
c.gr> wrote:
>>>=20
>> =EF=BB=BF
>> Ok, I just have a simple question for upgrading to a newer version of UHD=
.
>>=20
>>=20
>>=20
>> Do I just need to "git checkout" a newer version of UHD, build it, etc. e=
tc. and that's all there's to it.
>>=20
>>=20
>>=20
>> OR do I also have to rebuild my gnuradio install after installing a newer=
 UHD?
>>=20
>>=20
>>=20
>> Excuse me if what I'm saying is stupid but I am really trying to understa=
nd how to do things correctly.
>>=20
>> From: Marcus D. Leech <patchvonbraun@gmail.com>
>> Sent: Monday, May 31, 2021 9:17 PM
>> To: Skyvalakis Konstantinos; usrp-users@lists.ettus.com
>> Subject: Re: USRP N200
>> =20
>>> On 05/31/2021 02:13 PM, Skyvalakis Konstantinos wrote:
>>> My UHD version is  UHD_003.010.000.HEAD-0-g6e1ac3fc
>>>=20
>>>=20
>>>=20
>>> and my ethernet interface adapter is a Qualcomm Atheros Killer E2400 Gig=
abit Ethernet Controller (rev 10)=E2=80=8B.
>>>=20
>>>=20
>>>=20
>>> Thank you so much for your effort and time with my issue. I honestly app=
reciate it.
>>>=20
>>> =20
>> This issue shows up quite some time ago and I found it in the Nabble arch=
ive for this list:
>>=20
>> http://ettus.80997.x6.nabble.com/Re-USRP-users-Discuss-gnuradio-RuntimeEr=
ror-fifo-ctrl-timed-out-looking-for-acks-td8198.html
>>=20
>> You might also try upgrading to a much-more-recent UHD.
>>=20
>>=20

--Apple-Mail-CE19D4C4-5826-4D86-9025-950109FD47DE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes.&nbsp;<div><br><br><div dir=3D"ltr">Sen=
t from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 3=
1, 2021, at 2:55 PM, Skyvalakis Konstantinos &lt;kskyvalakis@isc.tuc.gr&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<p>So after upgrading UHD I should also&nbsp;rebuild gnuradio right?<br>
</p>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D Leech &lt;patc=
hvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, May 31, 2021 9:39 PM<br>
<b>To:</b> Skyvalakis Konstantinos<br>
<b>Subject:</b> Re: USRP N200</font>
<div>&nbsp;</div>
</div>
<div>If you upgrade UHD and use GnuRadio you=E2=80=99ll have to at least rel=
ink GR against the new UHD.&nbsp;
<div><br>
</div>
<div>But recent vintage distros like Ubuntu allow you to just install as pac=
kages. No build from source required.&nbsp;<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On May 31, 2021, at 2:30 PM, Skyvalakis Konstantin=
os &lt;kskyvalakis@isc.tuc.gr&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<p>Ok, I&nbsp;just have&nbsp;a simple question for upgrading to a newer vers=
ion of UHD.<br>
</p>
<p><br>
</p>
<p>Do I just need to "git checkout" a newer version of UHD,&nbsp;build it, e=
tc. etc. and that's all there's to it.<br>
</p>
<p><br>
</p>
<p>OR do I also have to rebuild my gnuradio install after installing a newer=
 UHD?<br>
</p>
<p><br>
</p>
<p>Excuse me if what I'm saying is stupid but I am really trying to understa=
nd how to do things correctly.<br>
</p>
<div style=3D"color:rgb(33,33,33)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;pat=
chvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, May 31, 2021 9:17 PM<br>
<b>To:</b> Skyvalakis Konstantinos; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: USRP N200</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 05/31/2021 02:13 PM, Skyvalakis Konstantin=
os wrote:<br>
</div>
<blockquote type=3D"cite">
<p>My UHD version is&nbsp;&nbsp;UHD_003.010.000.HEAD-0-g6e1ac3fc<br>
</p>
<p><br>
</p>
<p>and my ethernet interface adapter is a&nbsp;Qualcomm Atheros Killer E2400=
 Gigabit Ethernet Controller (rev 10)=E2=80=8B.<br>
</p>
<p><br>
</p>
<p>Thank you so much for your effort and time with my issue. I honestly appr=
eciate it.<br>
</p>
<div style=3D"color:rgb(33,33,33)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</div>
</blockquote>
This issue shows up quite some time ago and I found it in the Nabble archive=
 for this list:<br>
<br>
<a class=3D"moz-txt-link-freetext" href=3D"http://ettus.80997.x6.nabble.com/=
Re-USRP-users-Discuss-gnuradio-RuntimeError-fifo-ctrl-timed-out-looking-for-=
acks-td8198.html">http://ettus.80997.x6.nabble.com/Re-USRP-users-Discuss-gnu=
radio-RuntimeError-fifo-ctrl-timed-out-looking-for-acks-td8198.html</a><br>
<br>
You might also try upgrading to a much-more-recent UHD.<br>
<br>
<br>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-CE19D4C4-5826-4D86-9025-950109FD47DE--

--===============7169829773033597822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7169829773033597822==--
