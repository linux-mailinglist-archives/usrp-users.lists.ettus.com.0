Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 501F860D96F
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 04:54:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E72B8383FBC
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 22:54:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666752868; bh=n9BskaL2I1AVTn2Ik6fUXfRZxKsrdtDu7BahdGuqoJQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=w/Y2R7hPkUJSiAwGQZ5CyZfVEkRtnWFEJt+ogTOL8FvsH6Buo5hmWbN3/Qf51yN9m
	 sYoWHw4jPPaZFXQcxy95mLyvpokwFzJYd+8AZlRudWRD0z5lyptbMkau3+r/KXOVSP
	 GVU5eWiPKQmXVJY1zssjl2pZIeMOR8F+aYiGRcIvMs7hhFguBS2iNoM0Mt6R/Xw0O3
	 7c1t4lQJRwfHba6qzUPHvNdENQ+KxSQ2G5eMymRDIeu64DG+KddyW//Cwl/EhN7/Bh
	 +o5T5fgWEvYWe5QCIIs9lkrZXxxcePTnXjvUQUsImisiGMBtpjrkUbOssnlChM7Rcw
	 JdxNSY5eFaFJQ==
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by mm2.emwd.com (Postfix) with ESMTPS id D1371383F38
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 22:53:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Bn7bjGIv";
	dkim-atps=neutral
Received: by mail-pj1-f54.google.com with SMTP id d13-20020a17090a3b0d00b00213519dfe4aso916483pjc.2
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 19:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FunsTsCXGew9N/PSd0glKF+EWW5oMsgmToflOtbYmf0=;
        b=Bn7bjGIvbyTCUzg2OsHJisq2Ty8QRssjotcxBiJiigttYKShgNUq4vRjZUZGXw4Wxj
         Swlnqd1HseNNZjetld8rd4zGr3I8cXHIsc2ToQorp5f3TCF4l1Z6+BKZH++RBe/60sBl
         Nw8dNKmH1emE8v5Up0NPWDkT9fD1cG9qM5GIpcjzEcf9ELJKnrJLJtPLaZjU58mYvwjv
         5tY5S5JY9PE0aSU0gb0nHMZ4vXjJxgGhEboIAelKzuvAWR33M5SkEJTguttCsb8PqcAC
         enmbQuB2S9RwElvfWk0fafZpbr/4ZVLkgIFipl2MGUUtWQFRQJFAqHWDiGNXfXk25Zhv
         S4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FunsTsCXGew9N/PSd0glKF+EWW5oMsgmToflOtbYmf0=;
        b=EhX2rehj+yivA1oMaPLR86fMnwCTBJbYOb0ABoZgb4G5QGLSalp8yOCp3hGOFkbDdA
         /GgEBeyInmegPJTTkLk4pB9cW4ufeF10ewT50Vsiz7hroSaNWpXKp9On1fnopr2JfWew
         vpeqEB5LrBVOJ8mZo+6n1Xpbqhw/TX2JxWdTYpMpG7SADFIwL5ww6A0ksqPD8y/V8erU
         LOhU45Xenzp+ViwK95dTN4IE56Yae2Zc/nDaaBL6mEl9oZQs3H8aHb3eZyFHrtYWX1bj
         pa5zsF3z7dxFOBjxFk6seN0AG1TSzoNf3qXXjoBUf/y+FWNxMbvonNa0LUDNzYKkXUR+
         rJkg==
X-Gm-Message-State: ACrzQf0C14QybQaYaxonc0B1EqVF2A+NFA5+oedByuASEKg/h7ojdPvM
	iSSDf7Yqflgw8xswHulrlgmqjPB5PH2ipBeCplq66+LFeheZQ+H8
X-Google-Smtp-Source: AMsMyM6ISSHHySIJs5LC8D7lb7zgX5S6qNyH0MfJW4guAm5KDtFVhWgpacXJpt45tXKyAvp9aQb65oj1kC+HZYM6/xk=
X-Received: by 2002:a17:90b:3446:b0:213:4990:fa2 with SMTP id
 lj6-20020a17090b344600b0021349900fa2mr1704531pjb.73.1666752801745; Tue, 25
 Oct 2022 19:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com> <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com>
In-Reply-To: <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com>
From: Wan Liu <wan.liu@ettus.com>
Date: Tue, 25 Oct 2022 22:53:10 -0400
Message-ID: <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: MQIIKO4Z3XM2D4H5C62RMFBIWSMHB5TA
X-Message-ID-Hash: MQIIKO4Z3XM2D4H5C62RMFBIWSMHB5TA
X-MailFrom: wan.liu@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQIIKO4Z3XM2D4H5C62RMFBIWSMHB5TA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4818158500907783551=="

--===============4818158500907783551==
Content-Type: multipart/alternative; boundary="000000000000ad47f605ebe72041"

