Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DFE85398A
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 19:10:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBCA438468F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 13:10:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707847854; bh=na0SzdOt1w7EX6Mc2ShLGvZLARD9SitADfrc15ppGOg=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xhJi49xdPIpMZR9BqiDyz5zJzsI5F04POGIiIVdng9+O/aGWiNjz9cvxtYz0nrUmx
	 bIFilhR/LzfCzaDNYpLHfQ4W5Udxu7qpY0c1ezjNmFi3HZoscZUoe0zXxL8HSZ3kRx
	 UNWYQniSccLmtNwMfXA8hsnx9bJ2wUhVvsR8sO09Sujmd5DB0/4kSWe8YW7j4uBlqv
	 7/UUgYOE3HVFL/c5SOhVkhZvpqWk6jAfmImX3+/3yhG0asTs4mecaXKg0u/yDU8wV0
	 uZ/fbJtMl/GTrNezHNHtKe3TtGCSRLh3wZnFBHvAt3hieOp04gYFE9BfxIVyDNYHNv
	 15kOkSLfZEhjA==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id D83E338465D
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 13:10:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eHNAAEWq";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6861538916cso26243516d6.3
        for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 10:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707847817; x=1708452617; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/pHUnZWtkWbqTLRbiF/BQty1e71i+DVkldxX4yTQpM=;
        b=eHNAAEWqUevTM2STJ0UFuYnA3SVZ/eDc4LdUcVYG8uBaequk6xOt49O56wisWg6IIy
         DqJ2+2ofAdXN6RdNHCjrKOzekRpx9U3HlM76L5CHcCUB4V2VKxfWG3dmZlHKYpY3fHXU
         6+gyNoW3nnYRo1brySmz1tUYo0VpDrmAXtnG7OGwot5eEHh61f2zVwErexRVqeaN3Ez6
         KXyHvyC9eRpRWYD383MUvOCgWUdZ5ZOqSxhP+ZcaqujqTwUJTxZcLmZFR15hqwqlyx+F
         zsl5XqLqVyi/GebT1TZMh+D3yYEpbpbhNzUxls/EmUXXzyN1vO/PKi5ahFdWPpF0ZwAQ
         MQRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707847817; x=1708452617;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o/pHUnZWtkWbqTLRbiF/BQty1e71i+DVkldxX4yTQpM=;
        b=KhgL+FmpXiWBqFEiK5fFM7t4xI1ai0OtBNsxHulMJA/ZqCfbWNDm6CPTDZuTvqGIc+
         WAqTEpMYJ8s2p9qHmTq+mKMYdMX3c+gZTszwRVOah+i5nr31R8j0B7WojvveQBcv6RD2
         VNLTEafZF10WjECVvNRer2rAspgUPulYYQkpIJ6WmhIknEftCFM2JJ8JR6NT/L+iX9A6
         Mu2IZI0X1lv40g+tpbdAeCTIK06F+tODcy6tQK0wZDdzikLCmItauz8mjS+HF2M2q0NN
         2JP04EHiz6Xm0hvKpEdjWxDsoJ6CrddrUhkXCaLK0hp6EMsrinbo8Q+nEDIbGGx25wED
         ecDw==
X-Gm-Message-State: AOJu0YxkbZFp1OG3Hwf3BVgsjXGYAQGuwzSd56wThUDOGbIsCsFXAxGb
	ig3/ybYzKzPL26mE9A1bv4C5cbQ9l+eYmET55p4PX2WQ1gXcNrSRj9bpcJMB
X-Google-Smtp-Source: AGHT+IFx3zupxUT9ZSB653tuKQJ5mgVLCBHaHzSpCNxtdLvzY1LyLUkp3q3RRlh5uZS3R+0Vl7m4zQ==
X-Received: by 2002:a0c:aa9a:0:b0:68e:f036:f5dc with SMTP id f26-20020a0caa9a000000b0068ef036f5dcmr187934qvb.15.1707847816892;
        Tue, 13 Feb 2024 10:10:16 -0800 (PST)
Received: from smtpclient.apple ([2605:b100:d11:4181:f5fa:bae6:fdbd:704f])
        by smtp.gmail.com with ESMTPSA id p14-20020ad451ce000000b0068cb05e910fsm1471658qvq.5.2024.02.13.10.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 10:10:16 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Feb 2024 13:10:03 -0500
Message-Id: <E55FC872-2BF9-4920-BF1B-C63D276A0D3F@gmail.com>
References: <6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc@lists.ettus.com>
In-Reply-To: <6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc@lists.ettus.com>
To: jnunez@cud.uvigo.es
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: ICLMBOCW5HQDOJKSE5ZUZHHEXE2OUKI7
X-Message-ID-Hash: ICLMBOCW5HQDOJKSE5ZUZHHEXE2OUKI7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ICLMBOCW5HQDOJKSE5ZUZHHEXE2OUKI7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6505334671834763850=="


--===============6505334671834763850==
Content-Type: multipart/alternative; boundary=Apple-Mail-A4E1ECF9-5F07-4FF0-8665-1122A8E6F894
Content-Transfer-Encoding: 7bit


--Apple-Mail-A4E1ECF9-5F07-4FF0-8665-1122A8E6F894
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Are you seeing the same error on Windows and Linux?

Sent from my iPhone

> On Feb 13, 2024, at 1:00 PM, jnunez@cud.uvigo.es wrote:
>=20
> =EF=BB=BF
> WBX on a N200
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A4E1ECF9-5F07-4FF0-8665-1122A8E6F894
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Are you seeing the same error on Windows an=
d Linux?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><=
br><blockquote type=3D"cite">On Feb 13, 2024, at 1:00 PM, jnunez@cud.uvigo.e=
s wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF<p>WBX on a N200</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-A4E1ECF9-5F07-4FF0-8665-1122A8E6F894--

--===============6505334671834763850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6505334671834763850==--
