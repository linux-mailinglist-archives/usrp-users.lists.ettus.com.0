Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD6A626C21
	for <lists+usrp-users@lfdr.de>; Sat, 12 Nov 2022 23:05:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68F25380A31
	for <lists+usrp-users@lfdr.de>; Sat, 12 Nov 2022 17:05:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668290710; bh=65QsknTP5im0Y/tEkkZruIuRe+YC+iGwYqSHgy8Bjck=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=k7jgwmd6DAd6be5+fZZyHAosjabppW8vEXc9rDLOYVShOYEyUmVo+j2gi0t0lv4qt
	 Xapa45fy2WmFYIiqAJk/zNALZLZxSfMLsouxBWfdONb9X9uqOwNu052Irbi44Yg9FO
	 ukzzUupgkwVIB5u2PO83katBzgZp3CsCt+uuhxVhMMFb3DaM23UJeo18hKlzlrzVi0
	 Biy7bT2BO5OZ/4b2Hl3AHa3pa7+BfPjtpt4Kxq4+MMaJ6xsA82svB3ayxVxyiF+ha1
	 ipqiqN7qNR8UjPIRPrt38NjyJ6XF2UlOZQigcUfimcHbJUIcxXF0+BaYlA8DOITI79
	 iuxSdQvnUTKaQ==
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E2FB3809CA
	for <usrp-users@lists.ettus.com>; Sat, 12 Nov 2022 17:05:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Utcnte5B";
	dkim-atps=neutral
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-13b103a3e5dso8953365fac.2
        for <usrp-users@lists.ettus.com>; Sat, 12 Nov 2022 14:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nyqMUs/l1Y6Z4ayA1J4V77Ln3q3NMVhYeGZABJt0kCo=;
        b=Utcnte5BebWXGA4ITz9xha+6aIrRKjh8veCuWDhft5QgE8k8rb4QpVFBD4xtdSo5gc
         zHMvBep0OUwrwcIMMMtggj6kMIE6t/umnrNHnssFg1k9eDNagK9CfgEmzaMmNwzeMF0s
         ASFuhHRyfEwmLB8VBpvNNRrGlc/gpoSNQbzbJoCJO0B9lO4iGGihZewt0bDwmjLv/tXB
         e1nBBWvoPMAwMOqibutK3pX/RLbE6k9mcXfiCHyVcaYRuE9Bm2RenYDwRlTWfC5yfea4
         X5TfMkEgcnYR2s+MZtSw/3dqGCVdqF7yjpjwM3k0pwdEMjSuC4d+XHrymtHSPd4LtJpC
         b7GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nyqMUs/l1Y6Z4ayA1J4V77Ln3q3NMVhYeGZABJt0kCo=;
        b=NM7NefJd8uMM5pNdCC+BFK8/nENuGj+bXhHJz3//NOxySTf3Xr70gxJb4gXtqVPY1P
         X8ibGwV4IKylE0CyfuCTedGyvvCTWuuuMclRffIPvYW7X8fHS4C8K5dZrE5v86DzVHMl
         C1rHloT66dv347uwiYUCqdTbmJmUpJEKKo2HixSHQxREiKG+gOSuM3HhHmpU/ySowm5S
         Y+MetApSdii8pAT3asVsHnPU3VE3ABksi4a3eD/j+ocHzZEP9rfAcahqHKQb3ndgvtpW
         Mx47Z5escarq1CY6mlV1BvP6L45eFtPWj8cDjP6g2urQiffmVApYxyhoC7RC0gTwK02j
         J+TA==
X-Gm-Message-State: ANoB5pkXDMiwSLd+br+hrm3A1d5XHCXqNezReL3TU3CxSKcfuR/njSOr
	OJY0pW+WZ6MuLsfcofqm9wp4VntDLkHLIf1NWIU=
X-Google-Smtp-Source: AA0mqf4LTpSxEcLUlUGvll7SmFLU869PbSgPWQZmQhrsZg6V3driqaUtVPXBvbG4shIlC47ULY1f65gkx5R6S5oiDyI=
X-Received: by 2002:a05:6870:a99d:b0:132:1c:9aad with SMTP id
 ep29-20020a056870a99d00b00132001c9aadmr3929264oab.168.1668290703265; Sat, 12
 Nov 2022 14:05:03 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
 <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com>
 <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com>
 <CAEXYVK7j70E=3R+kLuuhKVOTa39S+ra_Ux4aUb4QgqwR-+cLDQ@mail.gmail.com>
 <CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmail.com> <CAOcXSJy+13C+pF8cHG7Fixs2vQbwEwAN45c2h59UyYOwsZHv=Q@mail.gmail.com>
