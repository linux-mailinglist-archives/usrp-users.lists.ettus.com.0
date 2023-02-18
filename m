Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B7069B71B
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 01:45:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 154F638491E
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 19:45:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676681129; bh=PFS73kxKPQO0SUjEcUGwONdIpCyz/oSpjZYgtw3qobo=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=giL+1C3qV8GpRbq1qcSo4CfhFSpV1/i8ixWe1H3Awq5nDW8GBhp3ubWduDeDgVmXy
	 I+D4otmWyz097B9nv9TuWw+KiJWTvEly5A0bA0OY4OuIZEFkYEylePB+mqe4LseGe/
	 tFTiCDM1sd/Jf2JEvjaoe1IoXHqMvtUZ2uQQS2cldnxtpxegUvMoOKcqoAcUbGyYMf
	 2HMNQPXwSDzpX0jqr8GK/9QYnOTNhHwfUQGSxrr65X5buvDi/J9yE3JQxa675fD1FP
	 zIezkKXg6hcsMT5zxJx0Fb8KxmRKgj7kDKASAuoQ2l6Y/kT0BHaEIAFDbao7Rm1O9H
	 5oxr25C9yAiOQ==
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 840733848C3
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 19:44:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="CBRMTdf7";
	dkim-atps=neutral
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-17188373183so3064020fac.4
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 16:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PrUsnWHLpa+kDEwJZGA+qwuYo9DbkrfwzRJoBEWPrW0=;
        b=CBRMTdf7HkYwBjH2UwwL3I1R3Vi2iwEf1f4GcN6Zt6VcmZqcAcAE+aNVqiw0HaVRsx
         6O6vGZJ+8Drs1b0WCVES4RlkWerxjvEba8OiiIMW2do9iQv7pcD1LWjEt5ee6hxWzlis
         S4etODgHks6/XPL/kjBcp0r45QiKeSpC5Dzj5Ihaj+K8sSFuWCYdtYcsNj1jtu7+NX0Y
         sNmsHMrsd9Cryk/fAaKktsP/ffOekazEang3Ry5UjJX5iZljkLzUN+2/7TtXjmIlwjh6
         1zBSGkOM3OCTyNo7g8megSKut0JVCVqfdTLsUKB+pvnaYhnylS+JQaee9nI3N4WnIc/w
         i1Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PrUsnWHLpa+kDEwJZGA+qwuYo9DbkrfwzRJoBEWPrW0=;
        b=wH1xjX1NCoM96YA/b8/bGGBCsXzPIffZ7dhQjkLKHJgSxkE6VkhxDE6sgps8rR2Z1j
         PSQbq5fjrrf46TFdyJxYqgh2Jne2RQTmycmEJqOWW2goZ1SYEHlW1mdfeSNK1EnTwmz8
         9/qho3y3Ibo8zJEriUtYcDhlfjs1RoU2HMmBXHsRlFfxAbN0JPESbdGEljRMUMznOx8j
         fnEz1EZKT9C3gXAJENR1ZyaJYtrGSVW/gMKZ6GK2lP6HOHztl7vJl4al32C0T1bx/CxO
         fBKeVyh72ZAAokAILDGFaeBvSywrdo7xl/0bFLDrc0xI9qxbpA9BtEv9oYxO7V6jRzsm
         ELSw==
X-Gm-Message-State: AO0yUKXE920YQFNkpcrgeu3uImtZT+K3o6ozxLhRZZPDis5+Pj2eEJTA
	SoLeCe0M2OKc3t7PW7k0mWV5+v3+1gH8GxvVw9dy7PIMZzaM+2sG
X-Google-Smtp-Source: AK7set9UZEnCPyMe8/lYox5gUrnvkPTE4nBGSVJ3UuSWq8OSoPUP0zg8jlD8olxj0i2WAupzSbYq3wj1DUzL6FYg7vM=
X-Received: by 2002:a05:6870:24a1:b0:16e:83dc:c4be with SMTP id
 s33-20020a05687024a100b0016e83dcc4bemr488226oaq.20.1676681094606; Fri, 17 Feb
 2023 16:44:54 -0800 (PST)
MIME-Version: 1.0
References: <WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8@lists.ettus.com>
In-Reply-To: <WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8@lists.ettus.com>
Date: Fri, 17 Feb 2023 19:44:43 -0500
Message-ID: <CANvw1+SSLnKf2GOK7w4NnrfTEPxDy2wL5ZriNh32TyZsLH0ypQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: TIUK37L7OVTBXD3RMS2CQK5KYTCICSUU
X-Message-ID-Hash: TIUK37L7OVTBXD3RMS2CQK5KYTCICSUU
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Saving TimeStamps and Metadata
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TIUK37L7OVTBXD3RMS2CQK5KYTCICSUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============4544675956457734592=="

--===============4544675956457734592==
Content-Type: multipart/alternative; boundary="0000000000000bdb4905f4eebd6c"

