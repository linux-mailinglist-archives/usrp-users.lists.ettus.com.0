Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 265D66CA67E
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 15:52:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D07C38498F
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 09:52:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679925153; bh=1j+uF1lxutzS3IJUHbuNiN0+IJpqua2GMHTDIg6nw4o=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=VppN/SO9dMtU86UMwPUZtwHkNEhw/T34iH5AlKFtnprjQSuc1HW5MdOES3h1xx4NA
	 QJ7btIZu7usGn/xXKt9AmqIt0YFypdULILcXIvCDSy5B2Y91yJFyvUfTj9s/HVK599
	 6XA0mnUGR2H4nlrusOzzZu5L7Q4xpMJxByfP9swIRIsUyItUFRjYYkiLFiG/AXduIV
	 Mt2hEridxeJuUKE8K/x5UA74Cy4fb1F36mMJy1t7rXjJdWMOJDV9yts5Xxrl95t+9y
	 oGRKBupZ9NCdH5Uw7HoFqn/M0a2uFdkQeBpjVNXHKfd+vx3xPwcrCEjAFBwV/l0Nev
	 fWIxDdF5bAzvA==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C7CF3848B0
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 09:44:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QFiQzmjE";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id ek18so36445493edb.6
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 06:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1679924697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FSaLhUxzXfaD4p+SsL21SYSBieBGo4aWdMaL6035qF8=;
        b=QFiQzmjENjp66L9G8hsLxk5oTefNVq63154XgXSaPTW6891Ih9Z6bJ28QukjlPSLfz
         eegReX+X81K+qSrWFN7OgIfWXKVK7Ca9xLlh29cAFOallwPwhyhXPrNb36BDibtka4t/
         OO71DGYk5Z1EAQXhlqUHFsO9XZZrYJo4B1XyrIIDGim5uFX3rbLF37zqy584XycUSfpP
         B/fd+4lz3vG3p+QNpFb4g3Vppw+spZMSGr931/b/XP7UtZPVUg5sPwecNtdUF9PjgErL
         S0emMWXQfEKT9qq6Ow0nIVoikjHYt6Sidk6XIz3om3dF2I12IeBvgPpDPor9CHpmScZN
         hmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679924697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FSaLhUxzXfaD4p+SsL21SYSBieBGo4aWdMaL6035qF8=;
        b=UvH6bGNCPMeGh8SdFEio1q5tnNX76psmlRdTYw4bVeCIu4HJ7dI34A1J01J4OLL3n5
         w/gdhSwGkO+XDAHv+Vvs4+i9CXWcCfSihTaiNGKL2d9F0XYqhkVZLFccTS9MQG/0zDJb
         M64MMjDKoggWUN9pYdy6SeRdagQyudTf3PYMeuqv7xKdtAAlUHxpFmLQNdAUZn9EQPD0
         BqQC/ghesqBBB/UqP6fTiO4NL8s4T4K92bCpOzoblSUNhNor9JXmzQhekqcRvasJC4g9
         IP9MRjgUD9ScrxywBYMivRre4RIKia1LMWJU0VU90eFnt5uit2s6fJWBRTW2hYYRZb1q
         rHzw==
X-Gm-Message-State: AAQBX9e9Y52HdM4jAXtIJNo/2+j0fH67MMVEPyKopRhoodtcFtC1r0n8
	ou58BCe6aIRBM5Axpj1CX+QhrYca0ITruFIinlpGcA==
X-Google-Smtp-Source: AKy350YzKQioaUgmcI0BhNMh+2DRgDklhdBP9dO2hrL9zYuOneDWN+2Ug/dPcX2Oof1tUOCfBXLwejTwGmi8lUg3fvc=
X-Received: by 2002:a17:906:e08c:b0:920:da8c:f7b0 with SMTP id
 gh12-20020a170906e08c00b00920da8cf7b0mr5924842ejb.6.1679924696791; Mon, 27
 Mar 2023 06:44:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTaPWKEbccXzhkqNtVX6gqVM9za09_94NcN41ucJ=1ZaA@mail.gmail.com>
 <CAFche=j7dYyd+xqGqzeH7LWYR=spV9yHaRL_nMfWxVAhTS_XPA@mail.gmail.com>
In-Reply-To: <CAFche=j7dYyd+xqGqzeH7LWYR=spV9yHaRL_nMfWxVAhTS_XPA@mail.gmail.com>
Date: Mon, 27 Mar 2023 09:44:45 -0400
Message-ID: <CAB__hTRr83tdScK43WgaFTiG06r5H1UK3NWFLm2WXvHtXa2xNw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: M2L4WN656K35HE6HNG6663ZGPPYUQCUM
X-Message-ID-Hash: M2L4WN656K35HE6HNG6663ZGPPYUQCUM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Backpressure over Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M2L4WN656K35HE6HNG6663ZGPPYUQCUM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4973666956348910706=="

--===============4973666956348910706==
Content-Type: multipart/alternative; boundary="000000000000cdc50705f7e1f225"

--000000000000cdc50705f7e1f225
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,
I am using 10GbE.  It is likely an issue with host Ethernet handling (rx
descriptors or something like that) such that the OS ethernet handling gets
overwhelmed prior to UHD backpressuring the FPGA.  My OS is Ubuntu 22.04
LTS.

After lots of playing around, I am now getting semi-reliable behavior
running at about 7-8Gbps but it is curious that if I try to run my
application several times in a row, I often get bad behavior.  Instead, if
I run my application with a very short sample burst (say 4096 samples
total) following a typical execution with a long sample burst, this seems
to prevent bad behavior.  So, my theory is that running with the short
burst helps the host OS to clear / reset Ethernet buffers such that the
subsequent long burst can be successful.

