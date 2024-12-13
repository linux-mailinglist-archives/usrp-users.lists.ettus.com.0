Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BF59F0F61
	for <lists+usrp-users@lfdr.de>; Fri, 13 Dec 2024 15:40:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B703385360
	for <lists+usrp-users@lfdr.de>; Fri, 13 Dec 2024 09:40:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734100809; bh=0CD+9X4ZuGFPglSItQvx/dYpTO0NQ/n2Ys5x7c1deXg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QMYupoBNh6LTriJ7rBMHoAFrEJau5uo4xOErzO7v0NeokxaDLkAeHHj9QBeJPzBiO
	 X2fnBt2t7q/huZ7gOZx6cetPz64K0MWW8+F32VIx5GMOuZfW3oIN1e1V5fVwCpZko5
	 sXg7i1ymZWSW+1Fm+3pHnad0fM3wAiTZ5lvtaLnj+ds5+PUaZBJRsqmtFDvoF9Pl5D
	 8W9VbVqQYOvxms0Gs0P2ju8jaSVqPUMwrk2qkYCitDxSjk6je8lF6uHw04y3y1vYaV
	 qfsdJc+hlWyEmpnLgtvm+2Bge9lsGrvFHcntsWKi9wyVLAxMzV5i7VfRCI8mLSPQk9
	 zvEIFAsQ1ENuw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C7B3385BA4
	for <usrp-users@lists.ettus.com>; Fri, 13 Dec 2024 09:39:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aFrL9gWc";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-46788c32a69so21317231cf.2
        for <usrp-users@lists.ettus.com>; Fri, 13 Dec 2024 06:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734100755; x=1734705555; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2dKks33rDoqS2QnzGhoyYQqKi5KHrNbe3qR/Uy72d3o=;
        b=aFrL9gWcii5q6Mt15+tJK2aYOnYKNQlqvI0VTNVZqq3Tp7snKXLBbIPk/7jnb6lew7
         uBLV7hzRKx9Z0d+5eBnga5vhzQcbSbTIPLF2B93L7jlAJKniRBQyyF6cwPcbqoTO/3YB
         AaRa5j/eSC0qcuivdmzwWNrnOp4R0QYTyPKzt5ajkoD8QxrdOMKIOJbEHYb0HDFsGW4P
         HLyA4r9pYVNnSdp9RfNVp9RqUUEWPP3ZD48lrfLM6DK2EtQ0fqGjhM/1GUnvLXvpUWPD
         rpmyFqZyPm+yc1JktqAn5C9a80d9JS9x+ixISJ31IT2dDpdeeWyvOzeU5VCrBDgqrQkE
         xpig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734100755; x=1734705555;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2dKks33rDoqS2QnzGhoyYQqKi5KHrNbe3qR/Uy72d3o=;
        b=SgKOvKBTuuNvxgDVb34dmyhituAWgCM1sceD54T/DkKAtF4fBhoGMLymI6ainGj6dh
         Zf7Nn+fup4Sspl2LtcuqZiiVBPfWorxKus/CCZuDmS/xHTaIDZP+nKxepqJgWP2K72GK
         YO18YYftG8eEERpLd4MeZgnYHbXayf6rNx23kXu4NQzVyDsocQ0k19YcLIlplvsLt8Zm
         EfVn1YkHztO6wrW1y1ldOQpTPEJdDzHbmJ56xWxmLBhEA3sh7csvOfdtkXZW/Hlcv9CZ
         QXjW/bHP0f5LVqsBToazTpwBp2W7MZhLxBzZ8477Y5PbdgEj1E0WQBiJk7GG5L2TvDUV
         QQBg==
X-Gm-Message-State: AOJu0Yxe82/CgkbmFDHB3p8LnZgn33ggsxhOX5zPyYR55lK7Ryu5Hqkc
	IqV+n8/sNO73YDWuajcuHB5QrhphgDGiUJiAlLE793HT4C1glfCZyUOZP7F0yrBxUDWG2BX5Kbd
	CFTxZUGHTtFw9glRSOVYYnc73Ap/aNvLL
X-Gm-Gg: ASbGnct2NAGUrT3K99QDI9nDw124D2Y6LPnlY64SQNU7iNWyk71bEQwm9po8zpJnwbc
	4l42RyIcj6AG6kwTNhYDCJb6Xh22V+O6h3vWuR4Y=
X-Google-Smtp-Source: AGHT+IHS5VL38EDtm73ijGrw1lBgnYBwiGgT3lKAONHD3Yuio9JhqfA5HRFGWftz3UGWcbleZtXkcZkxzJrzJc07drE=
X-Received: by 2002:a05:622a:1114:b0:461:253e:cb8b with SMTP id
 d75a77b69052e-467a5803abamr39982191cf.35.1734100754787; Fri, 13 Dec 2024
 06:39:14 -0800 (PST)
