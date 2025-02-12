Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A1CA329D1
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 16:23:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71354385E59
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 10:23:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739373817; bh=mB3JQhJE9eAba5C2eWpI3RJK/MTyXUyy96faYVU0BPs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MnrzUt8Vc17z7d3XVlYRk+nlVTbLJQEABAb23LeKRxjI5Npyk7F+DeFa0tHLe5jeB
	 WacADFNbDGGNtSN7TheFYEM3ziuZta4aK6gkfHQkUVXjb2aoKkqM/ASX+Xhk5EPoZL
	 1BXGJZNXa415d5q4VB9qJAD6gUdKvNU5IAF3yQBTnjxQoDOeoEkUsKYymilgDKPPcL
	 0gOWEpZemRwpgpJr2ail9zPXaYgwg/pvn5tYsCd8xnSFNr5zvPZ2eBdUPx5VfT22CV
	 Ce0goGqrfKMzgYNorBR4SJ8YEFHwlVmyPsY8RaXCA6bnzGA1QFDMBtbpULxvc+VP5h
	 xFudyKp9WBRSA==
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4059B385CB7
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 10:22:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cud-uvigo-es.20230601.gappssmtp.com header.i=@cud-uvigo-es.20230601.gappssmtp.com header.b="ljfsf28z";
	dkim-atps=neutral
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-4bbe470bc3fso1250892137.0
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 07:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cud-uvigo-es.20230601.gappssmtp.com; s=20230601; t=1739373769; x=1739978569; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SaCmX/EUDCMMw0roYwB7XFlk5wvjWecJmPYFCbYw/FI=;
        b=ljfsf28zRWENY8CfZlyzYbJUXydc2Gg2xNaXU7OtRkJCt3y1HB1Kv6xUlUKPBchq0f
         dDYWHnmTm6DNPaQBtlAp1g7i9pBpuYtG0XOpsBFkDts/Mt7UDWnnwxMw2Y4gM4Dgt2K1
         Z+2zFYIPAVPr+XF7tpK5ZS5Zk7rOwlkpVi8dwlp5baPV4UaXLOerw5sS2ziXMDn1w2pY
         OfoWlSZfdqekGiXuNemdnFsv/gIngJ1K6UsHvdzFV6I939yxIEW/CTnROKnT5sVpLh93
         psnA8tL2qvk931qMmoqmUU9PnsP6jQyQdDkt4kOwvLhENTZbRdiht+BojfykRSe5bhbR
         EBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739373769; x=1739978569;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SaCmX/EUDCMMw0roYwB7XFlk5wvjWecJmPYFCbYw/FI=;
        b=vWSF4huP7pGkjxVwYobx2Ju+sddtVug3aHf77VtBevAsEYfyvmeIlxFtQTy+warb9w
         kq3Af1tcaJIfva6u9ZFrvMiHjaFRnsTXJ0GfsfAmec/Ofws7o7wnE5PGEkdbRitk4sWC
         c/hfvOhr/kubaDZZtLfkgU6u6yWB6X4kQEG4ys5PjbLS7Ujl0chMOBohgXqKKQnLXq6y
         dzV575qPqHLuI7drqJ6+Gz5+E+b/jcrOOUHXofUv7eIUmaER1RzPdrngmMOZQZw3UfLb
         ZiZq8gT8qKVPD5w/lkfiioMeHSvN0OgMYg4qHOS1MEH+9RRFHsdQn4XUZ1vx8xqtG8lO
         R2eQ==
X-Gm-Message-State: AOJu0YwnRtXTCc3QY0U7cAs3EdrHQ5DpK/y8Mk1cCvq0hOE81EpW9edw
	LZiOqA06PgSTU9BT+x/NyHaRh6LTWH+uor/nSPE6Zt7NgzSEiGKGB2FiwkJ4Aem0YKZGUT9iJ7y
	smbDgayO+wAHyqJx0eHy3MFlUX2hMit7KyYSitLQRg4LQfqf7RpY=
X-Gm-Gg: ASbGnctfiqt03Zo9meu0MhYfJrjpHfgAPzwfZbdC2sw0md6Mw2TpqgxZyiJ7MeXPOHq
	tdObDldqTNzUIHyw5eJB1QVdOQ5QHptA9rUrvFnEkvtAOmld+gCQr3J0tevVGFgkli8wuMA==
X-Google-Smtp-Source: AGHT+IEfuEgaly1bB63vZH9rRgcy1sveLCDb7ddzfa9T/rzUQ9diiXzUKA+cayCQqbJ515K33FZyOvlrNnpC4TifBDU=
X-Received: by 2002:a05:6102:8090:b0:4bb:9b46:3f6f with SMTP id
 ada2fe7eead31-4bbf2071a87mr3809424137.1.1739373769376; Wed, 12 Feb 2025
 07:22:49 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?Sm9zZSBNLiBOdcOxZXogT3J0dcOxbyB8IENVRC1NYXLDrW4=?= <jnunez@cud.uvigo.es>
Date: Wed, 12 Feb 2025 16:22:13 +0100
X-Gm-Features: AWEUYZnTu8NdUJNUOr8bbLI8OQV3rH7nQ3YvgLia9_oX2Htz5Wp429aZoCUFlZk
Message-ID: <CAEJzeq-FnXQjN8R9jh2LJ2mFj2cZYBiAmfOziLVTDyE+4quzBw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CFYMSYBAFKLR3SBZAAOZRN6BOX3AWZWD
X-Message-ID-Hash: CFYMSYBAFKLR3SBZAAOZRN6BOX3AWZWD
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC with N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFYMSYBAFKLR3SBZAAOZRN6BOX3AWZWD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5570322931469348145=="

--===============5570322931469348145==
Content-Type: multipart/alternative; boundary="000000000000a7dee4062df3830a"

--000000000000a7dee4062df3830a
Content-Type: text/plain; charset="UTF-8"

Just to be sure. Is USRP N200 a non-RFNoC device?

--000000000000a7dee4062df3830a
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Just to be sure. Is USRP N200 a non-RFNoC device?</div>

--000000000000a7dee4062df3830a--

--===============5570322931469348145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5570322931469348145==--