Rob

On Sat, Mar 25, 2023 at 5:19=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> It sounds like something isn't right. The streamers should automatically
> backpressure. That's how it works with the radio, and it should be the sa=
me
> for a custom block connected to stream endpoints.
>
> We have seen cases where host ethernet interfaces can't keep up when you
> start approaching the line rate of Ethernet (e.g., 10 Gbps) so they drop
> packets, which show up as sequence errors on the RX streamer.
>
> What kinds of rates are you getting across each interface? Is this over 1=
0
> GbE? Any chance the "ready" signal isn't being used properly in your bloc=
k
> to allow back-pressure? The block needs to deassert tready to tell the
> stream endpoint to backpressure the streamer.
>
> Wade
>
> On Fri, Mar 24, 2023 at 9:41=E2=80=AFAM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I developed a custom RFNoC block and was testing it with a graph that wa=
s
>> essentially:
>>   tx_streamer =3D> myblock =3D> rx_streamer
>>
>> This works fine unless I send a large number of samples, in which case
>> bad stuff happens in terms of sequence errors, timeouts, etc (i.e., the
>> typical streaming at high speed woes).
>>
>> In the case of a Radio that must stream output samples at a fixed rate, =
I
>> can easily understand the need for keeping up on the host side.  But, fo=
r
>> my case where I am just streaming through a custom block that does not c=
are
>> about sample rate, it would be nice if backpressure could handle the hos=
t
>> rate variations.
>>
>> In order to make things "work", I have inserted a "sleep" statement in m=
y
>> transmit loop to purposely throttle the Tx rate so that the Rx could kee=
p
>> up.  This works well enough but in order to get reliable streaming I am
>> forced to throttle more than I would like.  So, I am wondering if anyone
>> has ideas on a better way to handle this.
>>
>> It seems that the host Rx gets overwhelmed and cannot backpressure my
>> block. I don't quite understand why because if there is no backpressure,
>> how do we get "Overflow" when the radio has no place to put incoming
>> samples "because of backpressure"?
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000cdc50705f7e1f225
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Wade,</div><div>I am using 10GbE.=C2=A0 It is like=
ly an issue with host Ethernet handling (rx descriptors or something like t=
hat) such that the OS ethernet handling gets overwhelmed prior to UHD backp=
ressuring the FPGA.=C2=A0 My OS is Ubuntu 22.04 LTS.</div><div><br></div><d=
iv>After lots of playing around, I am now getting semi-reliable behavior ru=
nning at about 7-8Gbps but it is curious that if I try to run my applicatio=
n several times in a row, I often get bad behavior.=C2=A0 Instead, if I run=
 my application with a very short sample burst (say 4096 samples total) fol=
lowing a typical execution with a long sample burst, this seems to prevent =
bad behavior.=C2=A0 So, my theory is that running with the short burst help=
s the host OS to clear / reset Ethernet buffers such that the subsequent lo=
ng burst can be successful.</div><div><br></div><div>Rob</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 25, 202=
3 at 5:19=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">w=
ade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>It sounds like something isn&#39;t =
right. The streamers should automatically backpressure. That&#39;s how it w=
orks with the radio, and it should be the same for a custom block connected=
 to stream endpoints.</div><div><br></div><div>We have seen cases where hos=
t ethernet interfaces can&#39;t keep up when you start approaching the line=
 rate of Ethernet (e.g., 10 Gbps) so they drop packets, which show up as se=
quence errors on the RX streamer.<br></div><div><br></div><div>What kinds o=
f rates are you getting across each interface? Is this over 10 GbE? Any cha=
nce the &quot;ready&quot; signal isn&#39;t being used properly in your bloc=
k to allow back-pressure? The block needs to deassert tready to tell the st=
ream endpoint to backpressure the streamer.</div><div><br></div><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Mar 24, 2023 at 9:41=E2=80=AFAM Rob Kossler via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I developed a custom RFNoC =
block and was testing it with a graph that was essentially:</div><div>=C2=
=A0 tx_streamer =3D&gt; myblock =3D&gt; rx_streamer</div><div><br></div><di=
v>This works fine unless I send a large number of samples, in which case ba=
d stuff happens in terms of sequence errors, timeouts, etc (i.e., the typic=
al streaming at high speed woes).</div><div><br></div><div>In the case of a=
 Radio that must stream output samples at a fixed rate, I can easily unders=
tand the need for keeping up on the host side.=C2=A0 But, for my case where=
 I am just streaming through a custom block that does not care about sample=
 rate, it would be nice if backpressure could handle the host rate variatio=
ns.</div><div><br></div><div>In order to make things &quot;work&quot;, I ha=
ve inserted a &quot;sleep&quot; statement in my transmit loop to purposely =
throttle the Tx rate so that the Rx could keep up.=C2=A0 This works well en=
ough but in order to get reliable streaming I am forced to throttle more th=
an I would like.=C2=A0 So, I am wondering if anyone has ideas on a better w=
ay to handle this.=C2=A0=C2=A0</div><div><br></div><div>It seems that the h=
ost Rx gets overwhelmed and cannot backpressure my block. I don&#39;t quite=
 understand why because if there is no backpressure, how do we get &quot;Ov=
erflow&quot; when the radio has no place to put incoming samples &quot;beca=
use of backpressure&quot;?</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000cdc50705f7e1f225--

--===============4973666956348910706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4973666956348910706==--