--0000000000000bdb4905f4eebd6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

You need to create a stream first and set the stream mode, num_samps, and
time spec (when to start receiving). After setting that, you need to
receive samples from the stream object. By doing this, you will be
providing rx_metada_t to recv function which will give you the information
you need. If you call usrp->get_time_now(), it will return the current
hardware time, not the buffer receive time. Here is an example for your
reference,

uhd::rx_metadata_t md;
// Assuming you have buffs and samps_ber_buff variables set before
size_t num_rx_samps =3D rx_stream->recv(buffs, samps_per_buff, md);

Here is the buffer time -> md.time_spec_t
Here is the hardware time -> usrp->get_time_now()



Also, is there a limit on the number of packets there can be in a burst?
>
Do you mean the number of samples?


A.

On Fri, Feb 17, 2023 at 7:15 PM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I have an application where I collect I burst of samples from Rx ports,
> and stream the samples into my host computer. I would like to also store
> the timestamps from the packages onto the host computer, as well as store
> from which RX port the signal arrived so I may separate the data in
> different files.
>
> I am a little lost however how to do with within the API. I see there is =
a
> call =E2=80=9Cusrp->get_time_now=E2=80=9D in several of the examples, but=
 it does not
> appear this takes the timestamp from the bursts themselves.
>
> Is there a way within the existing API to retrieve the timestamp from the
> packets at the beginning of each burst. I also see a =E2=80=9Cget_timesta=
mp=E2=80=9D in the
> API but I am unsure what packet this would get the timestamp from if the
> burst has multiple packets.
>
> Also, is there a limit on the number of packets there can be in a burst?
>
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000bdb4905f4eebd6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Joe, <br></div><div><br></div><di=
v>You need to create a stream first and set the stream mode, num_samps, and=
 time spec (when to start receiving). After setting that, you need to recei=
ve samples from the stream object. By doing this, you will be providing rx_=
metada_t to recv function which will give you the information you need. If =
you call usrp-&gt;get_time_now(), it will return the current hardware time,=
 not the buffer receive time. Here is an example for your reference,</div><=