--000000000000ad47f605ebe72041
Content-Type: text/plain; charset="UTF-8"

Hello Brian,

Thank you for the additional information.

Regarding  #6, I meant that if you have two TwinRX daughterboards, see if
you get this problem when the fixed channel is on one daughterboard, and
the tuned channel is on the other.

Regarding screenshots, are you referring to any particular frequency and
time region, or is everything above the noise floor associated with the
tuning? In other words, is the clean spectrum where there is nothing above
the noise floor in both time and frequency plots?

Also can you explain what you mean by "shows some analog PLL-style locking
for around 10 ms of time, then goes away"? Are you referring to the burst
from 3 ms to 13 ms, or something specifically at 10 ms?

Lastly, what are your spectrogram parameters to generate the waterfall?

I'll reach out again after I attempt to reproduce.

Regards,

Wan


On Tue, Oct 25, 2022 at 8:29 PM Brian Padalino <bpadalino@gmail.com> wrote:

> Hey Wan,
>
> Thanks for the quick response.
>
> On Tue, Oct 25, 2022 at 7:59 PM Wan Liu <wan.liu@ettus.com> wrote:
>
>> Hello Brian,
>>
>> I'll see if  I can reproduce with my TwinRX. Please provide some more
>> information to help me reproduce...
>>
>> 1. Center Frequency of fixed channel 0
>>
>
> I tested at 915 MHz, but also 400 MHz.  It seems to show up wherever I
> happen to tune the fixed channel.
>
>
>> 2. Tuning range on channel 1
>>
>
> I have tried with just 2 frequencies (200 MHz, 500 MHz) or the full
> frequency range.  Tuning the full frequency range seems to provide more
> noise in different areas of the spectrum.
>
>
>> 3. What tuning rate have you tried and what's the threshold between a
>> clean spectrum and a bad one?
>>
>
> I always get bad spectrum regardless of my dwell time on any particular
> frequency.  The "max hold" will always show approximately the same spectral
> image.  The "average" spectrum will obviously be quieter if I dwell for
> longer.
>
>
>> 4. Please share screenshots of what you are seeing
>>
>
> Attached is a 10 ms capture of what I see often.  It's only one particular
> case, but you can see what is going on.  I have included time vs. freq,
> amplitude vs. freq, and amplitude vs. time plots.
>
>
>> 5. Please share uhd_usrp_probe output so I know your serial, revision,
>> uhd version, etc
>>
>
> Attached as uhd_probe.txt.
>
>
>> 6. Can you reproduce this problem when it's two channels on different
>> daughterboards? In other words, ch 0 and ch 1 on the same TwinRX, and ch 0
>> and ch 1 across each DB slot.
>>
>
> I am unsure exactly what you're asking for here.  My current setup has a
> UBX in DB0 and a TwinRX in DB1.  If you can be more specific about what you
> want me to try, I can give it a shot?
>
> I will note 2 more observations I made:
>
>   - When trying to read the lo_locked sensor continuously, generating SPI
> traffic I presume going to the PLLs, I get clean spectrum.  This suggests
> to me that digital noise isn't the culprit here.
>   - The IQ file I saved and looked at (which generated the attached
> figures) shows some analog PLL-style locking for around 10 ms of time, then
> goes away.
>
>
>>
>> There's several switchable routes before and after each stage LO going
>> across channels, so it's possible there are some isolation problems between
>> channels. My first thought is also to remove LO sharing cables, but as you
>> said, it doesn't improve.
>>
>> Maybe switching the switches that are not used might help give better
>> isolation. From schematic, if channel 1 uses its own LO, then only switch
>> 16 is needed, and switch 14 which routes LO 1 to the sister channel 2 isn't
>> used. So I'm wondering if the state of switch 14 makes a difference in
>> terms of isolation. I'd have to check the software to see if you can
>> independently flip these switches, and if it's recommended, to test this
>> hypothesis. I will also check internally if similar issue is reported and
>> get back to you.
>>
>
> Let me know if there's anything else I can provide to try to help out.  I
> have a very long IQ capture I took (both inputs terminated, recording fixed
> channel while retuning the other channel) but it's obviously too big to
> share here.
>
> Thanks,
> Brian
>

--000000000000ad47f605ebe72041
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello Brian,<br><br></div>Thank you for the=
 additional information. <br><br></div>Regarding=C2=A0 #6, I meant that if =
you have two TwinRX daughterboards, see if you get this problem when the fi=
xed channel is on one daughterboard, and the tuned channel is on the other.=
 <br><br></div>Regarding screenshots, are you referring to any particular f=
requency and time region, or is everything above the noise floor associated=
 with the tuning? In other words, is the clean spectrum where there is noth=
