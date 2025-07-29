Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B08B14959
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 09:46:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49C5F386565
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jul 2025 03:46:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753775192; bh=t8NuT7q1A+/RXA06GGGs5qvzfCc0sOFcc/QA5ZrYbzk=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fo76eNO4EBId+istNvcJ9nPj/xXxYiTbALbx/Gg4NzNRqrQp7hG+T8NQgKg95XpHy
	 gNxGiIcFi9w2B+TtNLC9LHDFpIjmbmvOMN3582+jQorOi0GJFcO4r5iRtSNiSy8KJD
	 df04RM7PtMaaOU3pAA8vwkxF+C9nUPowGWsovUncDKck7gD/rGvHmvc3vLcQ0d2+S8
	 f1gC+lxfnOwd1CDhCmGQ+BFxvVaVmziRFUAK1S7THoW65lzuzu5ncvDftia2i0/oEx
	 lw+IMWjv6TF854SQpELaU/dDXllcHJQKMIvv9d48D79WIkMKbiBuohQ6okldcnFxM1
	 yuYZw77QIOSjA==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id E3D3738627C
	for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 03:46:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nlcA4iy5";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6156a162537so899756a12.2
        for <usrp-users@lists.ettus.com>; Tue, 29 Jul 2025 00:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753775164; x=1754379964; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AgQAKtA4mcZ9tj5iHYhmifKDsBqfM6t+mGg/UDy1C5M=;
        b=nlcA4iy5AF+EyfiLKSlFc9CcbRaEfkO07OdE6jXn0FkaWoa4q8JEx1hIkPXFhFIGlx
         1eMj3iVt2MziK+gvJ2lmlXiEH24bVarwyAS8aHOcjkJMrUhpvaN9TjBODf67JRhEeSMn
         epEz/IVhbsAgtotNnjvTtBZknetCV3rw23VT5clXgVN7c8rt/zdSva83yXTEbQ4FOBZZ
         3WBPqnb9xTVtdV1gymhQuJ5wVwtRzl0iuFQCbHCOsrwzroZRkqkhd0BEmHfbPWlJB1LS
         SND34+fXKb3zmQnf4nFGQ2EOIe7xQciqxdjzPEDh0axH1FSuDnAIxJjfK12nbJ6uR4jx
         Aj5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753775164; x=1754379964;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AgQAKtA4mcZ9tj5iHYhmifKDsBqfM6t+mGg/UDy1C5M=;
        b=g1k9s+m96PlBbk3qUTm+DY1JoYK3iC+hYpVincHRwM9Cq6tqsUAyjwUb1x7Eu9zWow
         rI/VwRQVBlTAymmSUc7akC9oIazJ91VFS5UmrhB9fbfKNxjp80X5PPAe98rSmIueWP03
         rWcOangnrzsnw0MmDTwrI+AiGPgyvIUnmTOSbfFWhYugz8yl94waUgcI0szf9KjawHVv
         ZXJTrqdSas8IvGlEaJcFIkpyP8N2HiGahfRUShApNGTvxjSuTPdqpfF2NZgAeFsBD8we
         UaI3mIRxksBVMHTdYBWgHqJaiNgONiJvSlHJtYJMv2vlRJ789nKf4Mkjvux7Gw0ajh2L
         6Qhw==
X-Gm-Message-State: AOJu0YzdyQCMgM/3nE9q6FgtRf/rN0HEv2fG1yiTMBKg2ts5ON/RiU2I
	weWZaNeiOIxd+r4ubKShDlAIHf92b6QWHDwy1y+8tLjFrRFr77lQslAfiuAzWAI9li1bBOVZHE5
	Ok8XmKU493TKxtLvRDP9+URbTyp/Fo5B+1a0BjUBNiBwdwDFCZtqs7FV78w==