div><br></div><div><span style=3D"color:rgb(36,41,47);font-family:ui-monosp=
ace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono=
&quot;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:pre;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;display:inline;float:none">uhd::</span><span class=
=3D"gmail-pl-c1" style=3D"box-sizing:border-box;font-family:ui-monospace,SF=
Mono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;=
,monospace;font-size:12px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial">rx_metadata_t</span><span style=3D"color:rgb(36,41,47);fo=
nt-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&q=
uot;Liberation Mono&quot;,monospace;font-size:12px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:pre;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;display:inline;float:none"> md;</=
span></div><div><span style=3D"color:rgb(36,41,47);font-family:ui-monospace=
,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&qu=
ot;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;display:inline;float:none">// Assuming you have buffs a=
nd samps_ber_buff variables set before<br></span></div><div><div><span styl=
e=3D"color:rgb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF M=
ono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12=
px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:pre;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;displa=
y:inline;float:none"><span class=3D"gmail-pl-smi" style=3D"box-sizing:borde=
r-box;color:rgb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF =
Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:1=
2px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:pre;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial"><spa=
n class=3D"gmail-pl-c1" style=3D"box-sizing:border-box;font-family:ui-monos=
pace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mon=
o&quot;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:pre;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial">size_t</span><span style=3D"color:rgb(36,41,47);fo=
nt-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&q=
uot;Liberation Mono&quot;,monospace;font-size:12px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:pre;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;display:inline;float:none"> num_r=
x_samps =3D <span style=3D"color:rgb(36,41,47);font-family:ui-monospace,SFM=
ono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,=
monospace;font-size:12px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;display:inline;float:none">rx_stream-&gt;</span><span class=
=3D"gmail-pl-c1" style=3D"box-sizing:border-box;font-family:ui-monospace,SF=
Mono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;=
,monospace;font-size:12px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial">recv</span><span style=3D"color:rgb(36,41,47);font-family=
:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liber=
ation Mono&quot;,monospace;font-size:12px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:pre;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;display:inline;float:none">(buffs, samps_p=
er_buff, md</span><span style=3D"color:rgb(36,41,47);font-family:ui-monospa=
ce,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&=
quot;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;display:inline;float:none">);</span></span></span></s=
pan></div><div><span style=3D"color:rgb(36,41,47);font-family:ui-monospace,=
SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quo=
t;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;display:inline;float:none"><span class=3D"gmail-pl-smi" =
style=3D"box-sizing:border-box;color:rgb(36,41,47);font-family:ui-monospace=
,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&qu=
ot;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial"><span style=3D"color:rgb(36,41,47);font-family:ui-mono=
space,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mo=
no&quot;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:pre;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;display:inline;float:none"><span style=3D"color:rg=
b(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Men=
lo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:pre;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;display:inline;floa=
t:none"><br></span></span></span></span></div><div><span style=3D"color:rgb=
(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menl=
o,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:pre;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;display:inline;float=
:none"><span class=3D"gmail-pl-smi" style=3D"box-sizing:border-box;color:rg=
b(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Men=
lo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:pre;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial"><span style=3D"col=
or:rgb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot=
;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:pre;word-spacing:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial;display:inline=
;float:none"><span style=3D"color:rgb(36,41,47);font-family:ui-monospace,SF=
Mono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;=
,monospace;font-size:12px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;display:inline;float:none">Here is the buffer time -&gt;  =
md.time_spec_t</span></span></span></span></div><div><span style=3D"color:r=
gb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Me=
nlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:pre;word-spacing:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;display:inline;flo=
at:none"><span class=3D"gmail-pl-smi" style=3D"box-sizing:border-box;color:=
rgb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,M=
enlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;font-sty=
le:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:pre;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial"><span style=3D"c=
olor:rgb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&qu=
ot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:pre;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;display:inli=
ne;float:none"><span style=3D"color:rgb(36,41,47);font-family:ui-monospace,=
SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quo=
t;,monospace;font-size:12px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:pre;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;display:inline;float:none">Here is the hardware time -&g=
t; usrp-&gt;get_time_now()<br></span></span></span></span></div><div><table=
 class=3D"gmail-highlight gmail-tab-size gmail-js-file-line-container gmail=
-js-code-nav-container gmail-js-tagsearch-file" style=3D"box-sizing:border-=
box;border-spacing:0px;border-collapse:collapse;color:rgb(36,41,47);font-fa=
mily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&=
quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe =
UI Emoji&quot;;font-size:14px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial"><tbody style=3D"box-sizing:border-box"><tr style=3D"box-sizing:bor=
der-box"><td id=3D"gmail-LC223" class=3D"gmail-blob-code gmail-blob-code-in=
ner gmail-js-file-line" style=3D"box-sizing:border-box;padding:0px 10px;lin=
e-height:20px;vertical-align:top;display:table-cell;overflow:visible;font-f=
amily:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;=
Liberation Mono&quot;,monospace;font-size:12px;white-space:pre"><br></td></=
tr><tr style=3D"box-sizing:border-box;background-color:transparent"><td id=
=3D"gmail-L224" class=3D"gmail-blob-num gmail-js-line-number gmail-js-code-=
nav-line-number gmail-js-blob-rnum" style=3D"box-sizing:border-box;padding:=
0px 10px;width:50px;min-width:50px;font-family:ui-monospace,SFMono-Regular,=
&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;fo=
nt-size:12px;line-height:20px;text-align:right;white-space:nowrap;vertical-=
align:top"><br></td><td id=3D"gmail-LC224" class=3D"gmail-blob-code gmail-b=
lob-code-inner gmail-js-file-line" style=3D"box-sizing:border-box;padding:0=
px 10px;line-height:20px;vertical-align:top;display:table-cell;overflow:vis=
ible;font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Cons=
olas,&quot;Liberation Mono&quot;,monospace;font-size:12px;white-space:pre">=
<br></td></tr></tbody></table><span style=3D"color:rgb(36,41,47);font-famil=
y:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Libe=
ration Mono&quot;,monospace;font-size:12px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:pre;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;display:inline;float:none"><span class=3D=
"gmail-pl-smi" style=3D"box-sizing:border-box;color:rgb(36,41,47);font-fami=
ly:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Lib=
eration Mono&quot;,monospace;font-size:12px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:pre;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial"></span></span></div><div> <blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p>Also, is there a limit on the numbe=
r of packets there can be in a burst?</p></blockquote><p>Do you mean the nu=
mber of samples? <br></p><p><br></p>A.<br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023=
 at 7:15 PM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
Hello,</p><p>I have an application where I collect I burst of samples from =
Rx ports, and stream the samples into my host computer. I would like to als=
o store the timestamps from the packages onto the host computer, as well as=
 store from which RX port the signal arrived so I may separate the data in =
different files.</p><p>I am a little lost however how to do with within the=
 API. I see there is a call =E2=80=9Cusrp-&gt;get_time_now=E2=80=9D in seve=
ral of the examples, but it does not appear this takes the timestamp from t=
he bursts themselves.</p><p>Is there a way within the existing API to retri=
eve the timestamp from the packets at the beginning of each burst. I also s=
ee a =E2=80=9Cget_timestamp=E2=80=9D in the API but I am unsure what packet=
 this would get the timestamp from if the burst has multiple packets. </p><=
p>Also, is there a limit on the number of packets there can be in a burst?<=
/p><p><br></p><p>Thanks,</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000000bdb4905f4eebd6c--

--===============4544675956457734592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4544675956457734592==--