In-Reply-To: <CAOcXSJy+13C+pF8cHG7Fixs2vQbwEwAN45c2h59UyYOwsZHv=Q@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Sat, 12 Nov 2022 17:04:52 -0500
Message-ID: <CAEXYVK73WYJbg78TS0Q=5TfYqyNyjzFFamZnSux5Ewdft1RTSg@mail.gmail.com>
To: Wan Liu <wan.liu@ettus.com>
Content-Type: multipart/mixed; boundary="000000000000c0698405ed4d323a"
Message-ID-Hash: TSY4MVQM5FG3S2WHTLTWPSDW62BB5F67
X-Message-ID-Hash: TSY4MVQM5FG3S2WHTLTWPSDW62BB5F67
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSY4MVQM5FG3S2WHTLTWPSDW62BB5F67/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000c0698405ed4d323a
Content-Type: multipart/alternative; boundary="000000000000c0698305ed4d3238"

--000000000000c0698305ed4d3238
Content-Type: text/plain; charset="UTF-8"

Hey Wan,

On Thu, Oct 27, 2022 at 10:53 PM Wan Liu <wan.liu@ettus.com> wrote:

> Hello Brian,
>
> I set up my HW and SW, but I'm having some trouble reproducing after some
> initial playing around with UHD examples and gnuradio. I assume you have
> some UHD program that records RX to file and while you repeated make tune
> requests to ch 1, is this correct? To make sure we are on the same page,
> you provide a sample program that reproduces your steps for tuning and
> recording the IQ samples.
>
> You also mentioned " When trying to read the lo_locked sensor
> continuously, generating SPI traffic I presume going to the PLLs, I get
> clean spectrum." Can you also show in your sample program how to reproduce
> these steps
>
> Once I can get the same spectrogram as you, I'll also look into the "mute
> till lock detect" feature of the ADF5356.
>

Attached is a file which should reproduce it for you.  If it doesn't, let
me know off list and we can work from there.

It uses a scanning channel to go through a list of frequencies, and will
continuously read from the other channel.  When you hit ENTER, it will save
off a buffers worth of samples to disk with increasing filenames (i.e.
buffer-000.dat, buffer001.dat, etc.).  Quit the program by hitting Ctrl+C.

I set it up to save off 10ms of samples but it should be pretty easy to
change that to some arbitrary length.  I tried to make it so no overflows
would occur.

Source is attached and has a comment showing how I compiled on my system.
Source is also here, along with a picture of the birdies I am seeing:


https://drive.google.com/file/d/1Hrf15GzaO2hAlorUMkt4XT5hjv0J4tCc/view?usp=sharing

https://drive.google.com/file/d/1loVoixWgDPwo-QHPtNF6ZvHJMMS1kyVI/view?usp=sharing

You can also just generate SPI traffic, I imagine, if you only keep the
call to usrp->get_rx_sensor() in the main loop and nothing else.

Let me know if you are able to reproduce this issue or not.

Thanks,
Brian

>

--000000000000c0698305ed4d3238
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey Wan,</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 27, 2022 at 10:53 PM =
Wan Liu &lt;<a href=3D"mailto:wan.liu@ettus.com">wan.liu@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div><div><div><div><div>Hello Brian,<br><br></div>I set up my HW =
and SW, but I&#39;m having some trouble reproducing after some initial play=
ing around with UHD examples and gnuradio. I assume you have some UHD progr=
am that records RX to file and while you repeated make tune requests to ch =
1, is this correct? To make sure we are on the same page, you provide a sam=
ple program that reproduces your steps for tuning and recording the IQ samp=
les. <br><br></div>You also mentioned &quot; When trying to read the lo_loc=
ked sensor continuously, generating SPI=20
traffic I presume going to the PLLs, I get clean spectrum.&quot; Can you al=
so show in your sample program how to reproduce these steps<br><br></div>On=
ce I can get the same spectrogram as you, I&#39;ll also look into the &quot=
;mute till lock detect&quot; feature of the ADF5356.<br></div></div></div><=
/blockquote><div><br></div><div>Attached is a file which should reproduce i=
t for you.=C2=A0 If it doesn&#39;t, let me know off list and we can work fr=
om there.</div><div><br></div><div>It uses a scanning channel to go through=
 a list of frequencies, and will continuously read from the other channel.=
