Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D34A09A9BD8
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 10:01:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 831B43851BF
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 04:01:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729584078; bh=HmYToes4DkaJwTcSNdAASvEyILcD3YpnD9L8Tv6Uogs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lG6IISH78HFFAV6lP/Y8VKmA/nacdkdXA/0c6nONEVFDNkqptHuNMdFUrgEzTF9vs
	 X9zFCcb50n/xoG6Uyq1ciHahT/bnW4HobZ0u8I7ufEuu8b5ObKFLQ7/NgqPXIPKtt0
	 9AaoY+YDKHSNA27uF9t7VvhgxHVKWij8emWgOwe46D7b+ow6mBc4ftnXXYFKeL6Nw+
	 R0TxZUi/49CedtXJ/iHJyoGEmL9Gof9b1n/0rZOoSCPSIodKVZgEsedJYpIoE1NNrB
	 189Kf39rNSXu7KjVJtEJHL1QkwVgIMycfb9/zFk1g4lNuz/YQ2jYVYkpnHbuGc+fgQ
	 vWSpdb+6xFWPg==
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F082384B95
	for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 04:00:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="CmOnO2Kc";
	dkim-atps=neutral
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539f84907caso5989878e87.3
        for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 01:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729584049; x=1730188849; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7pSulBpzfy2ygIN8L6p1qVr1tI3tXpM/i53VAf3KqxA=;
        b=CmOnO2KctlmuRP+oNO/HI/78QrcvgPI+3gquNgQw/xpz3rkJ0UfPH0k8SUsUtJA2xM
         tQjxgltFFAJ9qt5v9I97Wk6Z6k5SjngUkpht60YilQ9gxL/kyOCdIr97lyBTTMWUfzpB
         w1WU9ehBRJO19+agROVxQTuA+OBwXOfzpDp9E3UOO4qBIUgohPrCLx1Bt4kR3zPOJ9yi
         XfBDlC9qQpPzak8FT67IZl0dvDIpkOqUr2WTGf1JCfI2dNLX7xkp65vxr8aS5TovgAIL
         JQNSxQNeBsd7dauZgrMPpm8bHl1Q/uqar213W7EQaW0TGHNzBwfMAZp4cAoOJrJG2Fki
         Rv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729584049; x=1730188849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7pSulBpzfy2ygIN8L6p1qVr1tI3tXpM/i53VAf3KqxA=;
        b=UJB4DX/+3PJjN6UMKwitTL7J7jb6A2eYQ5Y4qO1DH/BuRk+xQFq8shkkMtIIYexkuK
         kdt9xd4HhOAWGQ3iFnW4zv7DuCzkviOlnKitpA4z0ZR7ywtGepRxoByc6wrH5Mwhtu1V
         kdsl7dnyU5QuwTN+cObBS6sRoSxPs65nF5dfBvoBUSjkJNOBhYydtHBk/t733Ngk9kYs
         XjCSWXK+TKG5Cv/j3KvftYZnnMliCWaI0Q6bmeV8ODE3Pumj+/3tOGwjvw4LTpIkhD0P
         3JSU84hmzA//RRJkuqfcbz1nieTE88gzPJnZlBVq9R1z5FjAufMAdFC62wlPORw5a7Ma
         5MtQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6tRnMDj/rnZxz1LX5Eez5IhM38ZfEJTwKMxfSNmj7qW8PfVk4QnZ2wX0H7NtcAkeW6IvRm+rkVcpE@lists.ettus.com
X-Gm-Message-State: AOJu0YztNnq7iuwZ9YjWMv1mBYrSMBKriIC6zWO5GP8Crh1B6/DIKzVe
	ty/9rysUKcNeEs/2VSo2/Y0wZ3ASOnCoIEgeW8BjXfGEy9x7y37ldTvrindW03dvzj2jW/0xRbP
	3KgVdbiG2iGfSDOSS8vLbnkblWrchdjLl2PCzFIAu7yGX4tRD+4M=
X-Google-Smtp-Source: AGHT+IFScN2/TUOtGjyw9Ao+cB36k6POaIB9bXo4cJTwEIcyUBlA7MprTn9RIcePadFX8aeTghxiT4wjXkRk9DnLsBU=
X-Received: by 2002:ac2:4e05:0:b0:539:e6bf:caa2 with SMTP id
 2adb3069b0e04-53a1520be71mr7440016e87.12.1729584048719; Tue, 22 Oct 2024
 01:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com>
 <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com> <1595059048.6269059.1729267010623.JavaMail.zimbra@imt-atlantique.fr>
 <CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmail.com>
 <34fa686f-7914-4447-be55-f2f0c8fdfdef@gmail.com> <1599033524.6282335.1729268851631.JavaMail.zimbra@imt-atlantique.fr>
In-Reply-To: <1599033524.6282335.1729268851631.JavaMail.zimbra@imt-atlantique.fr>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 22 Oct 2024 10:00:37 +0200
Message-ID: <CAFOi1A79KRgidb=rQHyNcL7PDvaoTQ+o-TiDPD=G213g7q8JYQ@mail.gmail.com>
To: Patrice PAJUSCO <patrice.pajusco@imt-atlantique.fr>
Message-ID-Hash: D7XGC2NAJQEM4GOK5O5GAB7HQ4BGT4VM
X-Message-ID-Hash: D7XGC2NAJQEM4GOK5O5GAB7HQ4BGT4VM
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D7XGC2NAJQEM4GOK5O5GAB7HQ4BGT4VM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6696778024247858580=="

--===============6696778024247858580==
Content-Type: multipart/alternative; boundary="000000000000d5783106250c2a70"

--000000000000d5783106250c2a70
Content-Type: text/plain; charset="UTF-8"

If your input power doesn't vary a lot, and you can simply find a good gain
point that doesn't saturate any AGCs, then no RFNoC is required. That's
probably the easiest way. Adding an RFNoC block is not easy if you're doing
it for the first time, and you need some FPGA development experience. Of
course, if you do go down that route and have questions then let us know!

--M

--000000000000d5783106250c2a70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If your input power doesn&#39;t vary a lot, and you c=
an simply find a good gain point that doesn&#39;t saturate any AGCs, then n=
o RFNoC is required. That&#39;s probably the easiest way. Adding an RFNoC b=
lock is not easy if you&#39;re doing it for the first time, and you need so=
me FPGA development experience. Of course, if you do go down that route and=
 have questions then let us know!</div><div><br></div><div>--M<br></div></d=
iv>

--000000000000d5783106250c2a70--

--===============6696778024247858580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6696778024247858580==--