MIME-Version: 1.0
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Fri, 13 Dec 2024 15:39:03 +0100
Message-ID: <CAAc7u9qHwc1cQDc2ksrqCw0xJta9=cBMmxGHVqCCSxMAoGWFGA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7YTWA6FHI6TMEPCFJ4V3JPF26SFH3UUP
X-Message-ID-Hash: 7YTWA6FHI6TMEPCFJ4V3JPF26SFH3UUP
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Python API: X310 ATR TX not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7YTWA6FHI6TMEPCFJ4V3JPF26SFH3UUP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2385705122424735788=="

--===============2385705122424735788==
Content-Type: multipart/alternative; boundary="0000000000007e6fc0062927cb88"

--0000000000007e6fc0062927cb88
Content-Type: text/plain; charset="UTF-8"

Hi all,

In a project using an X310 and the Python api the requirement is to toggle
GPIO pins 0 and 1 whenever the device is transmitting or receiving.
The code is as follows:
PIN_0_MASK = (1 << 0)
PIN_1_MASK = (1 << 1)
PIN_MASK = PIN_0_MASK | PIN_1_MASK

usrp.set_gpio_attr("FP0A", "CTRL", PIN_MASK, 0xFFF)
usrp.set_gpio_attr("FP0A", "DDR", PIN_MASK, 0xFFF)
usrp.set_gpio_attr("FP0A", "ATR_0X", 0x000, 0xFFF)
usrp.set_gpio_attr("FP0A", "ATR_RX", PIN_MASK, 0xFFF)
usrp.set_gpio_attr("FP0A", "ATR_TX", PIN_MASK, 0xFFF)
usrp.set_gpio_attr("FP0A", "ATR_XX", 0x000, 0xFFF)
This works for ATR_RX, but TX does not trigger the ATR. While the LED does
light up, the GPIO pin does nothing.
Both TX and RX are bursted. Is this a bug?

Thanks!

Tim

--0000000000007e6fc0062927cb88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>In a project using a=
n X310 and the Python api the requirement is to toggle GPIO pins 0 and 1 wh=
enever the device is transmitting or receiving.</div><div>The code is as fo=
llows:</div><div><div style=3D"color:rgb(204,204,204);background-color:rgb(=
31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mon=
ospace;font-weight:normal;font-size:14px;line-height:19px;white-space:pre">=
<div><span style=3D"color:rgb(204,204,204)">    </span><span style=3D"color=
:rgb(79,193,255)">PIN_0_MASK</span><span style=3D"color:rgb(204,204,204)"> =
</span><span style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"colo=
r:rgb(204,204,204)"> (</span><span style=3D"color:rgb(181,206,168)">1</span=
><span style=3D"color:rgb(204,204,204)"> </span><span style=3D"color:rgb(21=
2,212,212)">&lt;&lt;</span><span style=3D"color:rgb(204,204,204)"> </span><=
span style=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(204,=
204,204)">)</span></div><div><span style=3D"color:rgb(204,204,204)">    </s=
pan><span style=3D"color:rgb(79,193,255)">PIN_1_MASK</span><span style=3D"c=
olor:rgb(204,204,204)"> </span><span style=3D"color:rgb(212,212,212)">=3D</=
span><span style=3D"color:rgb(204,204,204)"> (</span><span style=3D"color:r=
gb(181,206,168)">1</span><span style=3D"color:rgb(204,204,204)"> </span><sp=
an style=3D"color:rgb(212,212,212)">&lt;&lt;</span><span style=3D"color:rgb=
(204,204,204)"> </span><span style=3D"color:rgb(181,206,168)">1</span><span=
 style=3D"color:rgb(204,204,204)">)</span></div><div><span style=3D"color:r=
