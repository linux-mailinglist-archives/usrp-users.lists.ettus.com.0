Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 990887827EF
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 13:30:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6991F383DB9
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 07:30:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692617427; bh=uEaVpHYTesEiF1P5H8dRP+1UtwS+lNG1Es41aqRTqZE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=H7F44FtcREa9WF4fMJmNp5/vJO3qpGD7snjehE/CsIMKEMoXXF7Jf2rjuwudWQSRg
	 ze8ftsgCcLJyKk8otYlrVJOcrZNpCbwSZVXIig4nSpCcJDdmQwB1sTmP1+u923NyBr
	 F+2fU0EBOQrq+CJn1Y5//T5Yf124C5v0EbU0/04q+mVWT5N+NIyO0J/W6OdLyVwBqN
	 6RqJL4siYHm/aSMnUy5gsPbvpks8uEMCZFTFaqrCUNU05fvO74tUjBU35kN+NlZpFS
	 LuBHJ5OYr3VzSKnNXNvLtjxqjHUZLZQCDjSgCGLpfFcW3yXn/aVf+ziK5qCLyKhfzV
	 kDZpDFBP2Ij9Q==
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 40BC8380EE7
	for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 07:29:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.b="TEVvagLO";
	dkim-atps=neutral
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-68a3daf4cf7so597377b3a.3
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 04:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com; s=20221208; t=1692617393; x=1693222193;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Q2nZIQAjUN14tyCvgqRCtOHICV1lPsObVgfP35c2Hg=;
        b=TEVvagLO8JlgYrOeCt0b5Gp0RrXLWjUkJQiGOV6cZIrIlLzrZ0+ZEeUfByye4duI9m
         pADfx8DXwWQusHgpNxX6zjGC8ejXQ0b1laAIo7vAYLq9wQcn+dmKiFBdLwNnNVgmMj7n
         VPETILCRrpp8QgFZi5db7BHT56rby55rKTbXjDvbgnpMoPTx/1yXygRvbwLezZM9ckIr
         UJO4i7ktd6RI0kNL0T0znBSRAN7khtfj+Ci9sQeQn3Ff3/ofYUWhcYheS4CcKB2ozwjo
         YOa1M+z540oWQpNUZhG/DqB3/hqPFzQrJBmickWIZpLVQR9bfHJ643RXKQVHlB81qakg
         4JMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692617393; x=1693222193;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Q2nZIQAjUN14tyCvgqRCtOHICV1lPsObVgfP35c2Hg=;
        b=fJNFAVVOWXFCSAzz7Cw+++tzNbhPtuaowXsiEhJJzytb4zo41TAcaF9jXhJ7UxJ2yH
         D8LZwGxwJBCwguTytN5vnkSq3pu+P0VnZ/sb79d6Hx8gVlvKfjPWPXIbXiQx9xIowZW3
         iWnN0Z/ZjljsyDPoJseScsBpd2HvocP5r3AVDS4KAGHZlyrxv/qXYmXZi0CA+l5qeNX0
         M3l58r6DUBIWxrkm5tc/QaamiKVx8N/Rw2lgLxLKui+VubGK4IYoynzYVBK6IY3pLiza
         Eb8nIRda1MZUMAMUWFFaiS6JfsqbSevhoNL9fU5i9zNJsIISazuPImN/uk6K86MdfWtX
         v45w==
X-Gm-Message-State: AOJu0YwCykLkmXDtoFvE9uvTkEJXn93mirwt7iKi4+TGcgUQitXv6frP
	lXWdatbpBCfwaXj3/XI/xs58/RhRfV8q1Mw3ZjY=
X-Google-Smtp-Source: AGHT+IGtBquzFJWNDyHmoJMXn0B+Lgk7Byzb5SeWjmtHplDi7dZe4ih3yI7m/jYd3NwiwkFHij3VsA==
X-Received: by 2002:a05:6a21:3393:b0:140:fab7:4d14 with SMTP id yy19-20020a056a21339300b00140fab74d14mr5754256pzb.15.1692617393471;
        Mon, 21 Aug 2023 04:29:53 -0700 (PDT)
Received: from [10.100.45.203] ([157.82.128.3])
        by smtp.gmail.com with ESMTPSA id q6-20020a170902a3c600b001bbdd44bbb6sm6928924plb.136.2023.08.21.04.29.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Aug 2023 04:29:52 -0700 (PDT)
Date: Mon, 21 Aug 2023 20:29:42 +0900
From: ". AERMAN TUERXUN" <armantursun@g.ecc.u-tokyo.ac.jp>
To: usrp-users@lists.ettus.com
Message-ID: <1ed2d997-4b06-44a7-93ad-9c7e7641fe32@Spark>
In-Reply-To: <a5fd0eff-8338-455f-a77f-418e660c9b9e@Spark>
References: <a5fd0eff-8338-455f-a77f-418e660c9b9e@Spark>
X-Readdle-Message-ID: 1ed2d997-4b06-44a7-93ad-9c7e7641fe32@Spark
MIME-Version: 1.0
Message-ID-Hash: JV3ZPDRNDWA42VR5IJES6FMMATB7DCKZ
X-Message-ID-Hash: JV3ZPDRNDWA42VR5IJES6FMMATB7DCKZ
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 and PCIe connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JV3ZPDRNDWA42VR5IJES6FMMATB7DCKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5011509059782807731=="

--===============5011509059782807731==
Content-Type: multipart/alternative; boundary="64e34aab_2430567a_568"

--64e34aab_2430567a_568
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi USRP user,

I am using USRP x410, and wondering is there possible to use PCIe for str=
eaming data instead of sfp+=3F
If possible, is there anyone know how to connect device to the host and w=
hat should be the =E2=80=9Cargs=E2=80=9D for USRP=3F

Best regards.

--64e34aab_2430567a_568
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi USRP user,<br />
<br />
I am using USRP x410, and wondering is there possible to use PCIe for str=
eaming data instead of sfp+=3F<br />
If possible, is there anyone know how to connect device to the host and w=
hat should be the =E2=80=9Cargs=E2=80=9D for USRP=3F<br />
<br />
Best regards.</div>
</div>
</body>
</html>

--64e34aab_2430567a_568--

--===============5011509059782807731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5011509059782807731==--