=C2=A0 When you hit ENTER, it will save off a buffers worth of samples to d=
isk with increasing filenames (i.e. buffer-000.dat, buffer001.dat, etc.).=
=C2=A0 Quit the program by hitting Ctrl+C.</div><div><br></div><div>I set i=
t up to save off 10ms of samples but it should be pretty easy to change tha=
t to some arbitrary length.=C2=A0 I tried to make it so no overflows would =
occur.</div><div><br></div><div>Source is attached and has a comment showin=
g how I compiled on my system.=C2=A0 Source is also here, along with a pict=
ure of the birdies I am seeing:</div><div><br></div><div>=C2=A0=C2=A0<a hre=
f=3D"https://drive.google.com/file/d/1Hrf15GzaO2hAlorUMkt4XT5hjv0J4tCc/view=
?usp=3Dsharing">https://drive.google.com/file/d/1Hrf15GzaO2hAlorUMkt4XT5hjv=
0J4tCc/view?usp=3Dsharing</a></div><div>=C2=A0=C2=A0<a href=3D"https://driv=
e.google.com/file/d/1loVoixWgDPwo-QHPtNF6ZvHJMMS1kyVI/view?usp=3Dsharing">h=
ttps://drive.google.com/file/d/1loVoixWgDPwo-QHPtNF6ZvHJMMS1kyVI/view?usp=
=3Dsharing</a></div><div><br></div><div>You can also just generate SPI traf=
fic, I imagine, if you only keep the call to usrp-&gt;get_rx_sensor() in th=
e main loop and nothing else.</div><div><br></div><div>Let me know if you a=
re able to reproduce this issue or not.</div><div><br></div><div>Thanks,</d=
iv><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--000000000000c0698305ed4d3238--

--000000000000c0698405ed4d323a
Content-Type: text/plain; charset="US-ASCII"; name="twinrx_issue.cpp"
Content-Disposition: attachment; filename="twinrx_issue.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_laeh77gb0>
X-Attachment-Id: f_laeh77gb0

