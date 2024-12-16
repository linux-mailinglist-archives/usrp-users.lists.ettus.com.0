Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F449F3512
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 16:55:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C10123851E2
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 10:55:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734364556; bh=mApUa8VHmTdAP14MNvjXO5EvF8jbh8OM7AcHETHBC3s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HhTZ9inwDZAWIroRDrY1KZ517fcfJ0au9Ud3bawmKwsqlOWBbrMafChs+kQyXU7zN
	 /AHg1vHLuGfkBCgU45N7rxvQFAPsYcg3TfUIpifaR5Ec/kFKAjCaIGKto8DFnptuKA
	 DUrTwWOnIeR4BWsD9bq1yw3WX4972B8iCTq/nA1OoiWmBY0Kd0HMfAk6Xrulen6Eax
	 79sJfE/ShUEKNNIIA9+suIlXXM92yS3D7RqRjDEmkxWFTOfkcVkhnB9W3xeAXCq+v4
	 CH+gbiXwaq8zYyzxq/v5aAP/VyIWe6IWpRRl29fNXL87D009paYDr4tRIPNMTXleUz
	 K+FbAjPeAA9Cw==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E33B385871
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 10:54:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gFmwkgBl";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d3e829ff44so9746286a12.0
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 07:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734364448; x=1734969248; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EgkkfG128zu+uVDmi87HhSE69aQDsGJYYzm/IGwCj18=;
        b=gFmwkgBlA50elvHFqjcM1iyCZjrKdkW0Q6OZipEDIk281zt8U79AhV3XnsNPFJsjMu
         26cr7FIjGxY1FVlXbOKwIh/iLyPqrF3e8QAdSArBtCHYFhGmeHwCe5P0sbSoPX2KeEUd
         OzbsiddoxvWar+9g0tZMYLCGNeI76dwmcGlofp9dOai8MNr8UK0Iw8powcXLByqDqYIJ
         gD0mm2+hPJpWngvoB+TemNBQYYx7+pHJEDOlU4Gr5Jjy2sXPiyc/RU2lPvX/TN3+45sY
         n2nwY1NsNhGiZA2vxVAompWaYnrp9ie94xpruMRM0aFCJ57frriWW2VrR92dKnDT2Ulo
         MtNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734364448; x=1734969248;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EgkkfG128zu+uVDmi87HhSE69aQDsGJYYzm/IGwCj18=;
        b=kCHj2Hx3eMx4VFlpkE7C9tJANuqtwshUHhdMADtEWsxg1n/9kVfrbH76H9NnTLIJ0Y
         Mu9jOvrfICIeAFSqTIMi2PoefSzeDYe/2Zv3R1rF/ihXuggIQYWItfwW0eY1QA0NEqsw
         B2HaTyOEztzT6C3SkepixxfgxEfrM+rQKTXYRUxgvFKxb60e6jA6wdCVe8haxq80DcJx
         6HP8kc+KCEPynjLNKGc7PZeDINNrTxo61XqGUtDkyaGX9i3ncoSsl2rDE78h5AYoO5NV
         rZw7OrckwtJxpJEW49yC+a16QynplJ16I5rx+Zv5pCiPebBvyrvoA4qLKxbKOWZ03Wli
         iHng==
X-Gm-Message-State: AOJu0Yzm4PO/CPjKdd2WywINegZ6gqhTF+8yaY0DfS1F5qI6X5Zbujvu
	6mI79rWPNa1w0U1lPow4JowtO8tAtXtyxeEleWtMsEnhhU2OS5W8oeWWD5YIfzksBxYfhJ8w5IX
	oZzdR6PVcoajR8T4v6J7iweICKdZcf95G
X-Gm-Gg: ASbGncv36+dCFBXtYlFnaBrCsrOxpk52HpiUJDJbKmKj/8aitVFELT7wfKlNDTjwIRw
	J813YnB9lJORX3gFBRVd90a4gSoW3zw+rVl0SMQ==
X-Google-Smtp-Source: AGHT+IFrqa+BiJaa+NzFksQ8mDPiecTNhrr1SNpuhYKJV5tiSuS5DLJQva/om6Mh5nNBSYwGIog37V3stph5IrcGkTI=
X-Received: by 2002:a17:907:1c10:b0:aa6:7ff9:d248 with SMTP id
 a640c23a62f3a-aa6c40f78f0mr1918304466b.8.1734364447807; Mon, 16 Dec 2024
 07:54:07 -0800 (PST)
MIME-Version: 1.0
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmail.com> <a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com>
In-Reply-To: <a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 16 Dec 2024 10:53:55 -0500
Message-ID: <CAEXYVK5AWt+1Et5f9JtpuZDEBdbYg4iTxiZZm40KwNckyifkdg@mail.gmail.com>
To: Christophe Grimault <christophe.grimault@novagrid.com>
Message-ID-Hash: HRKD3C7QSMAWELK2RAJBGC4XJX6ULNYK
X-Message-ID-Hash: HRKD3C7QSMAWELK2RAJBGC4XJX6ULNYK
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HRKD3C7QSMAWELK2RAJBGC4XJX6ULNYK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1942299527287438675=="

--===============1942299527287438675==
Content-Type: multipart/alternative; boundary="000000000000d2a459062965309d"

--000000000000d2a459062965309d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2024 at 9:44=E2=80=AFAM Christophe Grimault <
christophe.grimault@novagrid.com> wrote:

> Hello Brian,
>
> Thank you for this quick answer.
>
> So I guess this is not a limitation related to using Python vs C++/boost =
?
> Right ?
>
> I understand that using the same streamer is tricky. Concerning your
> advice to go with 2 streamers, you think this a totally fine way to go ?
>
> Otherwise, I was trying to use a single streamer because I wanted to have
> zero delay between the start time of the 2 streams.
>

I think using two streamers and the timestamp functionality is good.  Check
the Streamed Commands here for how to tell a stream to start at a specific
time:

  https://files.ettus.com/manual/page_timedcmds.html#timedcmds_stream_cmds

Brian

--000000000000d2a459062965309d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Dec 16, 2024 at 9:44=E2=80=AFAM C=
hristophe Grimault &lt;<a href=3D"mailto:christophe.grimault@novagrid.com">=
christophe.grimault@novagrid.com</a>&gt; wrote:</div><div class=3D"gmail_qu=
ote gmail_quote_container"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div>
    <p>Hello Brian,</p>
    <p>Thank you for this quick answer.</p>
    <p>So I guess this is not a limitation related to using Python vs
      C++/boost ? Right ?</p>
    <p>I understand that using the same streamer is tricky. Concerning
      your advice to go with 2 streamers, you think this a totally fine
      way to go ?</p>
    <p>Otherwise, I was trying to use a single streamer because I wanted
      to have zero delay between the start time of the 2 streams.</p></div>=
</blockquote><div><br></div><div>I think using two streamers and the timest=
amp functionality is good.=C2=A0 Check the Streamed Commands here for how t=
o tell a stream to start at a specific time:</div><div><br></div><div>=C2=
=A0=C2=A0<a href=3D"https://files.ettus.com/manual/page_timedcmds.html#time=
dcmds_stream_cmds">https://files.ettus.com/manual/page_timedcmds.html#timed=
cmds_stream_cmds</a></div><div><br></div><div>Brian</div></div></div>

--000000000000d2a459062965309d--

--===============1942299527287438675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1942299527287438675==--
