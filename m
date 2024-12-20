Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C69AB9F91D8
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 13:03:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 673EF385BF7
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 07:03:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734696204; bh=wCCAPu8TrPWcrWAFuL0aCBHDD8aj3aMnStwN9vFtqgk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=b2LsN8OEZXRuCdbQ7XNL7gUb/xiUYif3skanI+s17IAhSR9TeDGU/VTTelVwbPVIf
	 w55JcTPGUy9h7JUZH3QfxGHQS+hl9qLmVSK4ri8GcML6HERjop6KjAq2oORMSde5bq
	 Qz0s+wYLnUA2bSbQpcecp8kG7vEF6+ONAGxYSXD9wcQrYN1T9RR27VtrLIy7DJT/5S
	 vIZGoYyzOXVrADqCTN3UJEfpA3hmPMbHowr/bwAYnVgeFOFTIfe5bqffjW/Wn13Src
	 E7gtzrcl2KAtKtooU4fjTBQ+b5B+qKnT4gXA3lFyLGpLCTxSBOHx+AAYPBg85ObSgw
	 sw5Ui69rFqs6w==
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by mm2.emwd.com (Postfix) with ESMTPS id EFB38385658
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 07:02:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="klO3L2G+";
	dkim-atps=neutral
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-728e729562fso1621949b3a.0
        for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 04:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734696145; x=1735300945; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=591ZT0EtrUlm13rg7dsb/eACT+/6aM7nE6B6NSNc2PE=;
        b=klO3L2G+vgOT2i9knevsAcswrKOcE7NVoE1NDPMfU7YadtzVasreSk19pf5uFI3fcE
         YcdtrnUEMI0WbvxYm26mv8WhhKxtu4L7H82JJzUmb0ngV3O8zPW+myK+5ydnJvabe7WH
         SoOz0o7epImg9Mrv32XN6VUZ23/xdFXQRUQox43KeKpyi7Je/0+Q2TNzF2NSWP55dzl1
         JnS93bFb9MLaXVct0uZyt8zhp7lwpg+8zzr1msbH6RRggjYpDAil+aOSAhalgIudN09b
         L7n603hra7/awV5KnMj3yMoa76ZWwPkOwOm3PPjjB3VvY68L+D0APOZ17JYGg/rzjqht
         I+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734696145; x=1735300945;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=591ZT0EtrUlm13rg7dsb/eACT+/6aM7nE6B6NSNc2PE=;
        b=I2PLuJ5b1oTeGbKUhaqYXhx8zCi8sv9PxhtOitKMYwBOKxK+fez+QTi82hTS7dy/3h
         +BICjszS8hMSPcUFlPYFJ9xQHn0A4hjrFQo/eCyvmA+qxs4Q2QgEhvnP0LgDnEg21lDH
         +Ea/R2ckGjno5OZyCZ1XJm/TLTXhFFsC2dt0OJyVZICwXFw0LlR111cIWXIq0Td9JiMp
         XcLFZcZsFB9+Vg6cWwUIjpsvfTXLipnnwHDGvEFJMGWiltH5cLPfWjvDrhJsB5UL6aEc
         cheoWjY/yGGQCUCB/XIOH3OwK/iU0IOqiBZEAZcXSDETgwr0h9Qgm4TPp5/joV2BrMS4
         PCvQ==
X-Gm-Message-State: AOJu0YyUCnjNbvazLTdjmxC3oMRN5c3sJKAlmWCR39j0Etk/1NEOGBz1
	ay3+IAh0+zu4wfnLWCb0cOII+gIzuPKlvgZR63jQPPdDn06owu6rcMHMGQvWh8tIJDJUzh5fRM3
	V/bgr4bbE47iEKcxlqvLKll4I/l870Q==
X-Gm-Gg: ASbGnctUuTqt8G/jCJ/G0KYZ6zs8zbzwO2LTcMAzL2tC6Zqb4IlEL88HxnC/Icu2z/e
	AzDudIt6jTmUCnesAL1rz+cuBhB4EatLM0UBmOCA=
X-Google-Smtp-Source: AGHT+IFvpZKVDZWQC1zuS3/02l4ZrgoIRSeJgXdEItHrjOJWmI4pBD6o/yZVioY9aRKRISVdI/DuXoiWv0gSCw+/POs=
X-Received: by 2002:a05:6a00:1702:b0:728:9d19:d2ea with SMTP id
 d2e1a72fcca58-72abddb2115mr3915740b3a.13.1734696145435; Fri, 20 Dec 2024
 04:02:25 -0800 (PST)
MIME-Version: 1.0
From: Andrew D <sciensfpgaeng@gmail.com>
Date: Fri, 20 Dec 2024 07:02:14 -0500
Message-ID: <CA+0p0ZR12K_ExioWxeC9yhXe-MUK75QqiNa0U1OvPwrFFb1i5w@mail.gmail.com>
To: usrp-users mailing-list <usrp-users@lists.ettus.com>
Message-ID-Hash: IF5ZXS5Y7W3SNIHW2DQUKUFVTNRKLF64
X-Message-ID-Hash: IF5ZXS5Y7W3SNIHW2DQUKUFVTNRKLF64
X-MailFrom: sciensfpgaeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410/RFNoC xsim simulation support pertaining to rfnoc, x410, and system verilog.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IF5ZXS5Y7W3SNIHW2DQUKUFVTNRKLF64/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0439371290155836178=="

--===============0439371290155836178==
Content-Type: multipart/alternative; boundary="0000000000008ac5590629b26b81"

--0000000000008ac5590629b26b81
Content-Type: text/plain; charset="UTF-8"

Is there documentation that declares which simulations are not supported by
xsim?  I have used build.py to produce modules.json.  I also found a git
issue that states the qsfp wrapper simulation is not supported for xsim.
Can you provide any details on the system verilog constructs that are
utilized within the codebase that are incompatible with xsim?

Thank you,
Andrew

--0000000000008ac5590629b26b81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there documentation that declares which simulation=
s are not supported by xsim?=C2=A0 I have used build.py to produce modules.=
json.=C2=A0 I also found a git issue that states the qsfp wrapper simulatio=
n is not supported for xsim.=C2=A0 Can you provide any details on the syste=
m verilog constructs that are utilized within the codebase that are incompa=
tible with xsim?</div><div><br></div><div>Thank you,</div><div>Andrew<br></=
div></div>

--0000000000008ac5590629b26b81--

--===============0439371290155836178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0439371290155836178==--
