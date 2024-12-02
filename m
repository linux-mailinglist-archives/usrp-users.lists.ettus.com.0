Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D2C9E03EA
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 14:45:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B19F38535B
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 08:45:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733147154; bh=xAQfZ43hF/33xQv7OObLqSJ9XB2WZZL+pc63238dqh0=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LgcRtBWFwxaHEG8lLJW9eiD8TFJlHWfGZOkqXGzH/E8cbLiXCt97nqCtr71r47p9U
	 9EkKcVsCnGoTt7xddcrn95GYJepGh0BXl8MiQYbkft2jGzmjSOZUkso15oFcNMHin9
	 TZ8Al52DvfoanpaL8I1UNvtmuW/q/yCI3BlFDNY3v+jldQpbQQTSSR7iO64x+c3vox
	 prb6J78xV2nxQ7UlcXRY5rgwj8crcMkNPb+R9EwvfPCQd1hxqncr506SG7sfVvUCIF
	 Dj87+RCJfBbtF+S+vimhuNdQHmTGR3mXVkzM7wKLn9L59LXLHBusTAbkLSSMiNscoP
	 vs5Y7vmnUt/Rw==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mm2.emwd.com (Postfix) with ESMTPS id 49F99380F73
	for <usrp-users@lists.ettus.com>; Mon,  2 Dec 2024 08:45:07 -0500 (EST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5f20a8d8bc3so1920462eaf.2
        for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2024 05:45:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733147106; x=1733751906;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Fr2VCl1/3x3AvxXhxBopzQvrLJIjUg4y1axacrzuRA=;
        b=iTD0Qctow9BLhsWr92NSidQE9cE6mMdbE4s/VjWGqIJC/U7Xb7jXGfl37D4wPO41cO
         pzq8LlXewbcgnmN6tBaRrJDHCxoFd/HIprYMBTBXBqN4qqpoKd2v84gH6x/cRFtp+l2u
         dVMrKJi8sV69jgDTD2hAeXHKb5eJqD2jHpHlbd0A1yDk/oiquqOVjow/E+7GahUR4rCi
         AV98iBURdwfPEybt4zsqC7Ro/s+hsHFPMZzQPgY8r7GIVQ8cvFuuM7VcFqPnnhmHzO5E
         TuohOi4VyFOpgrH9jJxtH/xL1cRuYEvYhUS704p/MF57D5vzeDySL4NaqWH369tC9FFV
         /N5w==
X-Gm-Message-State: AOJu0YwDo+xnPulPeVsArG/TW0dsYdhOmIHHvRdPyCgJYBX+AlBIrSuf
	HXFfXBbTu+SUfTSmXq40EvOcjSnMRF9XUT1dzFGO/ASRyYntUFbekpEnbUEZX7ZYIkLhdhWszTC
	k1qSqoohm4Ezjqtb5FO2ghg8Xwzaw7EfbMVOfphp9lwAsQP28kWlz63SXgyP+MdR2KMcOcQ==
X-Gm-Gg: ASbGncsBLzDimENoFkJmmCZBZB5Zpn+pjV58wwsj14h/UpbjRJnLM0PyeZK2XEsN0Cn
	7ZkjZlhjTtnrb9g==
X-Google-Smtp-Source: AGHT+IHaNn9Fz7ieM3QpPoxTXfwQf6qrrbcPUfKOMzxrTs9COrLDpPthQ7FHbsR9Q4zJTFDnRCZuqc6b7WVz37L5kiJPD3GoF74pBQ==
X-Received: by 2002:a05:6358:93a7:b0:1ca:665e:943a with SMTP id e5c5f4694b2df-1cab159d49cmr774977655d.2.1733147106534;
        Mon, 02 Dec 2024 05:45:06 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 2 Dec 2024 11:34:48 +0100
Message-ID: <CAO=xj9VQiDaA2u3mtQ+RLEqSWf6ZQf04qJBPsBNT_mWB9Bz=Uw@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: GYEXWN2FDSRIQVSP53FFJ3PXEIUG2PUC
X-Message-ID-Hash: GYEXWN2FDSRIQVSP53FFJ3PXEIUG2PUC
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD, DPDK compatibility question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYEXWN2FDSRIQVSP53FFJ3PXEIUG2PUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2463460381409308625=="

--===============2463460381409308625==
Content-Type: multipart/alternative; boundary="0000000000001600bd0628471925"

--0000000000001600bd0628471925
Content-Type: text/plain; charset="UTF-8"

Hello

Does anyone know if UHD_4.7.0.0 is compatible with DPDK 21.11.6? If not,
what version should I use?
Thanks
Houshang

--0000000000001600bd0628471925
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div><br></div><div>Does anyone know if <s=
pan style=3D"font-family:monospace">UHD_4.7.0.0</span><span style=3D"font-f=
amily:arial,sans-serif"> is compatible with </span><span style=3D"font-fami=
ly:monospace">DPDK 21.11.6</span>? If not, what version should I use?</div>=
<div>Thanks</div><div>Houshang<br></div></div>

--0000000000001600bd0628471925--

--===============2463460381409308625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2463460381409308625==--
