Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4851A621944
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 17:23:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22247383973
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 11:23:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667924596; bh=NPJ1hv0IW57wTEY1F7pduiLTIJcUBl5Sxie9yT4PA/Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DKFXnIhbNGl/E9Ozj5ZAKci4H+o+p6fnJF7qdmaIPr3Dr099CpMpcJMIrISpsf53v
	 dYyUBi8q7qsnGvUC1u2/L5wuxwS187Vs7C6HehuJz3VDMPIowlEFWgiDBvEj3hGxgY
	 nb8x+8C/SrZcebHEV0wPgBFlPyfwJaymyfbqjFByRufy3SXzt7uP8F5i+5FDUsElon
	 6og4iYPU4/sJxeoojAjYWvwOLyDjiNwhWct/c1ymDOV5YMOCCi4oOjAtwbdmTtU88B
	 PcJjN2k11YBzPxATABtzSpB9dkmforiNOfmbKJwAUBZS6uwvbw1wBzw0x+6zIwDkq7
	 wy7IzB8Xkm+Wg==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 13D9C3809CA
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 11:21:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UT15mBje";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id j130so17939015ybj.9
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 08:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W1PBGb5x0R5zVlKxDW+g5QI72UFuTkQj5sju1trrXo4=;
        b=UT15mBjeECeL0QXK3XV3R6rvEJPe0OZKNvwPq3MTBF5NjUc2LaXRPfqEJZVo0Q01IW
         Js3EBALPsXFB15J+Arh0PnphjgVFikcM24lLWO17TSvo4NwEjn9+ydyElhOns6SP5ZZj
         JJf5nqYLlslSNUaE/QaT+iqlOcxun3xqLKPPUFfq6qW6fGQv1uWboIUY6eOJnY5EvlNf
         XNjsSIerwqVyziTwh4NKeJRkoq5/GpA8dyjas+9ufZ/pg+DUgos8na+8n8NnD0noLVRX
         tGfLD+4t2hUewR8hCztQbk/MU0QNC/ehdVlgWPX2i2CZisfqdnriAGQ+9Bd3RXfCmuzS
         H7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W1PBGb5x0R5zVlKxDW+g5QI72UFuTkQj5sju1trrXo4=;
        b=w1DDhmWnIhBzi37aZ3QX45Ognoqw/yLy4r762Tr8KDDo3xpJMUwB+uMIMnVQbks0uK
         dsGJYB9IUsAfhDRNTnTH0EL9mjpMqnbNlsJ4wZrwZGsZsnBriJFPMGpusy33L+YIGxDK
         DfUwRZl0hoWeNdfKf3xgOJcNizw0Ow44rXYD8eSg0SgycMkIrldLcVZm3U96/MiuMn9H
         tD4cd9IBNRmbfIVEpCZuOvUD5s+Od+NIYjOm41Bu2Vziq+8HFXhC23mvrwnnfDmviQb9
         etBH4Edq9/6N1pG2Aky4kMdtUCNw1f+oSB85Fu6TnquXMO+6u8IL7uLyUR6OFgvV3I8f
         CTRg==
X-Gm-Message-State: ACrzQf37S8npiJCA1zasJikuG7urUQS5sGbfpMLHK+//3/w47GmqKlHK
	XqyY3LHmhjR7TUjecKACFZq6pTfXkdzYsq+Vwbo=
X-Google-Smtp-Source: AMsMyM67tGhseDfDpcyCxWAMHeMzXNqR19KE4kGtEEo65Q0HxoVNQJ7I7WO+2nabVydZfASvlH7wiH2U6ezRHczucAQ=
X-Received: by 2002:a25:6e07:0:b0:6ca:22bd:761b with SMTP id
 j7-20020a256e07000000b006ca22bd761bmr54319949ybc.229.1667924518695; Tue, 08
 Nov 2022 08:21:58 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
 <c1675c20-fbad-cb18-f817-df7bf69f217f@ettus.com>
