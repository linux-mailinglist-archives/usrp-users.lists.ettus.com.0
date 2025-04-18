Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A8BA93137
	for <lists+usrp-users@lfdr.de>; Fri, 18 Apr 2025 06:38:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 547FA38613E
	for <lists+usrp-users@lfdr.de>; Fri, 18 Apr 2025 00:38:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744951113; bh=chRdphMsb/HLaVO86UvjJ4cCvle1Taqx0G/OF7uGzdE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=B3N4nYrL46T+ShR9n3AzrrGHxmdgpU9bZViM4qdpARgfsUTOMFUc7VFC4gZ7tp17c
	 BuwcRH+cdOrd5PYXGP9JoKEVsHKBHv9W/MDQiB8IZrhIRl1gDHQaJC08FCjCqGnz12
	 Lyciust5dOXsJfVpxuFIXZV3+GDkYILZ7DcyQ7f501fE/1JoC0J6F6Ilby88yG+0oY
	 TTsBI6xatnRI75AyuZp9lBdTAgWP6hEEctYYGTymzGDopPOv44qplpnp1OUz99H6ik
	 SZG3INa/y8L33mb7E7i47mv8+eDws9BLRcLb0CQqobXqKnKjGNYxpJVLNN9EfzYV+A
	 wdrl+OYIKLnvg==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C12B380864
	for <usrp-users@lists.ettus.com>; Fri, 18 Apr 2025 00:37:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dtqoryov";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5edc07c777eso1913625a12.3
        for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 21:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744951073; x=1745555873; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nOn6xhoEs9gTrPwN+11hPt9H50unNn8ChJvNFlRC8J0=;
        b=Dtqoryovw2MSxYZ9SMQ4uYphPMwV899mip5YFnCOzkzoWHj6t7jRQkPwCDJGiQ8V5E
         c5TSzt/1Tg4AbwA1pqmF38A742T9D90tNmon99IJc578plau1QY2CLtDp6ZmYfyAykKE
         6KKR8fni255uo5eVIkZdBry9UnWGWxXccBpHNovc/PhTBLzdSFFQYNBK9s3ZR3oBgv/m
         knII1BguLIEZ8e4MaCWdX1tIkU9jlJ5rMiwhClSeFMNQQbj6zJ9qkP9ukk4LsPj51ptH
         UoRhDhKjJSSOiW3EcMjjE5QqEVmG/fCADa6YGPMvWEpfjawZN0fH6FaJ9JJI3LCog+lG
         ktYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744951073; x=1745555873;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nOn6xhoEs9gTrPwN+11hPt9H50unNn8ChJvNFlRC8J0=;
        b=OZiWnxbJxUu47J3Bt5M/EU8KcD2mj1tnrMSRp8QMBlw5he2dPlAkHjZUlribZMcLTp
         Zu4etnYj0BHDgW5cmIQ+oWI31xNdxgBBquEUrCpNmokkVleI1uuv8tMx4htKV2yzXFpH
         6oF/T5H8lm6mlImYPL+ujXJ0xmzdgOx8LwPmU6QssN1BC5ay+ehSipYfz4e6yf1Zo1VQ
         gnrfr0/oArMlzy5ljup1B1uReQYH+q1cBqYOncAchvT73mNOqpXWS3V+IQ04nklgO/hL
         F4Cvpf4fMJeyfJGp76pa1daz3/SfmN3v7+O8koKEznAlY8qAoqPkrhEHxBEzxbNx72P9
         EQGA==
X-Gm-Message-State: AOJu0Yypo/Lgj3tBWeejZb4ZNE0YW68PbSbf4GsnTq32q7wuz1SmkfF1
	LECYM1KgEocYJRTaijv1pC/TjRXQBewpZ8CQ7T3yleiLIoyk2FYxYxrya5N1/4GYbOPL5VJci4X
	BpK6XyTt/EnzSV0ZSN1s+/ZPprWX2eg==
X-Gm-Gg: ASbGncuvjN+spA1jcxaHCGaqST5CvSN2xS2brEsKFWSTYwXZ9PAacZQ47vQP51gntph
	fzgXRlLYJYkXuxk8IQPl9SS9yUFbUJWMRWRhtqIjA+sG9ZEyQq8PgIVLTsbAwn2PGSaBQesPq9i
	OE7qbn2oNGQtMm2jR40ECzIQ==
X-Google-Smtp-Source: AGHT+IFcgjonBdhnzLp6WnI19ZmMCRGJntAbiPVw9ZcDC7kjmmKnUAK5QIUK+CyJAjF5oRa1HA+BsMRI5uN8RSaIy6I=
X-Received: by 2002:a17:907:97d1:b0:ac3:4226:d40 with SMTP id
 a640c23a62f3a-acb74ad9670mr102608966b.12.1744951072437; Thu, 17 Apr 2025
 21:37:52 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 18 Apr 2025 00:37:41 -0400
X-Gm-Features: ATxdqUEWljXEShXtH_PJBfALkaUwFcK5bJ6C4asw3rd5Qsfk1O9iC03jTDIBywU
Message-ID: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: PTXVUB7BMXT2OQEXB5S4SFE26N7BEZM4
X-Message-ID-Hash: PTXVUB7BMXT2OQEXB5S4SFE26N7BEZM4
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PTXVUB7BMXT2OQEXB5S4SFE26N7BEZM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4132453568123688662=="

--===============4132453568123688662==
Content-Type: multipart/alternative; boundary="000000000000d2bf400633061495"

--000000000000d2bf400633061495
Content-Type: text/plain; charset="UTF-8"

I have a design for an X440 that wants to have 128 virtual channels for
each of the ports of a 4-port block.

The VC field in the header is only 6 bits, but the DstEPID is 16 bits.

Is there some way to let the endpoint number be shifted up in the DstEPID
and pass through the bottom 7 bits? I'm using the chdr_to_axis_pyld_ctxt to
separate it out, but the DstEPID always seems to be 0 at least in my
testbench. It seems like maybe the EPID is dynamically assigned during some
type of configuration stage?

I guess the other part of this is how I might be able to craft a CHDR
packet on the UHD side of things to send it down to my block.

Can a block have multiple DstEPID's assigned to it?

If there is another way I could get the 128 virtual channels per RFNoC
block port, please let me know. I am very much open to suggestions.

Thanks,
Brian

--000000000000d2bf400633061495
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a design for an X440 that wants to have 128 virtual=
 channels for each of the ports of a 4-port block.<div><br></div><div>The V=
C field in the header is only 6 bits, but the DstEPID is 16 bits.</div><div=
><br></div><div>Is there some way to let the endpoint number be shifted up =
in the DstEPID and pass through the bottom 7 bits? I&#39;m using the chdr_t=
o_axis_pyld_ctxt to separate it out, but the DstEPID always seems to be 0 a=
t least in my testbench. It seems like maybe the EPID is dynamically assign=
ed during some type of configuration stage?</div><div><br></div><div>I gues=
s the other part of this is how I might be able to craft a CHDR packet on t=
he UHD side of things to send it down to my block.</div><div><br></div><div=
>Can a block have multiple DstEPID&#39;s assigned to it?</div><div><br></di=
v><div>If there is another way I could get the 128 virtual channels per RFN=
oC block port, please let me know. I am very much open to suggestions.</div=
><div><br></div><div>Thanks,<br>Brian</div></div>

--000000000000d2bf400633061495--

--===============4132453568123688662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4132453568123688662==--
