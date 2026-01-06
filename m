Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C877CFA16D
	for <lists+usrp-users@lfdr.de>; Tue, 06 Jan 2026 19:22:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A82633866FE
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jan 2026 13:22:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1767723765; bh=Hjc3xFL2D1Ugluu+Lkzb8XlGBAep3hrKrxMw4NE7Sp8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kkRK34kSJGZ/Gc/Nh73aA+GwqfOtlDwI0J4etBfSuayxPi3K/iwiFvMEC+IwdRSYV
	 4xNjzx209BClbR0ZjwAvG50AoD/1Vnt2L9OANucjRMtFOx6v4sMKt3XktjD211ZadX
	 uQnYN5h4Sh/uRgqk5FEqZpMQJmZc2LXUcrPqSGwlNOPomKKtLEpkJ03IgT0ZJUyQLI
	 fnPhkAvAK0/4NcxY0e7McR3ftG1PLat+IIdEXAw/nTE86TyrivjQY0/Z9vEpCDw8xb
	 7HtFiG9QvGc90WGDixosI2yz6LmzXY/zD6hIFu/+TiwAkhYCP7IvsYlYrbTIydQFWf
	 TWrFlwED9MV6g==
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C9783866FE
	for <usrp-users@lists.ettus.com>; Tue,  6 Jan 2026 13:21:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OTYpk/Aw";
	dkim-atps=neutral
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-6455a60c12bso1282238d50.3
        for <usrp-users@lists.ettus.com>; Tue, 06 Jan 2026 10:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1767723690; x=1768328490; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QLAAJIwojlbTPok+jbK/IgneS+9dzkYDhc0jUXQc9QU=;
        b=OTYpk/AwlvOgUYAyVZoEKkg4LN2uSIcbkzW4l712KrvVtMVLegHyrlRSYCgx4A+8YV
         qvEhW5ApaCZ/O6emkqcwC2LguZbtrqI1NudelEy2gZmtRWllxtNDh9PxhbvKwBfyKIzL
         ln1K6ShL+m7+81A9FNQstZQW0YMeMXY0IXuRN7jknYpW/j4iFUHVLLXaAg1uRYuqOcn4
         mONsGqhfEEaNr3Df4v70qErBpj2JlYIOQOAaraJUg+C5hzJnXwwViBcoMjM+jijbQWEs
         VferPndQyZ6A19Epfqv/IOKlXAFSzGx7LKOiqKVVoFXj6UfGFskXmjndYriPCNcYE2wm
         x8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767723690; x=1768328490;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLAAJIwojlbTPok+jbK/IgneS+9dzkYDhc0jUXQc9QU=;
        b=PPo5de+6fxHJ4YgCKQ/Voo2kNm4JTXmVMyN7slq4vZd/1Byk2FGe5C1u9YlUFGY2ds
         XSz15T7TGXIJuiKHjPXNt3IRrfVVoBObBupGi/D3GOmpCxi0HH9c9HS0+ObtBSnOZvK9
         5/z8aBnMgLtqaecGvXf9cHZ9fiSKo65WDhoVGmk30jqRzkU1aalPwlnfrCYZSa0hL+i/
         Vo+DvN9ji64SpMMP0qk2GaNxvfYPRcdjOIl3UC0JJqNLKT3oRHha1rQE721Eu+z05UmU
         oh9T+hQPjYAYHWbzmmh98VNPiR2/oP7QlFaWBeZ/dF6iK9BNvW7R8WKQ7551eWWjVV8D
         9AAw==
X-Gm-Message-State: AOJu0Yw7J/BDlZZpTgoWyvgCZAG8naSzHAcJayEebAHtLgGMo0iyGLuK
	kqppyZvE7DUCbwoPJ/17Use9vg74vm8HsCiZsI9DiOvVxg5/Le97Ew9U98mrgkHiHxy+d+20X40
	oY0pbDfhF74CvwP/i0n6MGP/b8yyLi3Jya7+tmUboEwptGZUnrwA=
