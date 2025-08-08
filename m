Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC7FB1EF49
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 22:10:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 757E9386525
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 16:10:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754683816; bh=emU3kA33BprNnB3gtF2cQnM0ZWB5veOjJcsPL9JFz5k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WgxPEcEI+067dTHA7dkcR/mpIiWL9P3XK+PVvYJRKCNQ7vtvGjZ3VXSS8IRbg/gDB
	 Ul2fPL251cXgmWXz2ro2Xv0okCq1g/AhVHUsA4l0TROTkzmUPwKNBwHA/FSrN2RUYg
	 Y4Tly8QSaY9MPtNHLHkxNK5oT9UId7EgW1QsNfplj7EawYkJ5uewDtGMsRATP7kCEH
	 it+Yuc/2HYpahscyDL3o1fMr4orLdXuzuwEncnPrgyh07Q0yfCInW/WppW7IwCVTzD
	 S/e9CSfNnmo11mcUyD0ESJ5iQ0B26ZYh+JU4HCCJRDIRPAZZHA8AuPDDR1g14vgpv1
	 m3qA3XtfzHn5w==
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A67238618C
	for <usrp-users@lists.ettus.com>; Fri,  8 Aug 2025 16:10:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VkpRu/Mu";
	dkim-atps=neutral
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3e40212e6ceso10433345ab.0
        for <usrp-users@lists.ettus.com>; Fri, 08 Aug 2025 13:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754683803; x=1755288603; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M+aub8L3MzExC1aZ7Zd+FBWqQMk87V97M3xO/TplqqU=;
        b=VkpRu/MuufcHh4LI7CNCjEb+VEhgA1KwC5O9BMEQCHr8XwONmqogEIQULPL9Bi4tbz
         KOoTXQ7f0jGxTEBOIjWiYSFQ1TzfBOiifr5bRqVpy76rLjCgEXkVjTdtN+oPAcp6REns
         EO9AYKw7kH5b/rxl/xdtwUhslh23ExgJsc5GSIb3ZDgffQATwt4t6ULh//MZ9Q+rH67S
         /CilFpN7tKsvyRsVlhUk6GkYSMA4ZOEYfAJbjD3MDGZ3f+sHNg+SObNoTwnxE+I/BDfH
         6v3zSAh4O7qXCamM8L+SGGo4KMnS7LgdY3JCIWrtzBn/jRV3HkGx0YSIx4clVeJ0m0Mz
         rYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754683803; x=1755288603;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M+aub8L3MzExC1aZ7Zd+FBWqQMk87V97M3xO/TplqqU=;
        b=aoMcsyT/8kE5JlHw7gJxX/0fkKNKzLR5bd6BPDZ6M8bYRV/jkSV4Aq8Wkt+BxUAwof
         ENGToVq/vIlkuT63oZqwUkkZ+lZjZfsX2TV1nnXszyzPW7LcHCdl+F1aFo5QGbAp5RRs
         sVYgoj/txu4gqPFve2e4AX/zdy397ugWxWOIIsNC3pu+i/3nxYWo/5p3DhXUJDOUBNPz
         t5ylnSjYZBC4fi5Bas3g3QlWhsVLVIAxL0FP9FdYXZz8pCBtwy+zgV+sr9kBYZ0j8ZuT
         wN6FDzQuX7pinCm+JGWqwOg0CqDHwVGAajJU17gQBX4oAIecX+au5mThU7WFQrJ6hmu5
         ECZw==
X-Gm-Message-State: AOJu0Yy3GGLlZtHo/2XxJSZgQJ1n71tn2KBR7+5/suT8YoEEXrcNHChk
	cmWqI9UspKKy/QS3+soyyJlKImWpeNaBcVEOiSWwFkQCqkzrCijx+qdtZs3pUfNzV6vBuAAWjnU
	ZuSwNXGtA4L3YPHoFXKKX07NMAFMqtoA=
X-Gm-Gg: ASbGnctoM7x1jmemrRIykn8fVFJ56ycg4mT5nbcZ1jN53h+YuKGtABoSk6L361eiwmY
	bhokjqlyW4oAYw7ESI8R35BN8qxokNw9FhgsvmZ7Hk07wtl+YgxDpc34Xe4L4QBYCs3tXkmeL0o
	7yVxicPWgVteM+SWOy72MHgDND4QBMGC33O+RECdFX9uFBN6ujinS4GQqZt7nvNSa6cOhva0tke
	OP0
X-Google-Smtp-Source: AGHT+IGG+MPvA62A5V1O+Z5l0/J3hIpfdq8ljmUGelsCNcC/mPVvKB7Z6xENfM5WHgCuZLzXTKqsGd6PMiLNQvLpMyY=
X-Received: by 2002:a05:6e02:1c02:b0:3e3:d1ec:b8a3 with SMTP id
 e9e14a558f8ab-3e5330c434emr81945135ab.1.1754683802993; Fri, 08 Aug 2025
 13:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB9126FFB633AD2FB006E19AACEC2FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126FFB633AD2FB006E19AACEC2FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 8 Aug 2025 23:09:51 +0300
X-Gm-Features: Ac12FXw_nYct2KOOXGf0x84C2zduV_mt4qWUOXHEhlmthp6RplZsMG2N2ollhNo
Message-ID: <CAAxXO2GwW8YMO25=rNQawe5i7nGH6K=E9kqVw+U2vMei7z=egw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: JMTDWX6PQVJWJZLRBIE4KT7GM22TQMU7
X-Message-ID-Hash: JMTDWX6PQVJWJZLRBIE4KT7GM22TQMU7
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 output power too low
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMTDWX6PQVJWJZLRBIE4KT7GM22TQMU7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2149505054083574653=="

--===============2149505054083574653==
Content-Type: multipart/alternative; boundary="000000000000c54c5a063be028be"

--000000000000c54c5a063be028be
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,

I assume your usrps are connected to the same host and UHD. This seems to
be a usrp hardware issue.
I would talk to NI to send my unit back:(

On Fri, Aug 8, 2025 at 9:49=E2=80=AFPM Eugene Grayver <eugene.grayver@aero.=
org>
wrote:

> Hi,
>
> I have a bunch of N320/N321s.  All but one are working OK.  One has an
> output power that's ~20 dB lower than expected.  Testing with tx_waveform=
s
> --gain 60 generates a tone at around 1 dBm, instead of the expected ~20
> dBm.  The USRPs get rather warm =E2=80=94 could this be a heat-related fa=
ilure?
> But if so, why just one?
>
> Any ideas?
>
> Thanks.
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c54c5a063be028be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Eugene,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">I assume your usr=
ps are connected to the same host and UHD. This seems to be a usrp hardware=
 issue.</div><div class=3D"gmail_default" style=3D"font-size:small">I would=
 talk to NI to send my unit back:(=C2=A0</div></div><br><div class=3D"gmail=
_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Aug 8, 2025 at 9:49=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene=
.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg9849100715125249=
80">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have a bunch of N320/N321s.=C2=A0 All but one are working OK.=C2=A0 One h=
as an output power that&#39;s ~20 dB lower than expected.=C2=A0 Testing wit=
h tx_waveforms --gain 60 generates a tone at around 1 dBm, instead of the e=
xpected ~20 dBm.=C2=A0 The USRPs get rather warm =E2=80=94 could
 this be a heat-related failure?=C2=A0 But if so, why just one?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Any ideas?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div id=3D"m_2842877924020580040Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000c54c5a063be028be--

--===============2149505054083574653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2149505054083574653==--
