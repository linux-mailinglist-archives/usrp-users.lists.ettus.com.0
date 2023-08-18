Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB15781566
	for <lists+usrp-users@lfdr.de>; Sat, 19 Aug 2023 00:24:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C979A383FFE
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 18:24:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692397463; bh=juMbzKwvBxn2aPITzKctq7JWJG4OqpR1vqNfIUoqcsg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qWNmrrbAfWvlME5rott8JFDH8uP1gqCsOHi5gsIo1IrUp6t0fut6Y7c8gU22Z2l43
	 Ljrc6bvNKqjZSB1kcMXO0gL4odYAZLV2NsrQU1h6Ec8fAvRWsk4b7BkAB90n6pJyiQ
	 G4Che0QoGfm5FMpBb4qjwL06I9Z2PNrLB2n7oADIR/pv7M35xODR0XjTe5oRcWUnfm
	 8kuTJ/pAFd+sKh7Tb2FL536fM3ce0OlmXOPh7BsJ3MJawkDjR2DWs8lFRFjbav+W6y
	 uBiEKReLayoHPfKCcPHcpW2zL91nfwH3p5rN2UgJUkeOgiFqjV4qOeigcbPuIH1PvQ
	 jSn3E5l2rrykA==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 48ABE380C80
	for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 18:23:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="vfWNUHeZ";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5231410ab27so1817747a12.0
        for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 15:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692397431; x=1693002231;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S4IIg7xFJXrb/ANf98hDyqU+9xkQ9TSI9EO0UYb8hnc=;
        b=vfWNUHeZ4bCBtm+wgBouEArF93soGC+vj1V5U3P3gPCzmSV/p4eZ19ooKcgtgr3Xfp
         PzBuJYlhyf1Mp+bCWIHXq+bt1yY1AZdHYk69yhNNY5NgPHOo+AGc4E5Yu6R2KJBCvB93
         dgsE40yATwwZcru5nWgmofGCh6YzlWRsxT68U9nEN1ZiesRVJZkyvCZkgCfa8HdzX/io
         SGCuflFdLknuaqKHv4tOQ8glEEQvxaESv9+ruujTGyqFpP6zBGlBnUnCrtI9oqSQfUSM
         PmbvboVvSyb3w59MMfw2kMWireUxnMcq1Sf4kv3t/Yi9wfVwGqEkZspGottNjoJofSbL
         2gTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692397431; x=1693002231;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S4IIg7xFJXrb/ANf98hDyqU+9xkQ9TSI9EO0UYb8hnc=;
        b=LqduFHT0JDqch+sv6Ffyq60yF2iVjy+xtkDdkLuY4KMEO1/6assS3K1c6llFkm+bC7
         Oy30gfCIWxY45QBhcWexesC2ALExXk5bLBqCVUrbs76N5T80CHSXVH+qmHllEplqjIXx
         jb4t7LWinrmtTkZCXMI9SB+Z13NP7n6ogNV9I2RNVT84knQ4Tv9ouke3bwwghCFgq44O
         mEqhqi6xZhmhmwJOgNNHW3wo5ukGdUvSE2PKvBUoBzORLCmlmm9StNbvbjVwGLDQH4wX
         2QhKyNHg9k1DqgyYaHJL1n7eaxK1TI7hieArDT58n0O1QaV2ljmLJvxtU+a+FXojJc2y
         q+qA==
X-Gm-Message-State: AOJu0YxkqPaAyEk5cL54rZbEG/A/HIBXL7yO+1hVryRiVOs9ywCFPZMZ
	NYcycQRv3+i+l0IRyUCZyLNIS9LliXY+SHFqPT/9udFSTTwG5nQWYx8=
X-Google-Smtp-Source: AGHT+IHClLxG0R9+x6iVusXWQbp5tI5b2FzRJD2PYNMwxDsLdx8kdLx2Uk7hNLMXhK2FOOKwt4f349DWsYDWA4uIZzI=
X-Received: by 2002:a17:907:75e3:b0:99c:ae35:ac0 with SMTP id
 jz3-20020a17090775e300b0099cae350ac0mr320261ejc.61.1692397430925; Fri, 18 Aug
 2023 15:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI@lists.ettus.com>
In-Reply-To: <4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 18 Aug 2023 17:23:34 -0500
Message-ID: <CAFche=gVYuXDE0=VgyMxYVZGS-03di767BAg0BH-6OFH+V8FhA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: WANOUWACTE35EEGIE74ERFBVBK7Q75UP
X-Message-ID-Hash: WANOUWACTE35EEGIE74ERFBVBK7Q75UP
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WANOUWACTE35EEGIE74ERFBVBK7Q75UP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9122390765709003508=="

--===============9122390765709003508==
Content-Type: multipart/alternative; boundary="000000000000b081ce060339fbac"

--000000000000b081ce060339fbac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That would be the radio reporting the overflow then. So, it sounds like
your gate causes data to back up into the radio where it eventually ran out
of room. Increasing the PYLD_FIFO_SIZE makes more space for data to buffer
up, increasing the time before an overflow would occur

Wade

On Fri, Aug 18, 2023 at 8:41=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> I was reading the metadata to check for a overflow (similar to the
> examples). Is there a way to check specifically what block is giving an
> overflow? I only know how to check if there is an overflow.
>
>
> I was able to increase the overall data rate without overflow by
> increasing PYLD_FIFO_SIZE of the axis_data_to_chdr module in the custom
> block that is linked between the radio block and the rx_streamer.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b081ce060339fbac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That would be the radio reporting the overflow then. =
So, it sounds like your gate causes data to back up into the radio where it=
 eventually ran out of room. Increasing the PYLD_FIFO_SIZE makes more space=
 for data to buffer up, increasing the time before an overflow would occur<=
br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 18, 2023 at 8:41=E2=
=80=AFAM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I w=
as reading the metadata to check for a overflow (similar to the examples). =
Is there a way to check specifically what block is giving an overflow? I on=
ly know how to check if there is an overflow.</p><p><br></p><p>I was able t=
o increase the overall data rate without overflow by increasing PYLD_FIFO_S=
IZE of the axis_data_to_chdr module in the custom block that is linked betw=
een the radio block and the rx_streamer. </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b081ce060339fbac--

--===============9122390765709003508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9122390765709003508==--
