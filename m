Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D3C6C90EC
	for <lists+usrp-users@lfdr.de>; Sat, 25 Mar 2023 22:20:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1933F384961
	for <lists+usrp-users@lfdr.de>; Sat, 25 Mar 2023 17:20:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679779216; bh=gH/67swNdXZWwOl7puTmOXKMfi4m396CoLZMvEPqUtM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=au3v+2DUkBZTOQqrAML37okOSpkzsX48cOyomnV8pReNNq8rF+oV5nm77Fo9BqWl2
	 mYUE6b3n8I+ECyPqHj30aAWbBrH/mL9H1yh6K+KeuyarQKsq2MQJgNah9eaInoBMW9
	 Zwu2zJUAQSCOcASMTa5L707quJw2MUg7T1BmP4liZU0R4vbBoeoqpVKu+TieAZPOhc
	 V9Qk/lzDqIeY099QEu4GT06MpcOdjTI13smtjZS8hnO/sDPeuCAk5N8I5OnEBddGdT
	 N8ap59cQerKqzePb3fG/D49GCA4YqamUkMWI40RAGnsI9XDl0P6hbt05aQOKUCKrEW
	 pb6PIgC2+hd8A==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id C782E38492B
	for <usrp-users@lists.ettus.com>; Sat, 25 Mar 2023 17:19:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="6i51pRNm";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id t10so21120238edd.12
        for <usrp-users@lists.ettus.com>; Sat, 25 Mar 2023 14:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1679779174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W7f/87FVCmj9lpwqu450/MxpKHjVUnnJuzJ6emsAJp4=;
        b=6i51pRNmTp7niblFDDlDisCu9Q5ZE54lrJGqQsdl5vEF7nukzTJgUP8iu3NGU58FQg
         S4GiVYQIZzKzGo9zxVo7kzweiR2m24jRHAo4XrTqL1To57B5BFUYQ0emvTMPOm5YjEhE
         H+MiPDtV86Rh5n7oT/w6+zIkyo4S1wJdGPSfmqeLtfpfc5R73N7FFmLVtewm4rQCB4bd
         6ye4pxjpCxJp57sZb4EufXc8Vgax5PMIhR4jVuqdkcx6C47+ZeBjHSVm4RnZIvK1/U6b
         jjsWlQOAhI6xwp74OrtRSwoPTYVtiZ/Cvx5QeGAwdIRrcESZutxM5DdMgO/w7xKNlI4w
         GqRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679779174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W7f/87FVCmj9lpwqu450/MxpKHjVUnnJuzJ6emsAJp4=;
        b=DMe9nzep9R+3EDzN1YJCnyEbIvD18bgHeO3pkDQxYHxQCwlXP1nvDyldigQxrQgXzq
         bqDvS3Hsd9qlMEgUVXmp34ts/nIjniOcW89deV4etI47XrEx16B7RFOwjLEXdcXD6fVs
         Aq4hUJf0GzFp9wd3deHTR0WMZedLJD/Lb7WkzwC6+OkurDsm6pQsblF+fYbB0wlAXlCN
         sPWvWqLwvzPIyI+24MJxsxZrCY7XBx6WZcuBXgMsWSIIcfCug0Xg23CQL56Bqob/9chD
         NE00rs5ij5trq1HLYuX72zdspsKods7l+e3QdEAZ0tR1LtDwanYUlWalpdAxoarz17qd
         wL/Q==
X-Gm-Message-State: AAQBX9dCGY12RGx2ITbMpbEU0++NkIJ8JawxdW7VrHZpn62Z2zq3PgiU
	XLriMOzTkR0U8bpI2GOH22borc/60smNuopQiQKtf0HyiBLHWDCOgKw=
X-Google-Smtp-Source: AKy350bDURGP40SIIZlz9u2C0AiPiZE7pwqIXnWAnYCdXy3I20Cp3xMDLyKU5jvnlP116+S/alAr3tJHvhJHO7I6gGo=
X-Received: by 2002:a50:d6d6:0:b0:4fb:9735:f915 with SMTP id
 l22-20020a50d6d6000000b004fb9735f915mr3336266edj.8.1679779174631; Sat, 25 Mar
 2023 14:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTaPWKEbccXzhkqNtVX6gqVM9za09_94NcN41ucJ=1ZaA@mail.gmail.com>
In-Reply-To: <CAB__hTTaPWKEbccXzhkqNtVX6gqVM9za09_94NcN41ucJ=1ZaA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 25 Mar 2023 16:19:19 -0500
Message-ID: <CAFche=j7dYyd+xqGqzeH7LWYR=spV9yHaRL_nMfWxVAhTS_XPA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: OBKGM6KVZL27XRO56PYQ6NPVTKKYFPTU
X-Message-ID-Hash: OBKGM6KVZL27XRO56PYQ6NPVTKKYFPTU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Backpressure over Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBKGM6KVZL27XRO56PYQ6NPVTKKYFPTU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7262449681010862991=="