X-Gm-Gg: AY/fxX5N4E3HLdMgvStF7RLcqP07Lg8BCaF618UluSqyyUGTu7uqpqxJ5SohF5XVm7w
	OguFHYApo/xFVMFq33d19b/oHL+MF+sHHaT0j7UJDP2T+ITsBpRRsZX6ae0KORve3ReQi89Zj+d
	ItQzYbXJO4oXaDqHAgPf9a59LSqJldJcV/pnkQwj1Lc/LYAJbIZDLL+mdO/1a298BVcoOrX/UQs
	rJxjNBArQLnQScksK+GSaSZgJgCD0TuEoPV8b8uh6sLlDTYGbDtosZOkqGdh7xOYCjz52B/x7il
	zu8RzYlFfy7G4+rQEiDta/HjbmfIXNSos9jSHwlM
X-Google-Smtp-Source: AGHT+IFUXk70zTUAkogoyNuJW+Z9Om5Gvg9GA3j5ynYU2ZLekLr4k3tIgWnzcbbs4cDHDNzJUZPWRVMih+h78JGxDjs=
X-Received: by 2002:a05:690e:15d7:b0:63f:4b71:18d9 with SMTP id
 956f58d0204a3-6470c9180d5mr2331806d50.69.1767723688968; Tue, 06 Jan 2026
 10:21:28 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQuxNyesoE5kseMRymAZCbx2D5zyvpn9AUoFE=YaJ3sJw@mail.gmail.com>
In-Reply-To: <CAB__hTQuxNyesoE5kseMRymAZCbx2D5zyvpn9AUoFE=YaJ3sJw@mail.gmail.com>
Date: Tue, 6 Jan 2026 12:21:18 -0600
X-Gm-Features: AQt7F2rvV_UFY1cQ6w9v9gexnUEjMU2PylxrhQHbqYp270Rex071GMAqBI7ywgI
Message-ID: <CAB__hTTRiZRWU=W5WDX7q0dv48L_+Js8BbhtvDrbDzvHkMMomg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: QRDEOLHYTJ77OZW3MCG2LYSMNDLLSQAO
X-Message-ID-Hash: QRDEOLHYTJ77OZW3MCG2LYSMNDLLSQAO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Extensions & antenna mixin bug?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QRDEOLHYTJ77OZW3MCG2LYSMNDLLSQAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8176124674115480540=="

--===============8176124674115480540==
Content-Type: multipart/alternative; boundary="0000000000008adb1e0647bc3e8b"

--0000000000008adb1e0647bc3e8b
Content-Type: text/plain; charset="UTF-8"

Hi,
I am playing around with the extensions interface for the first time and so
I compiled the example, installed the extension in the appropriate folder,
and ran the example "rx_samples_to_file".  If I don't specify an antenna,
it runs successfully.  If I do specify the antenna (e.g., "--ant RX2") it
dies with a segmentation fault at the call usrp->set_rx_antenna().

# using N320
# using head of UHD-4.9 (d589cd50)
# here is the command that dies with the segmentation fault
$ rx_samples_to_file --freq 2450e6 --gain 30 --nsamps 1000 --rate 30.72e6
--args="extension=extension_example" --ant RX2

I then modified the example and determined that all of the "rx_antenna"
commands cause a segmentation fault. Is this a bug or am I doing something
wrong?
Rob

--0000000000008adb1e0647bc3e8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr">Hi,<br><div>I am playing around with the extensions interface for =
the first time and so I compiled the example, installed the extension in th=
e appropriate folder, and ran the example &quot;rx_samples_to_file&quot;.=
=C2=A0 If I don&#39;t specify an antenna, it runs successfully.=C2=A0 If I =
do specify the antenna (e.g., &quot;--ant RX2&quot;) it dies with a segment=
ation fault at the call usrp-&gt;set_rx_antenna().=C2=A0 </div><div><br></d=
iv><div># using N320</div><div># using head of UHD-4.9 (d589cd50)</div><div=
># here is the command that dies with the segmentation fault</div><div>$ rx=
_samples_to_file --freq 2450e6 --gain 30 --nsamps 1000 --rate 30.72e6 --arg=
s=3D&quot;extension=3Dextension_example&quot; --ant RX2</div><div><br></div=
><div>I then modified the example and determined that all of the &quot;rx_a=
ntenna&quot; commands cause a segmentation fault. Is this a bug or am I doi=
ng something wrong?</div><div>Rob</div></div>
</div></div>

--0000000000008adb1e0647bc3e8b--

--===============8176124674115480540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8176124674115480540==--
