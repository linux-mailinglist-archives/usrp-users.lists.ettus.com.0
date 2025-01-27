Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08727A1D27A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 09:40:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C80443859EB
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 03:40:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737967226; bh=rXsLJAlqVdTwf425d65Hp2PUGUfmGeaOxUefQDPi5FA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uSgifrzCGjTZFGHjjla6geANCnYRujGo1Kq0H5OmIE5vwSaQL6Zhv9r+fYI3FFt9v
	 kP/JVjq1VYGOktNN65tIjVu2szzu2UOA8l87+a9zvx2UO7DVIZpXHOR8Ylyu2oMAbo
	 6wiOk+5Li7ZjXAKVfnijVJotyKfRFGUn49ypsXOq8fI9fJsg6YXUxbi51Vr6pErJOw
	 XYUBNJPbRUMWwOptkmgTVuglrlC4VbFnNm/s+PfQ1/RxYZw/OPtmOV2OeeUy5mN9ih
	 z/vFN+lReNiw5F6XdMEFuIlsy3pPH1QNYKokvcwmqt3waK69vA5Et4enCh+bRytT5I
	 b3ZhUmgt2oI5A==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 61116385964
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 03:39:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="kPR4hNs3";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3bdccba49so7689141a12.1
        for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 00:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737967181; x=1738571981; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pe3Zc0IMqxjKQp/lTOgJb0QIbLXn8MrW2SVtQA4vx8o=;
        b=kPR4hNs3SumY/Npx714bTbdPCJwzonlQQbkzSGlgnXXaPDLRZIy3VLTrUqkul7O3tD
         zscktV/+nLELOEkISeIzL++fFbIUdnjr7a+wIso1OqBCF7WokvvwCD9BN7jjkZut7+7i
         qfsYScuBVvGuNwylnl0lLhHnrwzIWZa5m2TzFo0spi1DaPguL+BYNJxQTbWe9NTbd5yG
         eZKQFRtdNST1IJXP3sNbDBpiz8X0KLtGzi6wZEeFbBoC+yGLdIBI8Yl2DnrkrJk5+tLy
         0SRkopUppXFDpKuva/rI6+tKTy4en7wvBv0Jca0aJYKBf7T97lFBWBxGu/Z/eayJ7G1p
         K8xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737967181; x=1738571981;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pe3Zc0IMqxjKQp/lTOgJb0QIbLXn8MrW2SVtQA4vx8o=;
        b=u9f9Chcu6GlL+k+xOrPwftM7ZBwJcq7Ez5J74L7iptxOvaT6NEhd64MTpNJrkEUzqr
         BhIe30nWNlg26zhLkwK9CiWS+oMUn/HUdBnBnLLvGSLqc3WLtMT+JziHEXyOt4nhWmr8
         0Iv719SYOj+ETS/EsMewbjNGiygl8obYvJXbcFnJki/oKcmWGK6rtQAGqfyIrSQUIqNf
         ilvVzPacXeYkcu1zJU5eKXpBDgSy+fSGdMzaGHj74+g1jRlAMJEXz005gfhWQQk6X8li
         T2fgR4gnTYYKqui9D/NAnL2s6MxEmoMHvXpULcmMMhYzAvoNTWjYooMs0pAgHljFN+L8
         PggA==
X-Gm-Message-State: AOJu0YziWY72BRe0MNVNEmR/eaSrTQCot/omCXiHesq+3CA6VZLkpMDt
	AMaT4xiNJzDTlrkOby/Xa17b4tsF6nDGaowKwrQON0MSoGTXsUMGH0Gi8SYGQIL2MM/S7l1QX+m
	9jOpdWr8s+LFB+j1pCrUADXuSWr/EEFmJhjxajHYL6BIysudfg7UsNQ==
X-Gm-Gg: ASbGncuFBZ5WBzwlrXVtaHlZJvknGZJ43JZ5zUCOZKCvLM4F+U/qkDTEF+sVcpk1fiE
	HZf/v3Ue2ZEQE+6P+lHx7RYm4IHNJRomPYnvuCuPPe8D1E+DIMAgbU6Mu8cuLbAQ6ZdbezydHCs
	/sv46ziymX98PjNKrbJg==
X-Google-Smtp-Source: AGHT+IG4NXsRoVtgsHGzw4edaWod7VP92VmN18xb+kalgT0Cy6xJLLLk8b7bnI98FH67w/6ms/dA8sgbCrdy8KmQ1J4=
X-Received: by 2002:a05:6402:4414:b0:5cf:b079:68ef with SMTP id
 4fb4d7f45d1cf-5db7db06eeemr34256887a12.26.1737967180807; Mon, 27 Jan 2025
 00:39:40 -0800 (PST)