--===============7262449681010862991==
Content-Type: multipart/alternative; boundary="0000000000000162ec05f7c0113f"

--0000000000000162ec05f7c0113f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It sounds like something isn't right. The streamers should automatically
backpressure. That's how it works with the radio, and it should be the same
for a custom block connected to stream endpoints.

We have seen cases where host ethernet interfaces can't keep up when you
start approaching the line rate of Ethernet (e.g., 10 Gbps) so they drop
packets, which show up as sequence errors on the RX streamer.

What kinds of rates are you getting across each interface? Is this over 10
GbE? Any chance the "ready" signal isn't being used properly in your block
to allow back-pressure? The block needs to deassert tready to tell the
stream endpoint to backpressure the streamer.

Wade

On Fri, Mar 24, 2023 at 9:41=E2=80=AFAM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I developed a custom RFNoC block and was testing it with a graph that was
> essentially:
>   tx_streamer =3D> myblock =3D> rx_streamer
>
> This works fine unless I send a large number of samples, in which case ba=
d
> stuff happens in terms of sequence errors, timeouts, etc (i.e., the typic=
al
> streaming at high speed woes).
>
> In the case of a Radio that must stream output samples at a fixed rate, I
> can easily understand the need for keeping up on the host side.  But, for
> my case where I am just streaming through a custom block that does not ca=
re
> about sample rate, it would be nice if backpressure could handle the host
> rate variations.
>
> In order to make things "work", I have inserted a "sleep" statement in my
> transmit loop to purposely throttle the Tx rate so that the Rx could keep
> up.  This works well enough but in order to get reliable streaming I am
> forced to throttle more than I would like.  So, I am wondering if anyone
> has ideas on a better way to handle this.
>
> It seems that the host Rx gets overwhelmed and cannot backpressure my
> block. I don't quite understand why because if there is no backpressure,
> how do we get "Overflow" when the radio has no place to put incoming
> samples "because of backpressure"?
>
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000162ec05f7c0113f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It sounds like something isn&#39;t right. The streame=
rs should automatically backpressure. That&#39;s how it works with the radi=
o, and it should be the same for a custom block connected to stream endpoin=
ts.</div><div><br></div><div>We have seen cases where host ethernet interfa=
ces can&#39;t keep up when you start approaching the line rate of Ethernet =
(e.g., 10 Gbps) so they drop packets, which show up as sequence errors on t=
he RX streamer.<br></div><div><br></div><div>What kinds of rates are you ge=
tting across each interface? Is this over 10 GbE? Any chance the &quot;read=
y&quot; signal isn&#39;t being used properly in your block to allow back-pr=
essure? The block needs to deassert tready to tell the stream endpoint to b=
ackpressure the streamer.</div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Ma=
r 24, 2023 at 9:41=E2=80=AFAM Rob Kossler via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi,<br><div>I developed a custom RFNoC block and was testing it with a grap=
h that was essentially:</div><div>=C2=A0 tx_streamer =3D&gt; myblock =3D&gt=
; rx_streamer</div><div><br></div><div>This works fine unless I send a larg=
e number of samples, in which case bad stuff happens in terms of sequence e=
rrors, timeouts, etc (i.e., the typical streaming at high speed woes).</div=
><div><br></div><div>In the case of a Radio that must stream output samples=
 at a fixed rate, I can easily understand the need for keeping up on the ho=
st side.=C2=A0 But, for my case where I am just streaming through a custom =
block that does not care about sample rate, it would be nice if backpressur=
e could handle the host rate variations.</div><div><br></div><div>In order =
to make things &quot;work&quot;, I have inserted a &quot;sleep&quot; statem=
ent in my transmit loop to purposely throttle the Tx rate so that the Rx co=
uld keep up.=C2=A0 This works well enough but in order to get reliable stre=
aming I am forced to throttle more than I would like.=C2=A0 So, I am wonder=
ing if anyone has ideas on a better way to handle this.=C2=A0=C2=A0</div><d=
iv><br></div><div>It seems that the host Rx gets overwhelmed and cannot bac=
kpressure my block. I don&#39;t quite understand why because if there is no=
 backpressure, how do we get &quot;Overflow&quot; when the radio has no pla=
ce to put incoming samples &quot;because of backpressure&quot;?</div><div><=
br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000162ec05f7c0113f--

--===============7262449681010862991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7262449681010862991==--