gb(204,204,204)">    </span><span style=3D"color:rgb(79,193,255)">PIN_MASK<=
/span><span style=3D"color:rgb(204,204,204)"> </span><span style=3D"color:r=
gb(212,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> </span><=
span style=3D"color:rgb(79,193,255)">PIN_0_MASK</span><span style=3D"color:=
rgb(204,204,204)"> </span><span style=3D"color:rgb(212,212,212)">|</span><s=
pan style=3D"color:rgb(204,204,204)"> </span><span style=3D"color:rgb(79,19=
3,255)">PIN_1_MASK</span></div><br><div><span style=3D"color:rgb(204,204,20=
4)">    </span><span style=3D"color:rgb(156,220,254)">usrp</span><span styl=
e=3D"color:rgb(204,204,204)">.set_gpio_attr(</span><span style=3D"color:rgb=
(206,145,120)">&quot;FP0A&quot;</span><span style=3D"color:rgb(204,204,204)=
">, </span><span style=3D"color:rgb(206,145,120)">&quot;CTRL&quot;</span><s=
pan style=3D"color:rgb(204,204,204)">,   </span><span style=3D"color:rgb(79=
,193,255)">PIN_MASK</span><span style=3D"color:rgb(204,204,204)">, </span><=
span style=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,=
206,168)">FFF</span><span style=3D"color:rgb(204,204,204)">)</span></div><d=
iv><span style=3D"color:rgb(204,204,204)">    </span><span style=3D"color:r=
gb(156,220,254)">usrp</span><span style=3D"color:rgb(204,204,204)">.set_gpi=
o_attr(</span><span style=3D"color:rgb(206,145,120)">&quot;FP0A&quot;</span=
><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(2=
06,145,120)">&quot;DDR&quot;</span><span style=3D"color:rgb(204,204,204)">,=
    </span><span style=3D"color:rgb(79,193,255)">PIN_MASK</span><span style=
=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,214)">=
0x</span><span style=3D"color:rgb(181,206,168)">FFF</span><span style=3D"co=
lor:rgb(204,204,204)">)</span></div><div><span style=3D"color:rgb(204,204,2=
04)">    </span><span style=3D"color:rgb(156,220,254)">usrp</span><span sty=
le=3D"color:rgb(204,204,204)">.set_gpio_attr(</span><span style=3D"color:rg=
b(206,145,120)">&quot;FP0A&quot;</span><span style=3D"color:rgb(204,204,204=
)">, </span><span style=3D"color:rgb(206,145,120)">&quot;ATR_0X&quot;</span=
><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(8=
6,156,214)">0x</span><span style=3D"color:rgb(181,206,168)">000</span><span=
 style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,=
214)">0x</span><span style=3D"color:rgb(181,206,168)">FFF</span><span style=
=3D"color:rgb(204,204,204)">)</span></div><div><span style=3D"color:rgb(204=
,204,204)">    </span><span style=3D"color:rgb(156,220,254)">usrp</span><sp=
an style=3D"color:rgb(204,204,204)">.set_gpio_attr(</span><span style=3D"co=
lor:rgb(206,145,120)">&quot;FP0A&quot;</span><span style=3D"color:rgb(204,2=
04,204)">, </span><span style=3D"color:rgb(206,145,120)">&quot;ATR_RX&quot;=
</span><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"color=
:rgb(79,193,255)">PIN_MASK</span><span style=3D"color:rgb(204,204,204)">, <=
/span><span style=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:r=
gb(181,206,168)">FFF</span><span style=3D"color:rgb(204,204,204)">)</span><=
/div><div><span style=3D"color:rgb(204,204,204)">    </span><span style=3D"=
color:rgb(156,220,254)">usrp</span><span style=3D"color:rgb(204,204,204)">.=
set_gpio_attr(</span><span style=3D"color:rgb(206,145,120)">&quot;FP0A&quot=
;</span><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"colo=
r:rgb(206,145,120)">&quot;ATR_TX&quot;</span><span style=3D"color:rgb(204,2=
04,204)">, </span><span style=3D"color:rgb(79,193,255)">PIN_MASK</span><spa=
n style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156=
,214)">0x</span><span style=3D"color:rgb(181,206,168)">FFF</span><span styl=
e=3D"color:rgb(204,204,204)">)</span></div><div><span style=3D"color:rgb(20=
4,204,204)">    </span><span style=3D"color:rgb(156,220,254)">usrp</span><s=
pan style=3D"color:rgb(204,204,204)">.set_gpio_attr(</span><span style=3D"c=
olor:rgb(206,145,120)">&quot;FP0A&quot;</span><span style=3D"color:rgb(204,=
204,204)">, </span><span style=3D"color:rgb(206,145,120)">&quot;ATR_XX&quot=
;</span><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"colo=
r:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,206,168)">000</spa=
n><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(=
86,156,214)">0x</span><span style=3D"color:rgb(181,206,168)">FFF</span><spa=
n style=3D"color:rgb(204,204,204)">)</span></div></div></div><div>This work=
s for ATR_RX, but TX does not trigger the ATR. While the LED does light up,=
 the GPIO pin does nothing.</div><div>Both TX and RX are bursted. Is this a=
 bug?</div><div><br></div><div>Thanks!</div><div><br></div><div>Tim<br></di=
v></div>

--0000000000007e6fc0062927cb88--

--===============2385705122424735788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2385705122424735788==--
