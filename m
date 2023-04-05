Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5816D71BB
	for <lists+usrp-users@lfdr.de>; Wed,  5 Apr 2023 02:55:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4635D3849E6
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 20:55:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680656130; bh=hjaNHhljiSJyjHnxKMYtrO0G6BU/oEVnS//SGOtIfSs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Bk7JjOEpLM+hBWq3zjhgiWZB1uS3aWv69MfFS4ldg6yKnZy4OCVM1Aybp6LdmB/Zb
	 VN3PAtn1QGrHuzkkD6DEaWZ9WJrLHaNLN6TG2GlLWwVfy7+r+9kU6pZB+ChxQa1KEH
	 DXI+ACP3APNGVIUT9ZXFrZ5bpkTtAQofABYtsczieKVpTOXH9uSjB6R4wEa7krspTc
	 vO3Tl/HqTqjyex343vZwWSuvxag0nnIBnmSvFvvFJijx4dx7BqomgvkKwc7NxSaNtm
	 Ep4jJEaxFi/btQyWkwCcXbv7UYkVuWXyI5fpQa0BYj7t5Lp0qOKGMCgkzCDtKqN8ro
	 hY+LsYV/Ltosg==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id F1D083849C6
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 20:54:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="cWakA8gU";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-9338d479a21so9560866b.1
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 17:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1680656098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tq4xj/3+NtigW8xa/bHaEO3ouAYZt8biAcXkE21R7lI=;
        b=cWakA8gUAadIOHEmme1o27WVauBVrXANOueF9cV1aahKXWiEDZ8w5a7O71NAFEOZrq
         Vw86c/j+3m3jKmgQnsK2YCe0kGW5JcmRtBhC+J/1bGt8RGyB2RaQ5cQmy/yOOx/GgWkv
         5CyA2xoxfQtMCNq0r8puzZ4tV/NKTd/f39RoZKSQrkE/gJx/PuKGh41mxYAaQwTxE7qv
         0RGMOGyJvhUsAkm703CHzqjdLrBTK0Ss2F9CEfgXg7kUxWwnXhDWmSjVdmcIK+4Leock
         wBzkXvBfzhzmmpoLFakSKij8b3LJZoLjXByMxRlDHw1Z396UeGxKZdJzlJ/EL4/Ml2ag
         FQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680656098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tq4xj/3+NtigW8xa/bHaEO3ouAYZt8biAcXkE21R7lI=;
        b=CAtNiMQjDx0TURaQltrdOyjcJPD1skIimVI7/LFGgPZo1p7PN0ypkgijVA5V83tvfp
         6hE0V1iUlfFv6w9wnVqFoXB1p1UqKrswa1oTH3RqRn35cJgfipjqS9Ag1H4YEDvF3ohL
         49WqDa6tlklaq3xHiQgIEoOWaKhnNTTTiJrdnGB7PUqaVs0XzMKjAX71TbJDE28UNL+A
         6zCuSTt32YR4Gp4CbiyRNbAAyE/buiwGVynxugmyCUrK/kwgKTToRCzn5jYSZjJE0oJJ
         2RFwoNU5tzXbyOUTUW6pwmUm3ANz5Ru7TvMJDXvhFtQ0EpD6LMoSm3FXLRX+FHXIfDEN
         RnCg==
X-Gm-Message-State: AAQBX9cOiZW+IolEJUw5wC9nCYh5nYqUfIdIKtVclGWF0pn/Z80o29Af
	VibBl0yaDkUnFqBwSj/9Nt5V/fxGBUqizreepI6FBfsq
X-Google-Smtp-Source: AKy350YHY8dFGyxS7aBpQtaxJaJXhgT/zSm8bL7tsHuUJxGTGJs/Diz62sgZcBbRqoqTV2P4KrEiF7FEZEScuiDVW00=
X-Received: by 2002:a50:f691:0:b0:500:5463:35de with SMTP id
 d17-20020a50f691000000b00500546335demr219239edn.8.1680656097662; Tue, 04 Apr
 2023 17:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI@lists.ettus.com>
In-Reply-To: <gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 4 Apr 2023 19:54:41 -0500
Message-ID: <CAFche=hkwv4LTOVBpHhSr=7+y=a++7gXwUkxgdhmtaa+CCYGXw@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: TDVBR52KRUAOWVIJTL6SZJWX3TCXTYF4
X-Message-ID-Hash: TDVBR52KRUAOWVIJTL6SZJWX3TCXTYF4
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PCIe NIC card connect to USRP-X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TDVBR52KRUAOWVIJTL6SZJWX3TCXTYF4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5479831878546592612=="

--===============5479831878546592612==
Content-Type: multipart/alternative; boundary="000000000000b0ed4705f88c3dff"

--000000000000b0ed4705f88c3dff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Please see the recommendations in the following KB article:

https://kb.ettus.com/X410#10_Gigabit_Ethernet
https://kb.ettus.com/X410#100_Gigabit_Ethernet

Wade

On Tue, Apr 4, 2023 at 12:45=E2=80=AFPM <h57jafari@gmail.com> wrote:

> Hello,
>
> What PCIe NIC cards are suggested to connect USRP-X410 through 10GbE and
> 100GbE that are already tested and compatible. Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b0ed4705f88c3dff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr"><br></div><div =
dir=3D"ltr">Please see the recommendations in the following KB article:</di=
v><div dir=3D"ltr"><br></div><div dir=3D"ltr"><a href=3D"https://kb.ettus.c=
om/X410#10_Gigabit_Ethernet">https://kb.ettus.com/X410#10_Gigabit_Ethernet<=
/a></div><div dir=3D"ltr"><a href=3D"https://kb.ettus.com/X410#100_Gigabit_=
Ethernet">https://kb.ettus.com/X410#100_Gigabit_Ethernet</a><div><br></div>=
<div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Apr 4, 2023 at 12:45=E2=80=AFPM &lt;<a href=3D"m=
ailto:h57jafari@gmail.com">h57jafari@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello, </p><p>What PCIe NI=
C cards are suggested to connect USRP-X410 through 10GbE and 100GbE that ar=
e already tested and compatible. Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b0ed4705f88c3dff--

--===============5479831878546592612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5479831878546592612==--