X-Gm-Gg: ASbGnctYEloO9IlaZweDpVg/5J+oYzqGXh++oCi/sXMd1ZEyeTiR/PVPuGVyv2SJcNT
	b1K0iWsJ9xPqK0bK3mUIUkR6DrGkcT14GpTwYKUgSZlWbQcHqCT83cGIPc+7m3LUIkkVHUNQ5sq
	YoleI7ms6yT0R+879inqo8X6izPJ4MoaRo/7WOxtcvqsz713dseN0QX9No7vm2IlZInh0UcaRkV
	I3v3JU4dxwVP54CRkZBuy12v9biS5QBICVT4hQ=
X-Google-Smtp-Source: AGHT+IH9H+u7nNnTT/hogB73YpZd9hDJwZ/VFcLYGrO79tPgShGBBcwMgbsxtmR80OFxMcGAZLvzaU93YPyBQUrmAOk=
X-Received: by 2002:a17:907:c1f:b0:af2:b9b5:1c06 with SMTP id
 a640c23a62f3a-af61c8aa24fmr1606158766b.14.1753775164324; Tue, 29 Jul 2025
 00:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
 <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za> <CAFOi1A79w6Yn703f7V+Jwe2X0PpR7or7Vn1naNgWmhYY3kJm-g@mail.gmail.com>
 <45a2d2bfa5784898840a602a2b31db9c@vastech.co.za> <CAFOi1A7k0F=vs7bhSVQFjoQFvBg=nNtfyLxq_zJypMPJUp_uhg@mail.gmail.com>
 <a60e4a0ea3ec4a10b95d90103bd2a7f7@vastech.co.za> <CAFOi1A5oPd6pCJK8mh18Un=WDLGVYt+mGpQHp5J2UQR7xLNV+A@mail.gmail.com>
 <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za>
In-Reply-To: <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 29 Jul 2025 09:45:53 +0200
X-Gm-Features: Ac12FXzjUE9un-guSMSJP1EPDoFU7wly-y6iZ7PkwA9iSBrINba40Qe9GHTecIE
Message-ID: <CAFOi1A4t2mGq6df=H_c5eu+WBEHw_U6=TP0-p4S102_ZyJxD3Q@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: FD3EHHNEHMKH7YUSFTZM742T72CKFY5N
X-Message-ID-Hash: FD3EHHNEHMKH7YUSFTZM742T72CKFY5N
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FD3EHHNEHMKH7YUSFTZM742T72CKFY5N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1013713533386098716=="

--===============1013713533386098716==
Content-Type: multipart/alternative; boundary="000000000000af8f10063b0c99f9"

--000000000000af8f10063b0c99f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 28, 2025 at 4:14=E2=80=AFPM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

>
>
> Changing the destination EP to a new one, ep7, worked again.
>
>
>
> From the RFNoC 4 workshop slides I was under the impression blocks could
> start and end on the same SEP?
>

They can, and even should, but how are you doing remote streaming in this
case? Are you connecting radio -> DDC -> remote streamer?

--M

--000000000000af8f10063b0c99f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 28,=
 2025 at 4:14=E2=80=AFPM Kevin Williams &lt;<a href=3D"mailto:kevin.william=
s@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg2923964535326=
84392"><div lang=3D"EN-ZA"><div class=3D"m_292396453532684392WordSection1">=
<p class=3D"MsoNormal"><span>=C2=A0</span></p><p class=3D"MsoNormal"><span>=
Changing the destination EP to a new one, ep7, worked again.<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p cl=
ass=3D"MsoNormal"><span>From the RFNoC 4 workshop slides I was under the im=
pression blocks could start and end on the same SEP?</span></p></div></div>=
</div></blockquote><div><br></div><div>They can, and even should, but how a=
re you doing remote streaming in this case? Are you connecting radio -&gt; =
DDC -&gt; remote streamer?</div><div><br></div><div>--M</div></div></div>

--000000000000af8f10063b0c99f9--

--===============1013713533386098716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1013713533386098716==--