In-Reply-To: <c1675c20-fbad-cb18-f817-df7bf69f217f@ettus.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 8 Nov 2022 16:21:47 +0000
Message-ID: <CAA=S3PtjXVBXUCHSEfEOrZpPU0mgC=CqJnthrLE+Mm_TFzV=yQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 2C27QHINAFQXJ6OEGSGWZKMCOCO674RD
X-Message-ID-Hash: 2C27QHINAFQXJ6OEGSGWZKMCOCO674RD
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can I define a global reg variable in Verilog between RFNOC blocks?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2C27QHINAFQXJ6OEGSGWZKMCOCO674RD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1404816934514062501=="

--===============1404816934514062501==
Content-Type: multipart/alternative; boundary="00000000000072f6a805ecf7f094"

--00000000000072f6a805ecf7f094
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks very much, Marcus. Can explain more? I had not any idea how develop
your way?

On Mon, Nov 7, 2022 at 11:29 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi sp,
>
> That sounds like a bad idea. How are you planning to synchronize access t=
o
> that register?
>
> Generally, in almost *any* context, avoid global state. That makes things
> complicated and
> error prone; this is true for python as much as it is for C++, as much as
> it is for
> digital hardware design (in verilog or any other way); it's even true for
> design of
> mechanical machine factory floors (if you make each processing step as
> independent from
> the other as possible, you increase reliability).
>
> So, I'd recommend you find a different way to exchange information betwee=
n
> two blocks.
> Exchanging information is the point of RFNoC, by the way.
>
> Best regards,
> Marcus
>
> On 31.07.22 17:52, sp wrote:
> > How can I define a global reg variable in Verilog between RFNOC blocks?
> > I developed two RFNOC blocks: RFNOC block A, and RFNOC block B
> > How can define a reg variable that shares between RFNOC blocks in USRP?
> > Can anyone guide me?
> >
> > I study about global reg variable in the Verilog module, see below
> link,  but I can not
> > do it for RFNOC blocks...
> > How can implement this mechanism in RFNOC blocks
> >
> https://www.edaboard.com/threads/how-to-define-global-variable-in-verilog=
.174172/
> >
> > Thanks in advance
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000072f6a805ecf7f094
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks very much, Marcus. Can explain more? I had not any =
idea how develop your way?</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Nov 7, 2022 at 11:29 PM Marcus M=C3=BClle=
r &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i sp,<br>
<br>
That sounds like a bad idea. How are you planning to synchronize access to =
that register?<br>
<br>
Generally, in almost *any* context, avoid global state. That makes things c=
omplicated and <br>
error prone; this is true for python as much as it is for C++, as much as i=
t is for <br>
digital hardware design (in verilog or any other way); it&#39;s even true f=
or design of <br>
mechanical machine factory floors (if you make each processing step as inde=
pendent from <br>
the other as possible, you increase reliability).<br>
<br>
So, I&#39;d recommend you find a different way to exchange information betw=
een two blocks. <br>
Exchanging information is the point of RFNoC, by the way.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 31.07.22 17:52, sp wrote:<br>
&gt; How can I define a global reg variable in Verilog between RFNOC blocks=
?<br>
&gt; I developed two RFNOC blocks: RFNOC block A, and RFNOC block B<br>
&gt; How can define a reg variable=C2=A0that shares between RFNOC blocks in=
 USRP?<br>
&gt; Can anyone guide me?<br>
&gt;<br>
&gt; I study about global reg variable=C2=A0in the Verilog module, see belo=
w link,=C2=A0=C2=A0but I can not <br>
&gt; do it for RFNOC blocks...<br>
&gt; How can implement this mechanism in RFNOC blocks<br>
&gt; <a href=3D"https://www.edaboard.com/threads/how-to-define-global-varia=
ble-in-verilog.174172/" rel=3D"noreferrer" target=3D"_blank">https://www.ed=
aboard.com/threads/how-to-define-global-variable-in-verilog.174172/</a><br>
&gt;<br>
&gt; Thanks in advance<br>
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

--00000000000072f6a805ecf7f094--

--===============1404816934514062501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1404816934514062501==--
