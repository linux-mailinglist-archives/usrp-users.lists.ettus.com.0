Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4328BA6796D
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 17:30:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33C6C385F2C
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 12:30:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742315450; bh=Y6eSIkiWjRMnTuDczidRFpE+rl2r59NczKfSYgkDtVI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lkr8x1Q8+KHy8+v0ItY8HeXRhuKwZCjOPGcLKh1dgjpx9HpprFYe7va5HcJCrlPMa
	 Fg5GtWP+mDAlOhZZfV98ZhsqUIxq9xlQIFW1m5qjkpToTzSh6YkduBDJkaQEd5g9KD
	 kKzYkKWcvNUtb3hI1N/A5QxUCYWavHjW0nv1/NCpnkWfnhwCMAV7Tu2PVOUSZRVgEO
	 qC+fafQSLa4lnPLCifhyPkrs/LUVpnLqfqLm0DnIrVP4XaMPwelo0017UuI14zF6xN
	 odV9sgEC9sY5WScnCtriaTwviGaenwmctKl8ejBrA/rQE5zVbYsj1h9CuIOo3yoIBs
	 K25YEAiSlrFBA==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 962A1385B05
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 12:30:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jQgL6QK+";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6dd01781b56so76881726d6.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 09:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742315408; x=1742920208; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Kq5I8/r7Be54S6Le1PsRzlBD3/gj9+U+mZh8yCgMmo=;
        b=jQgL6QK+2eR7UhP4xV+5YSTU5M3Y1AXElV3Y5TOB7x+vOVZRuti8LHw+xicxQU9jbI
         njRJT7Z7PjKayeihnSDXUhmBk0gKLPxMb4L+dg87XQAkwF2i9nhrygsLbraEHGF04Y5s
         p1cloFy0W7YDKSN173pzxe88AzM41dApfVNOGPhYlI7DzYNBPzgeWc+l5f9lHtLoTQlN
         K7YGpgFgs0uaZNL3GCkuhfIt5flgDDyVYnUdwZtsv+dCmlaQUlAXwHnepz2WknAiTpG8
         2q/4XoWNKATaJGlpf5FqI6nIOszueYwCHob+2s1nzonc++tyPQGR30XRPfmZwBk10nKI
         FFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742315408; x=1742920208;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5Kq5I8/r7Be54S6Le1PsRzlBD3/gj9+U+mZh8yCgMmo=;
        b=UQEHdWUpSocL/DDPV0QqdJ1u0S+2v2L01KvMvMBSox8hvBVyPSb2lXEx48OSbyWmjx
         /fKi50E7CFsCaG5GNPJenGuz2tK+2+saPPPGaQnW3brrZTYyN/jOcSrzL0tJt+uIc12O
         ZsbedoNvs9tx7FqT8Jz4XaImYMmLX0qMYmGmhPaMaZAm6Jb4ThQEFCnj5+xuYODo0HfX
         i9eTd3QCMzWAG508BiF0VD9j+bavyl87249Q0MwjXBYpaLq3kh1Nx02NsAPSKwg6Xry/
         rS54LRL+iMjfOGcJIWcRMImCNSGkIsHMuJa23SSnj+WUltW/HaT1j/w7aXb6YrD952Qo
         rNDg==
X-Gm-Message-State: AOJu0YyPLC7FsH1xDmw/YouZCZfVTghLn7T/7mmLOoTBI0cR+spvKsd4
	T+TpAhfo8upeH+cYcMmbmDtcqDXMW2Sth/BPzKtSyjbCOMwaoEtHUSlXtQhL
X-Gm-Gg: ASbGncsfFSp790fwxRAbk+SGH8Dv4vJoc5q5l+WYIhD7B9HvbmwIYXNQKiX7faolo/A
	OftoiBnuqDtqjwiLRuMrUtHtGBUjFlTIHlLg3OUgD/LLXVvSCr++Bm27+iIiEsh3qN/kgxZ5CQP
	T2I6LEpkKctYgvvdjq/yPmo8LaCkuendoIp8QGFHhlmsyDPrJjimJ6npJW1BYq1F7XD7Swj9S+E
	pK4FVS0FaM71JDzg4nCKQ0/nztyhePFfD9Z9H7H0DAZLfA5mSfmmIVG0FqB8f2fr8Tz8vlv4eP3
	Qozldnxtt9c6eHq+x2gxKSNnsj0FXYGALi1Z5DlGQx61x0T/106nK3MLL45jrzZqEQ==