ing above the noise floor in both time and frequency plots?<br><div><br></d=
iv><div>Also can you explain what you mean by &quot;shows some analog PLL-s=
tyle locking for around 10 ms of time, then goes away&quot;? Are you referr=
ing to the burst from 3 ms to 13 ms, or something specifically at 10 ms?<br=
><br></div><div>Lastly, what are your spectrogram parameters to generate th=
e waterfall?<br><br></div><div>I&#39;ll reach out again after I attempt to =
reproduce.<br><br></div><div>Regards,<br><br></div><div>Wan<br></div><div><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Oct 25, 2022 at 8:29 PM Brian Padalino &lt;<a href=3D"mail=
to:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
">Hey Wan,<div><br></div><div>Thanks for the quick response.</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, O=
ct 25, 2022 at 7:59 PM Wan Liu &lt;<a href=3D"mailto:wan.liu@ettus.com" tar=
get=3D"_blank">wan.liu@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Brian,<br><br>=
</div><div>I&#39;ll see if=C2=A0 I can reproduce with my TwinRX. Please pro=
vide some more information to help me reproduce...<br><br></div><div>1. Cen=
ter Frequency of fixed channel 0<br></div></div></blockquote><div><br></div=
><div>I tested at 915 MHz, but also 400 MHz.=C2=A0 It seems to show up wher=
ever=C2=A0I happen to tune the fixed channel.</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div=
>2. Tuning range on channel 1<br></div></div></blockquote><div><br></div><d=
iv>I have tried with just 2 frequencies (200 MHz, 500 MHz) or the full freq=
uency range.=C2=A0 Tuning the full frequency=C2=A0range seems to provide mo=
re noise in different areas of the spectrum.</div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>=
3. What tuning rate have you tried and what&#39;s the threshold between a c=
lean spectrum and a bad one?<br></div></div></blockquote><div><br></div><di=
v>I always get bad spectrum regardless of my dwell time on any particular f=
requency.=C2=A0 The &quot;max hold&quot; will always show approximately the=
 same spectral image.=C2=A0 The &quot;average&quot; spectrum=C2=A0will obvi=
ously be quieter if I dwell for longer.</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>4. Pl=
ease share screenshots of what you are seeing<br></div></div></blockquote><=
div><br></div><div>Attached is a 10 ms capture of what I see often.=C2=A0 I=
t&#39;s only one particular case, but you can see what is going on.=C2=A0 I=
 have included time vs. freq, amplitude vs. freq, and amplitude vs. time pl=
ots.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div></div><div>5. Please share uhd_usrp_probe output so=
 I know your serial, revision, uhd version, etc</div></div></blockquote><di=
v><br></div><div>Attached as uhd_probe.txt.</div><div>=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>6. Can you r=
eproduce this problem when it&#39;s two channels on different daughterboard=
s? In other words, ch 0 and ch 1 on the same TwinRX, and ch 0 and ch 1 acro=
ss each DB slot.</div></div></blockquote><div><br></div><div>I am unsure ex=
actly what you&#39;re asking for here.=C2=A0 My current setup has a UBX in =
DB0 and a TwinRX in DB1.=C2=A0 If you can be more specific about what you w=
ant me to try, I can give it a shot?</div><div><br></div><div>I will note 2=
 more observations I made:</div><div><br></div><div>=C2=A0 - When trying to=
 read the lo_locked sensor continuously, generating SPI traffic I presume g=
oing to the PLLs, I get clean spectrum.=C2=A0 This suggests to me that digi=
tal noise isn&#39;t the culprit here.</div><div>=C2=A0 - The IQ file I save=
d and looked at (which generated the attached figures) shows some analog PL=
L-style locking for around 10 ms of time, then goes away.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v><br></div><div>There&#39;s several switchable routes before and after eac=
h stage LO going across channels, so it&#39;s possible there are some isola=
tion problems between channels. My first thought is also to remove LO shari=
ng cables, but as you said, it doesn&#39;t improve. <br></div><div><br></di=
v><div>Maybe switching the switches that are not used might help give bette=
r isolation. From schematic, if channel 1 uses its own LO, then only switch=
 16 is needed, and switch 14 which routes LO 1 to the sister channel 2 isn&=
#39;t used. So I&#39;m wondering if the state of switch 14 makes a differen=
ce in terms of isolation. I&#39;d have to check the software to see if you =
can independently flip these switches, and if it&#39;s recommended, to test=
 this hypothesis. I will also check internally if similar issue is reported=
 and get back to you.</div></div></blockquote><div><br></div><div>Let me kn=
ow if there&#39;s anything else I can provide to try to help out.=C2=A0 I h=
ave a very long IQ capture I took (both inputs terminated, recording fixed =
channel while retuning the other channel) but it&#39;s obviously too big to=
 share here.</div><div><br></div><div>Thanks,</div><div>Brian</div></div></=
div>
</blockquote></div>

--000000000000ad47f605ebe72041--

--===============4818158500907783551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4818158500907783551==--
