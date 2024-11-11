Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 746469C3A72
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 10:09:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8043386B93
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 04:09:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731316183; bh=g5+UL6EWJHr7nYir8GesPCUwrkjNHroKA9+Ayz+0mSY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ooYj92KMv8zN/4yOOj5YmvmLDfdykLri/0m11CrBV+kfLIM0YgXIYH331ezT4gdOd
	 iM2gD+miVtK3IGasZQo9FRfrEla83dP0iSrJunwfNpRCS4RxTdRXAScPj5CetvjN7W
	 S+kAqQpYJhaLf7iFUpW6b5aZs9tN46j3gBDmCqrPPvyydwT/xMYRH+Cxq46V9GzTDq
	 E7M5cp2UDJD+KgVnz0yv9imZJdYwS67FacrdJF2VUgBy8Tu/CPI3fukevXnVF+a4xm
	 FVALZtAvA4HJKhZ42IgVvlLeq7cXO1C7MmaBvNLjPuGZbRXpz3LNOkBrULnrPNrN/h
	 eSM3D8qKoxe5Q==
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 49AC43865F6
	for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 04:09:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2hQ+apOV";
	dkim-atps=neutral
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539e7e73740so3924422e87.3
        for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 01:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1731316168; x=1731920968; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OUjuE25TsrZHpRFTGwUXO2oeHLza9x+1xRV+/hjAnjA=;
        b=2hQ+apOVAiZYjcaLb57B6J2xy/4UoNyUvHL24du+JoRJ95q1ZqcgGW6j3pLS5FGbpg
         ThwzNtjRBkZHLxRBgUBf2GLPkP2FGzdHvHl+Xh3a8bYBcK1XmodUXjuK7jBlCpEerGfP
         M8sPv+WqKSAo4GoJyxPavetKYqa6VHxUe0/yqU5VSGjtZC06DRyhEQ32+OYnPe3Et8+j
         nGvAJ+ag93ISfDL36ib2oM5DaEAcwG87Hi2TetmTrlJIP67R2NXQwhYx/iaND0GlV1FH
         LJxnHCFPDh+2SLoPvtR7aYnazvDBYsd5l0W6EnpDiZNSuhNXQQBgFtsgrit7hUmZpSeM
         lVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731316168; x=1731920968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OUjuE25TsrZHpRFTGwUXO2oeHLza9x+1xRV+/hjAnjA=;
        b=kNK/WnSCM4zYZTt1O6sQsBle3XoxmPmYyDERezwU7kZiSRhc8j3GCKXNCM3mkPKjID
         kklYlbFNM+qWu7/eTHYz8YIkZ3MpsmAv8vttvCtb1H7AJVf0ViSK1ebZLiID6ttCyOfy
         Do4hM302BLQ1SOxmozuD0Tj9a6csX6cPzlfvBybD1+kettHwwA+poQVrIaVLVlD9uunj
         WnPMkHBSEiw302Ieg6NuB9BU9sqUj+Xy+N6/3/dapNCm1xp1I1xrFgICxekblp0xjUjG
         qGo3QNNWmTdBVRxc+9u5VYQ4wxFj34I9g/HTs6COtfavUJMkdNPCg1ZRfDvlm/gJmKxq
         csew==
X-Gm-Message-State: AOJu0YyTIgc8YScd5/uyvtYBgx1N3eIT4+n7wtu9ExKFc/w0X0RFFlmf
	Rppfea4S/wBynh2dr0i5a00vm/+/PzvUXNfqKhgqDYSXKPgxiuVPVKELQqCxZt6wj29B0sCqaIP
	XxH6wPl36TfIkyVLbu6oF+xuzbbGBgUOX3NUjQeabQzs0FFXRptfiyw==
X-Google-Smtp-Source: AGHT+IHl+An6qzpe94/oD28pDvb+v4HwPZ68HdHh+/u7sxVDzP0S3/BQZkBgP83OkCmvcjxmc0eL7tS4gE+dWtZ7aZQ=
X-Received: by 2002:a2e:bc0b:0:b0:2fb:5bb8:7c00 with SMTP id
 38308e7fff4ca-2ff201e6cb6mr47106251fa.2.1731316167566; Mon, 11 Nov 2024
 01:09:27 -0800 (PST)
MIME-Version: 1.0
References: <PN3P287MB0291323A10062E824F0DC3EA935E2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB0291323A10062E824F0DC3EA935E2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 11 Nov 2024 10:09:16 +0100
Message-ID: <CAFOi1A47MLS=maD-Jve0iD3JU=VUtfxsyuhnYrggepnRQ90hVQ@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: 5FPRS6LUMZVEUCIFAMEFAH3FP3KDX25O
X-Message-ID-Hash: 5FPRS6LUMZVEUCIFAMEFAH3FP3KDX25O
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX and RX not working simulataniously
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5FPRS6LUMZVEUCIFAMEFAH3FP3KDX25O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4647388434795707622=="

--===============4647388434795707622==
Content-Type: multipart/alternative; boundary="000000000000298d7606269f758c"

--000000000000298d7606269f758c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 9, 2024 at 12:47=E2=80=AFPM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Hello all,
>
> I am using USRP n300 board. I have tested Rfnoc TX radio and RFNoC Rx
> radio chain separately. But when we try to run both the chain at the same
> time TX does not seem to work. Any suggestion what might went wrong in th=
is.
>

What's the error?

--M

--000000000000298d7606269f758c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sat, Nov 9, 2024 at 12:47=E2=80=AFPM Nidhi Panda &lt;<a href=
=3D"mailto:nidhi.panda@cyronics.com">nidhi.panda@cyronics.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"=
msg-2191496862032637496">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello all,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am using USRP n300 board. I have tested Rfnoc TX radio and RFNoC Rx radio=
 chain separately. But when we try to run both the chain at the same time T=
X does not seem to work. Any suggestion what might went wrong in this.<br><=
/div></div></div></blockquote><div><br></div><div>What&#39;s the error?</di=
v><div><br></div>--M<br></div></div>

--000000000000298d7606269f758c--

--===============4647388434795707622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4647388434795707622==--