X-Google-Smtp-Source: AGHT+IGRD9swc7YpCTOCsXfxrybw+QEGpRXHGHqzz5Gey7W5k5+X3ehhKx65/83tZGwa++srfbBn6Q==
X-Received: by 2002:a05:6214:194c:b0:6e8:9957:e705 with SMTP id 6a1803df08f44-6eaeaa9f95dmr285808796d6.34.1742315408436;
        Tue, 18 Mar 2025 09:30:08 -0700 (PDT)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eade334d02sm69342576d6.80.2025.03.18.09.30.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 09:30:08 -0700 (PDT)
Message-ID: <618135a3-f5d7-4bc2-bf19-6f388e86a014@gmail.com>
Date: Tue, 18 Mar 2025 12:29:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTTSg4sSkG8e=qEdH=45PK6-YjjJ1OzaHrSoz4kP1YnJZQ@mail.gmail.com>
 <PH1P110MB12840A71C2828F114E7C46B398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB12840A71C2828F114E7C46B398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: KL2SUYOTRUTSGSD45EMKMCUOXNL5GSNL
X-Message-ID-Hash: KL2SUYOTRUTSGSD45EMKMCUOXNL5GSNL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: How to record all 4 channels from an X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KL2SUYOTRUTSGSD45EMKMCUOXNL5GSNL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5243640029124043081=="

This is a multi-part message in MIME format.
--===============5243640029124043081==
Content-Type: multipart/alternative;
 boundary="------------tZaR1paIphV9S0tol4prPs9M"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tZaR1paIphV9S0tol4prPs9M
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/03/2025 11:30, Mann, John - 0662 - MITLL wrote:
>
> Yes =E2=80=93 I was aware of that.=C2=A0 But I still don=E2=80=99t know=
 what to put into=20
> the subdev string, because nothing seems to work.
>
> I tried:
>
> A:01
>
> A:0 A:1
>
> A:0,A:1
>
> A:0 B:0
>
> etc=E2=80=A6.
>
> I think my problem must be something more basic that I am missing,=20
> that is why I=E2=80=99d like to see a working example.
>
> John
>
>
Try a subdev spec of:

A:0 A:1 B:0 B:1

Make sure you've set the source block to use 4 channels, also what=20
device address and args are you using?

Do you get any error messages?=C2=A0=C2=A0 Please share them here.


--------------tZaR1paIphV9S0tol4prPs9M
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/03/2025 11:30, Mann, John - 0662
      - MITLL wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB12840A71C2828F114E7C46B398DEA@PH1P110MB1284.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Yes =E2=80=93 I was aware of that.=C2=A0 B=
ut I still
          don=E2=80=99t know what to put into the subdev string, because =
nothing
          seems to work.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I tried:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">A:01<o:p></o:p></p>
        <p class=3D"MsoNormal">A:0 A:1<o:p></o:p></p>
        <p class=3D"MsoNormal">A:0,A:1<o:p></o:p></p>
        <p class=3D"MsoNormal">A:0 B:0<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">etc=E2=80=A6.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I think my problem must be something more
          basic that I am missing, that is why I=E2=80=99d like to see a =
working
          example.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">John <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p><br>
        </p>
      </div>
    </blockquote>
    Try a subdev spec of:<br>
    <br>
    A:0 A:1 B:0 B:1<br>
    <br>
    Make sure you've set the source block to use 4 channels, also what
    device address and args are you using?<br>
    <br>
    Do you get any error messages?=C2=A0=C2=A0 Please share them here.<br=
>
    <br>
    <br>
  </body>
</html>

--------------tZaR1paIphV9S0tol4prPs9M--

--===============5243640029124043081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5243640029124043081==--