Ly8gSG93IHRvIGJ1aWxkOgovLyAgJCBleHBvcnQgVUhEX0lOQ0xVREVfUEFUSD0vcGF0aC90by9p
bmNsdWRlCi8vICAkIGV4cG9ydCBVSERfTElCUkFSWV9QQVRIPS9wYXRoL3RvL2xpYgovLyAgJCBn
KysgLXN0ZD1jKysxNyB0d2lucnhfaXNzdWUuY3BwIC1vIHR3aW5yeF9pc3N1ZSAtSSRVSERfSU5D
TFVERV9QQVRIIC1MJFVIRF9MSUJSQVJZX1BBVEggLWxib29zdF9wcm9ncmFtX29wdGlvbnMgLWxw
dGhyZWFkIC1sdWhkCgojaW5jbHVkZSA8dWhkL3VzcnAvbXVsdGlfdXNycC5ocHA+CiNpbmNsdWRl
IDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy90aHJlYWQuaHBw
PgojaW5jbHVkZSA8Ym9vc3QvcHJvZ3JhbV9vcHRpb25zLmhwcD4KI2luY2x1ZGUgPGJvb3N0L3Ro
cmVhZC5ocHA+CiNpbmNsdWRlIDxjaHJvbm8+CiNpbmNsdWRlIDxmc3RyZWFtPgojaW5jbHVkZSA8
Y3NpZ25hbD4KI2luY2x1ZGUgPGNlcnJubz4KI2luY2x1ZGUgPHBvbGwuaD4KCm5hbWVzcGFjZSBw
byA9IGJvb3N0Ojpwcm9ncmFtX29wdGlvbnM7Cgp0eXBlZGVmIHN0ZDo6dmVjdG9yPHN0ZDo6Y29t
cGxleDxmbG9hdD4+IHJlY3ZfYnVmZl90OwoKLy8gR2xvYmFsIG9iamVjdHMKc3RhdGljIHVoZDo6
dXNycDo6bXVsdGlfdXNycDo6c3B0ciB1c3JwOwpzdGF0aWMgcmVjdl9idWZmX3QgYnVmZmVyOwpz
dGF0aWMgcmVjdl9idWZmX3Qgd3JpdGluZ19idWZmZXIgOwpzdGF0aWMgc3RkOjp2ZWN0b3I8ZG91
YmxlPiByZl9mcmVxczsKCnN0YXRpYyB1aGQ6OnN0cmVhbV9jbWRfdCBzdHJlYW1fc3RhcnQodWhk
OjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUQVJUX0NPTlRJTlVPVVMpOwpzdGF0aWMgdWhk
OjpzdHJlYW1fY21kX3Qgc3RyZWFtX3N0b3AodWhkOjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RF
X1NUT1BfQ09OVElOVU9VUyk7Cgpib29sIGRvbmUgOwpib29sIHNhdmVfc2FtcGxlcyA7Cgp2b2lk
IHNpZ19pbnRfaGFuZGxlcihpbnQpIHsKICAgIGRvbmUgPSB0cnVlIDsKfQoKc3RhdGljIHNpemVf
dCByZWN2X2NoYW4gOwpzdGF0aWMgc2l6ZV90IHNjYW5fY2hhbiA7Cgp2b2lkIGNoZWNrX3VzZXJf
aW5wdXQoKSB7CiAgICBzdHJ1Y3QgcG9sbGZkIHBmZCA9IHsgU1RESU5fRklMRU5PLCBQT0xMSU4s
IDAgfSA7CiAgICBpbnQgcmV0ID0gMCA7CiAgICB3aGlsZSghZG9uZSkgewogICAgICAgIC8vIFBv
bGwgZm9yIHVzZXIgaGl0dGluZyBlbnRlciB0byBzdG9wIGdyYWNlZnVsbHkKICAgICAgICByZXQg
PSBwb2xsKCZwZmQsIDEsIDEwMCkgOwogICAgICAgIGlmKCByZXQgPT0gMSApIHsKICAgICAgICAg
ICAgc3RkOjpjaW4uaWdub3JlKCkgOwogICAgICAgICAgICBzdGQ6OmNvdXQgPDwgIlNhdmluZyBT
YW1wbGVzISIgPDwgc3RkOjplbmRsIDsKICAgICAgICAgICAgc2F2ZV9zYW1wbGVzID0gdHJ1ZSA7
CiAgICAgICAgfSBlbHNlIGlmKCByZXQgPT0gLTEgKSB7CiAgICAgICAgICAgIHN0ZDo6Y291dCA8
PCAiRXJyb3I6ICIgPDwgc3RyZXJyb3IoZXJybm8pIDw8IHN0ZDo6ZW5kbCA7CiAgICAgICAgfQog
ICAgfQp9CgpzdGF0aWMgdm9pZCB3cml0ZV9idWZmZXJfdG9fZmlsZShjb25zdCBzdGQ6OnN0cmlu
ZyAmcGF0aCkgewogICAgc3RkOjpjb3V0IDw8IHN0cihib29zdDo6Zm9ybWF0KCJXcml0aW5nIGZp
bGUgJXMuLi4gIikgJSBwYXRoKSA8PCBzdGQ6OmZsdXNoIDsKICAgIHN0ZDo6b2ZzdHJlYW0gb2Zp
bGUocGF0aC5jX3N0cigpLCBzdGQ6Omlvczo6YmluYXJ5KSA7CiAgICBvZmlsZS53cml0ZSgoY2hh
ciopd3JpdGluZ19idWZmZXIuZGF0YSgpLCBzaXplb2Yoc3RkOjpjb21wbGV4PGZsb2F0PikgKiB3
cml0aW5nX2J1ZmZlci5zaXplKCkpIDsKICAgIHN0ZDo6Y291dCA8PCAiZG9uZSEiIDw8IHN0ZDo6
ZW5kbCA7Cn0KCi8vIFRoaXMgaXMgYSBoZWxwZXIgZnVuY3Rpb24gZm9yIHJlY2VpdmluZyBzYW1w
bGVzIGZyb20gdGhlIFVTUlAKdm9pZCB0d2lucnhfcmVjdigpCnsKICAgIGJ1ZmZlciA9IHJlY3Zf
YnVmZl90KDEwMGU2LzEwMCkgOwogICAgd3JpdGluZ19idWZmZXIgPSByZWN2X2J1ZmZfdChidWZm
ZXIuc2l6ZSgpKSA7CiAgICB1aGQ6OnJ4X21ldGFkYXRhX3QgbWQ7CiAgICBzaXplX3QgZmlsZV9u
dW1iZXIgPSAwIDsKCiAgICAvLyBHZXQgYW4gcnhfc3RyZWFtZXIgZnJvbSB0aGUgZGV2aWNlCiAg
ICB1aGQ6OnN0cmVhbV9hcmdzX3Qgc3RyZWFtX2FyZ3MoImZjMzIiLCAic2MxNiIpOwogICAgc3Ry
ZWFtX2FyZ3MuY2hhbm5lbHMucHVzaF9iYWNrKHJlY3ZfY2hhbik7CiAgICBhdXRvIHJ4X3N0cmVh
bSA9IHVzcnAtPmdldF9yeF9zdHJlYW0oc3RyZWFtX2FyZ3MpOwogICAgc3RkOjp2ZWN0b3I8c3Rk
Ojp0aHJlYWQ+IHRocmVhZHMgOwoKICAgIHJ4X3N0cmVhbS0+aXNzdWVfc3RyZWFtX2NtZChzdHJl
YW1fc3RhcnQpIDsKCiAgICAvLyBSZXBlYXRlZGx5IHJldHJpZXZlIHNhbXBsZXMgdW50aWwgdGhl
IGVudGlyZSBhY3F1aXNpdGlvbiBpcyByZWNlaXZlZAogICAgd2hpbGUgKCFkb25lKSB7CiAgICAg
ICAgc2l6ZV90IG51bV9yZWN2ZCA9IHJ4X3N0cmVhbS0+cmVjdihidWZmZXIuZGF0YSgpLCBidWZm
ZXIuc2l6ZSgpLCBtZCwgMS4wKTsKCiAgICAgICAgaWYgKG1kLmVycm9yX2NvZGUgIT0gdWhkOjpy
eF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX05PTkUpIHsKICAgICAgICAgICAgc3RkOjpjb3V0IDw8
IG1kLnN0cmVycm9yKCkgPDwgc3RkOjplbmRsOwogICAgICAgICAgICBjb250aW51ZSA7CiAgICAg
ICAgfQoKICAgICAgICBpZiggc2F2ZV9zYW1wbGVzICkgewogICAgICAgICAgICBzdGQ6OnN0cmlu
ZyBmbmFtZSA9IHN0cihib29zdDo6Zm9ybWF0KCJidWZmZXItJTAzZC5kYXQiKSAlIGZpbGVfbnVt
YmVyKSAgOwogICAgICAgICAgICAvLyBDb3B5IHRoZSBidWZmZXIgdG8gdGhlIHdyaXRpbmdfYnVm
ZmVyCiAgICAgICAgICAgIHdyaXRpbmdfYnVmZmVyID0gYnVmZmVyIDsKICAgICAgICAgICAgLy8g
Tm9uLWJsb2NraW5nIHdyaXRpbmcKICAgICAgICAgICAgdGhyZWFkcy5wdXNoX2JhY2soc3RkOjp0
aHJlYWQod3JpdGVfYnVmZmVyX3RvX2ZpbGUsZm5hbWUpKSA7CiAgICAgICAgICAgIHNhdmVfc2Ft
cGxlcyA9IGZhbHNlIDsKICAgICAgICAgICAgZmlsZV9udW1iZXIrKyA7CiAgICAgICAgfQogICAg
fQoKICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGwgPDwgIlN0b3BwaW5nIHRoZSBzdHJlYW0uLi4i
IDsKICAgIC8vIFN0b3AgdGhlIHN0cmVhbQogICAgcnhfc3RyZWFtLT5pc3N1ZV9zdHJlYW1fY21k
KHN0cmVhbV9zdG9wKSA7CgogICAgLy8gUmVhZCBhbGwgdGhlIHNhbXBsZXMgbGVmdCBpbiB0aGUg
cGlwZWxpbmUKICAgIGRvIHsKICAgICAgICBzaXplX3QgbnVtX3JlY3YgPSByeF9zdHJlYW0tPnJl
Y3YoYnVmZmVyLmRhdGEoKSwgYnVmZmVyLnNpemUoKSwgbWQsIDEuMCkgOwogICAgfSB3aGlsZSAo
bWQuZXJyb3JfY29kZSA9PSB1aGQ6OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfTk9ORSkgOwog
ICAgLy8gUmVqb2luIGFsbCB0aGUgZmlsZSBzYXZpbmcgdGhyZWFkcwogICAgc3RkOjpjb3V0IDw8
ICJkb25lISIgPDwgc3RkOjplbmRsIDsKICAgIHN0ZDo6Y291dCA8PCAiQ2xlYW5pbmcgdXAgLi4u
ICIgOwogICAgZm9yKGF1dG8gJnQgOiB0aHJlYWRzKSB7CiAgICAgICAgaWYoIHQuam9pbmFibGUo
KSApIHQuam9pbigpIDsKICAgIH0KICAgIHN0ZDo6Y291dCA8PCAiZG9uZSEiIDw8IHN0ZDo6ZW5k
bCA7Cn0KCmludCBVSERfU0FGRV9NQUlOKGludCBhcmdjLCBjaGFyKiBhcmd2W10pCnsKICAgIC8v
IFByb2dyYW0gb3B0aW9ucwogICAgc3RkOjpzdHJpbmcgYXJncywgYW50OwogICAgZG91YmxlIHJh
dGUgOwogICAgZG91YmxlIHN0YXJ0X2ZyZXEsIGVuZF9mcmVxOwogICAgZG9uZSA9IGZhbHNlIDsK
CiAgICAvLyBTZXQgdXAgdGhlIHByb2dyYW0gb3B0aW9ucwogICAgcG86Om9wdGlvbnNfZGVzY3Jp
cHRpb24gZGVzYygiQWxsb3dlZCBvcHRpb25zIik7CgogICAgLy8gY2xhbmctZm9ybWF0IG9mZgog
ICAgZGVzYy5hZGRfb3B0aW9ucygpCiAgICAgICAgICAgICgiaGVscCIsICJQcmludCB0aGlzIGhl
bHAgbWVzc2FnZSIpCiAgICAgICAgICAgICgiYXJncyIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4o
JmFyZ3MpLT5kZWZhdWx0X3ZhbHVlKCIiKSwgIlVIRCBkZXZpY2UgYXJncyIpCiAgICAgICAgICAg
ICgiY2hhbiIsIHBvOjp2YWx1ZTxzaXplX3Q+KCZzY2FuX2NoYW4pLT5kZWZhdWx0X3ZhbHVlKDEp
LCAiU2NhbiBDaGFubmVsIikKICAgICAgICAgICAgKCJhbnQiLCBwbzo6dmFsdWU8c3RkOjpzdHJp
bmc+KCZhbnQpLT5kZWZhdWx0X3ZhbHVlKCJSWDEiKSwgIkFudGVubmEiKQogICAgICAgICAgICAo
InN0YXJ0LWZyZXEiLCBwbzo6dmFsdWU8ZG91YmxlPigmc3RhcnRfZnJlcSksICJTdGFydCBmcmVx
dWVuY3kgKGRlZmF1bHRzIHRvIGxvd2VzdCB2YWxpZCBmcmVxdWVuY3kpIikKICAgICAgICAgICAg
KCJlbmQtZnJlcSIsIHBvOjp2YWx1ZTxkb3VibGU+KCZlbmRfZnJlcSksICJFbmQgZnJlcXVlbmN5
IChkZWZhdWx0cyB0byBoaWdoZXN0IHZhbGlkIGZyZXF1ZW5jeSkiKQogICAgICAgICAgICAoInJh
dGUiLCBwbzo6dmFsdWU8ZG91YmxlPigmcmF0ZSktPmRlZmF1bHRfdmFsdWUoMTAwZTYpLCAiSW5j
b21pbmcgc2FtcGxlIHJhdGUiKQogICAgICAgICAgICA7CgogICAgLy8gY2xhbmctZm9ybWF0IG9u
CiAgICBwbzo6dmFyaWFibGVzX21hcCB2bTsKICAgIHBvOjpzdG9yZShwbzo6cGFyc2VfY29tbWFu
ZF9saW5lKGFyZ2MsIGFyZ3YsIGRlc2MpLCB2bSk7CiAgICBwbzo6bm90aWZ5KHZtKTsKCiAgICAv
LyBSZWNlaXZlIGNoYW5uZWwgaXMgb3Bwb3NpdGUgb2Ygc2Nhbm5pbmcgY2hhbm5lbAogICAgaWYo
IHNjYW5fY2hhbiA9PSAwICkgcmVjdl9jaGFuID0gMSA7CiAgICBlbHNlICAgICAgICAgICAgICAg
ICByZWN2X2NoYW4gPSAwIDsKCiAgICBpZiAodm0uY291bnQoImhlbHAiKSkgewogICAgICAgIHN0
ZDo6Y291dCA8PCAiVHdpblJYIE5vaXNlIElzc3VlIC0gIiA8PCBkZXNjIDw8IHN0ZDo6ZW5kbDsK
ICAgICAgICByZXR1cm4gRVhJVF9TVUNDRVNTOwogICAgfQoKICAgIC8vIENyZWF0ZSBhIFVTUlAg
ZGV2aWNlCiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQ3JlYXRpbmcgdGhlIFVTUlAg
ZGV2aWNlIHdpdGggYXJnczogXCIlc1wiLi4uXG4iKQogICAgICAgICAgICAgICAgICAgICAlIGFy
Z3M7CiAgICB1c3JwID0gdWhkOjp1c3JwOjptdWx0aV91c3JwOjptYWtlKGFyZ3MpOwoKICAgIC8v
IE1ha2Ugc3VyZSB0aGUgVVNSUCBpcyBhbiBYM3h4IHdpdGggYSBUd2luUlgKICAgIHVoZDo6ZGlj
dDxzdGQ6OnN0cmluZywgc3RkOjpzdHJpbmc+IGluZm8gPSB1c3JwLT5nZXRfdXNycF9yeF9pbmZv
KHNjYW5fY2hhbik7CiAgICBpZiAoaW5mby5nZXQoIm1ib2FyZF9pZCIpLmZpbmQoIlgzIikgPT0g
c3RkOjpzdHJpbmc6Om5wb3MpIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAg
ICAgICAgICAgICJUaGlzIGV4YW1wbGUgY2FuIG9ubHkgYmUgdXNlZCB3aXRoIGFuIFgtU2VyaWVz
IG1vdGhlcmJvYXJkLiIpOwogICAgfQoKICAgIHVzcnAtPnNldF9yeF9zdWJkZXZfc3BlYyh1aGQ6
OnVzcnA6OnN1YmRldl9zcGVjX3QoIkI6MCBCOjEiKSkgOwogICAgdXNycC0+c2V0X3J4X2FudGVu
bmEoYW50LCBzY2FuX2NoYW4pIDsKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJTZXR0
aW5nIHNhbXBsZSByYXRlIHRvOiAlZFxuIikgJSByYXRlOwogICAgdXNycC0+c2V0X3J4X3JhdGUo
cmF0ZSk7CiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQWN0dWFsIHNhbXBsZSByYXRl
OiAgICAgJWRcbiIpICUgdXNycC0+Z2V0X3J4X3JhdGUoKTsKCiAgICBzdGQ6OmNvdXQgPDwgImlu
Zm8gcnhfaWQ6ICIgPDwgaW5mby5nZXQoInJ4X2lkIikgPDwgc3RkOjplbmRsIDsKICAgIGlmIChp
bmZvLmdldCgicnhfaWQiKS5maW5kKCJUd2luUlgiKSA9PSBzdGQ6OnN0cmluZzo6bnBvcykgewog
ICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigKICAgICAgICAgICAgIlRoaXMgZXhhbXBs
ZSBjYW4gb25seSBiZSB1c2VkIHdpdGggYSBUd2luUlggZGF1Z2h0ZXJib2FyZC4iKTsKICAgIH0K
CiAgICAvLyBWYWxpZGF0ZSBmcmVxdWVuY3kgcmFuZ2UKICAgIHVoZDo6ZnJlcV9yYW5nZV90IHJ4
X2ZyZXFfcmFuZ2UgPSB1c3JwLT5nZXRfcnhfZnJlcV9yYW5nZShzY2FuX2NoYW4pOwogICAgaWYg
KCF2bS5jb3VudCgic3RhcnQtZnJlcSIpKSB7CiAgICAgICAgc3RhcnRfZnJlcSA9IHJ4X2ZyZXFf
cmFuZ2Uuc3RhcnQoKTsKICAgIH0KICAgIGlmICghdm0uY291bnQoImVuZC1mcmVxIikpIHsKICAg
ICAgICBlbmRfZnJlcSA9IHJ4X2ZyZXFfcmFuZ2Uuc3RvcCgpOwogICAgfQogICAgaWYgKHN0YXJ0
X2ZyZXEgPCByeF9mcmVxX3JhbmdlLnN0YXJ0KCkgb3IgZW5kX2ZyZXEgPiByeF9mcmVxX3Jhbmdl
LnN0b3AoKSkgewogICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigKICAgICAgICAgICAg
KGJvb3N0Ojpmb3JtYXQoIlN0YXJ0IGFuZCBzdG9wIGZyZXF1ZW5jaWVzIG11c3QgYmUgYmV0d2Vl
biAlZCBhbmQgJWQgTUh6IikKICAgICAgICAgICAgICAgICUgKHJ4X2ZyZXFfcmFuZ2Uuc3RhcnQo
KSAvIDFlNikgJSAocnhfZnJlcV9yYW5nZS5zdG9wKCkgLyAxZTYpKQogICAgICAgICAgICAgICAg
LnN0cigpKTsKICAgIH0KICAgIGlmIChzdGFydF9mcmVxID4gZW5kX2ZyZXEpIHsKICAgICAgICB0
aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoIlN0YXJ0IGZyZXF1ZW5jeSBtdXN0IGJlIGxlc3MgdGhh
biBlbmQgZnJlcXVlbmN5LiIpOwogICAgfQogICAgaWYgKChlbmRfZnJlcSAtIHN0YXJ0X2ZyZXEp
ID4gMCBhbmQgKGVuZF9mcmVxIC0gc3RhcnRfZnJlcSkgPCByYXRlKSB7CiAgICAgICAgdGhyb3cg
dWhkOjpydW50aW1lX2Vycm9yKCJUaGUgc2FtcGxlIHJhdGUgbXVzdCBiZSBsZXNzIHRoYW4gdGhl
IHJhbmdlIGJldHdlZW4gIgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidGhlIHN0
YXJ0IGFuZCBlbmQgZnJlcXVlbmNpZXMuIik7CiAgICB9CgogICAgZm9yIChkb3VibGUgcnhfZnJl
cSA9IHN0YXJ0X2ZyZXEgOyByeF9mcmVxIDwgZW5kX2ZyZXEgOyByeF9mcmVxICs9IHJhdGUpIHsK
ICAgICAgICByZl9mcmVxcy5wdXNoX2JhY2socnhfZnJlcSk7CiAgICB9CiAgICBzdGQ6OmNvdXQg
PDwgYm9vc3Q6OmZvcm1hdCgiVG90YWwgSG9wczogJWRcbiIpICUgcmZfZnJlcXMuc2l6ZSgpOwoK
ICAgIC8vIEhvcCBmcmVxdWVuY2llcyBhbmQgYWNxdWlyZSBidXJzdHMgb2Ygc2FtcGxlcyBhdCBl
YWNoIHVudGlsIGRvbmUgc3dlZXBpbmcKICAgIHN0ZDo6Y291dCA8PCAiU2Nhbm5pbmcuLi4iIDw8
IHN0ZDo6ZW5kbCA7CiAgICBhdXRvIHN0YXJ0X3RpbWUgPSBzdGQ6OmNocm9ubzo6c3lzdGVtX2Ns
b2NrOjpub3coKSA7CiAgICBhdXRvIHN0b3BfdGltZSA9IHN0ZDo6Y2hyb25vOjpzeXN0ZW1fY2xv
Y2s6Om5vdygpIDsKCiAgICBzdGQ6OnNpZ25hbChTSUdJTlQsICZzaWdfaW50X2hhbmRsZXIpIDsK
ICAgIHN0ZDo6Y291dCA8PCAiUHJlc3MgQ3RybCtDIHRvIHN0b3AsIEVOVEVSIHRvIHNhdmUgc2Ft
cGxlcyAuLi4iIDw8IHN0ZDo6ZW5kbCA7CgogICAgYXV0byB1c2VyX2lucHV0ID0gc3RkOjp0aHJl
YWQoY2hlY2tfdXNlcl9pbnB1dCkgOwogICAgYXV0byByeF9zdHJlYW0gPSBzdGQ6OnRocmVhZCh0
d2lucnhfcmVjdikgOwoKICAgIHdoaWxlICghZG9uZSkgewogICAgICAgIGF1dG8gbG9ja2VkID0g
dXNycC0+Z2V0X3J4X3NlbnNvcigibG9fbG9ja2VkIiwgc2Nhbl9jaGFuKTsKCiAgICAgICAgc3Rh
cnRfdGltZSA9IHN0ZDo6Y2hyb25vOjpzeXN0ZW1fY2xvY2s6Om5vdygpIDsKICAgICAgICBmb3Ig
KHNpemVfdCBpID0gMDsgaSA8IHJmX2ZyZXFzLnNpemUoKTsgaSsrKSB7CiAgICAgICAgICAgIC8v
IFNldCB0aGUgZnJlcXVlbmN5CiAgICAgICAgICAgIHVzcnAtPnNldF9yeF9mcmVxKHJmX2ZyZXFz
W2ldLCBzY2FuX2NoYW4pIDsKCiAgICAgICAgICAgIC8vIFNldCBtYXhpbXVtIGdhaW4KICAgICAg
ICAgICAgdXNycC0+c2V0X3J4X2dhaW4oOTMsIHNjYW5fY2hhbikgOwoKICAgICAgICAgICAgLy8g
V2FpdCBvZiB0aGUgTE8gdG8gYmUgbG9ja2VkCiAgICAgICAgICAgIGRvIHsKICAgICAgICAgICAg
ICAgIGxvY2tlZCA9IHVzcnAtPmdldF9yeF9zZW5zb3IoImxvX2xvY2tlZCIsIHNjYW5fY2hhbikg
OwogICAgICAgICAgICB9IHdoaWxlKCAhbG9ja2VkLnRvX2Jvb2woKSApIDsKICAgICAgICB9CiAg
ICAgICAgc3RvcF90aW1lID0gc3RkOjpjaHJvbm86OnN5c3RlbV9jbG9jazo6bm93KCkgOwogICAg
ICAgIGF1dG8gdXMgPSBzdGQ6OmNocm9ubzo6ZHVyYXRpb25fY2FzdDxzdGQ6OmNocm9ubzo6bWlj
cm9zZWNvbmRzPihzdG9wX3RpbWUgLSBzdGFydF90aW1lKS5jb3VudCgpIDsKICAgICAgICBzdGQ6
OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiVG90YWwgdGltZTogJTdkIG1pY3Jvc2Vjb25kcyAgKCU3
LjJmIHVzZWMvaG9wKVxyIikgJSBzdGF0aWNfY2FzdDxmbG9hdD4odXMpICUgKHN0YXRpY19jYXN0
PGZsb2F0Pih1cykgLyByZl9mcmVxcy5zaXplKCkpIDsKICAgICAgICBzdGQ6OmNvdXQgPDwgc3Rk
OjpmbHVzaCA7CiAgICB9CgogICAgdXNlcl9pbnB1dC5qb2luKCkgOwogICAgcnhfc3RyZWFtLmpv
aW4oKSA7CgogICAgc3RkOjpjb3V0IDw8ICJEb25lISIgPDwgc3RkOjplbmRsOwoKICAgIHVzcnAu
cmVzZXQoKTsKICAgIHJldHVybiBFWElUX1NVQ0NFU1M7Cn0K
--000000000000c0698405ed4d323a
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000c0698405ed4d323a--