MIME-Version: 1.0
References: <a86e6fcea1b27171c17c3d23defb87cb@atindriya.co.in>
In-Reply-To: <a86e6fcea1b27171c17c3d23defb87cb@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 27 Jan 2025 09:39:28 +0100
X-Gm-Features: AWEUYZl3wPX19Figv8YIhXVgCL_gP8fcH7Snxa0_L-X46quTZ7hgjFuou1pS9Fc
Message-ID: <CAFOi1A6u0h=U7vcswVDd2BWsHyQK8WwKscXTvhSEZh-sdPV5_A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: AJGUZ3263VWTJHZGCR2AFRC6ZW3LDKFC
X-Message-ID-Hash: AJGUZ3263VWTJHZGCR2AFRC6ZW3LDKFC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG: GPIO in USRP B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJGUZ3263VWTJHZGCR2AFRC6ZW3LDKFC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4964030850990754150=="

--===============4964030850990754150==
Content-Type: multipart/alternative; boundary="00000000000071acb6062cac04fd"

--00000000000071acb6062cac04fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The mask affects the bits that you actually write to the attribute. In this
case:

uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 1, 0x02, mboard);

...you're setting the DDR register to 0x01 and the mask to 0x02. 0x01 &
0x02 =3D=3D 0, so you're not setting anything.

This works:

uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 1, 0x01, mboard);
uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 0x02, 0x02, mboard);

...but this also saves you a call:

uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 0x03, 0x03, mboard);
--M



On Mon, Jan 27, 2025 at 5:05=E2=80=AFAM <kavinraj@atindriya.co.in> wrote:

> Hi,
>     I have one issue in accessing the GPIO pin in B205mini-i board.
>     what is the mask value in the API uhd_usrp_set_gpio_attr() function?
>
>     I have written code to access the pin 1 and 2. For that I have given
> the mask value as 0x01 and 0x02. I am able to control the GPIO pin 1
> with mask value 0x01. But, I am unable to access the GPIO pin 2 with
> mask value 0x02.
>     What may be the issue?
>     The following is the code I have written.
>
> const char* bank =3D "FP0";
> size_t mboard =3D 0;
>
> uhd_usrp_set_gpio_attr(usrp, bank, "CTRL", 0, 0x01, mboard);
> uhd_usrp_set_gpio_attr(usrp, bank, "CTRL", 0, 0x02, mboard);
>
> uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 1, 0x01, mboard);
> uhd_usrp_set_gpio_attr(usrp, bank, "DDR", 1, 0x02, mboard);
>
> uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0, 0x01, mboard);
> uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0, 0x02, mboard);
>
> Thanks,
> Kavinraj.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000071acb6062cac04fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The mask affects the bits that you actually write to =
the attribute. In this case:</div><div><br></div><div>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;DDR&quot;, 1, 0x02, mboard); <br><=
/div><div><br></div><div>...you&#39;re setting the DDR register to 0x01 and=
 the mask to 0x02. 0x01 &amp; 0x02 =3D=3D 0, so you&#39;re not setting anyt=
hing.</div><div><br></div><div>This works:</div><div><br></div><div>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;DDR&quot;, 1, 0x01, mboard);

</div><div>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;DDR&quot;, 0x02, 0x02, mboard); <b=
r></div><div><br></div><div>...but this also saves you a call:</div><div><b=
r></div><div>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;DDR&quot;, 0x03, 0x03, mboard); <b=
r></div><div>--M<br></div><div><br></div><div><br></div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Jan 27, 2025 at 5:05=E2=80=AFAM &lt;<a href=3D"mailto:kavinraj@a=
tindriya.co.in">kavinraj@atindriya.co.in</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0 I have one issue in accessing the GPIO pin in B205mini-i boar=
d.<br>
=C2=A0 =C2=A0 what is the mask value in the API uhd_usrp_set_gpio_attr() fu=
nction?<br>
<br>
=C2=A0 =C2=A0 I have written code to access the pin 1 and 2. For that I hav=
e given <br>
the mask value as 0x01 and 0x02. I am able to control the GPIO pin 1 <br>
with mask value 0x01. But, I am unable to access the GPIO pin 2 with <br>
mask value 0x02.<br>
=C2=A0 =C2=A0 What may be the issue?<br>
=C2=A0 =C2=A0 The following is the code I have written.<br>
<br>
const char* bank =3D &quot;FP0&quot;;<br>
size_t mboard =3D 0;<br>
<br>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;CTRL&quot;, 0, 0x01, mboard);<br>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;CTRL&quot;, 0, 0x02, mboard);<br>
<br>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;DDR&quot;, 1, 0x01, mboard);<br>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;DDR&quot;, 1, 0x02, mboard);<br>
<br>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;OUT&quot;, 0, 0x01, mboard);<br>
uhd_usrp_set_gpio_attr(usrp, bank, &quot;OUT&quot;, 0, 0x02, mboard);<br>
<br>
Thanks,<br>
Kavinraj.<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000071acb6062cac04fd--

--===============4964030850990754150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4964030850990754150==--
