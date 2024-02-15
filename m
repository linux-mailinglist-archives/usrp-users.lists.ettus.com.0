Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFFD85588F
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 02:04:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43421384A40
	for <lists+usrp-users@lfdr.de>; Wed, 14 Feb 2024 20:04:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707959056; bh=YQ0O2LTJc0tzMldBGuKVpzaZzyvYNYp7fqqvTkBPOvc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RYhWepnSegL7B6vZ0ZNH57XfY4bQuUDXTfusNagSrvGoLYFQqYTY1Jg6FWkwgCQ6J
	 7OCwyGNFiyyYhpzWmS+yVyPBVYBcwUnJ3PBBr9GlSXOiC9Kb9+TF9+CCBqx74UcoqR
	 ixOYsomvsJJrxsLCu3It3TnFg0jMhSXBV4Oaqa5G3iGaiCTyx29YiIF5nmuUiyacuU
	 urMtMVvDDtmiG55ZjV0Bcm1rEIzd8e44pvac8pJxnWiV2lSNfqVdgxLQBpn/gfdTAC
	 S1+tHCQsEOl/0Z+GFo9/07JiZaaEvL+o7vZzGNbWvBDfXnE5jmLcUWIHVIeTX5m4ax
	 JHrfjti2qtCMQ==
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 778EF384A0D
	for <usrp-users@lists.ettus.com>; Wed, 14 Feb 2024 20:04:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QnrZo2YH";
	dkim-atps=neutral
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-214c940145bso223868fac.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Feb 2024 17:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707959049; x=1708563849; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cwGfKTWrvPWeB3iuH/y0fUVx+sVXSQ0AZkEw+RnaLbg=;
        b=QnrZo2YHl8gwnpjt1NkM59mBq0kz0lEcnxKGAeuewNheQNDHSWraT2a37GgURnrBhF
         /N1uZGNI8GyPgGPkH1HK0j3fJ8lC99NXQS+gVRM0hyFSUEllKToI4rUPEixzOqwLfpOa
         nJ3mknlHnQ3+syCzsja/LrbwfxY0xCVvqUsJOJDYj2LnVbl/pFHYHptglRl40F46W8au
         IQ8nhSqYFG65a2L3lCX7FWSg4SonNf3D5aXN6uvGOOmvCWd4RZ9cT4xo5CwxLV9Ww84Y
         tgeEQvEFvgibWj5MIn8w8JLsO88lu1z29fwx5SVN74F6eGXmLnK4k+1NbLI7g2Xkfsah
         4YTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707959049; x=1708563849;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cwGfKTWrvPWeB3iuH/y0fUVx+sVXSQ0AZkEw+RnaLbg=;
        b=ZJY9vbxWtvOStcp+i07tXgtM8r12/TLRIDZGUl2rfe2BH1p9czEHBbOsDLy6uviZdi
         Iyb+4DcIK8QLxQNE8DuTLrGvxKe8VRoE2EkkcOI/FwS6DWDU3n8XDmmuCAbm9cZFCWYP
         0+H2ey2oRyuoQalj0d3H1eDbpAR6ex1B7JW0+1ghC1aqtyp+zl9oO+cnLiLLhivpQi7F
         r9gyutDdygowPsdXg4Li1XEh+sPtRkKfFLBxwPi8GTiuW1huci1zC0/zQQVoD3pDhRR0
         oa98E7WH+KATENoumoj+YWVJuBlFPIz7PtkVmfbvKcyARFNJ1836BMNbeDifo2aeebd3
         ZPoQ==
X-Gm-Message-State: AOJu0YxRp6ysvDLSppNTXhxJ6A9cvyu3JpqvA0EZeetPXFXetlE+bE38
	32gsHcDmYfMQMPPNP3zQYUOTU1FW7hs3RzM68Bfgf8NF6Qu1x6CuDcPOBq+UC8y8xF2yCR2IcHr
	BJba63P5iHpDG8Wtd6Rl5p8CHlxNpZPc/elg=
X-Google-Smtp-Source: AGHT+IHqek7GSjDpKHzm6qfT2ImUFteejuKfzfZ3THRjqF4UJyq0WEvOjQJyw8fYFr4NcHPenobUxK4neIK31vSxEA0=
X-Received: by 2002:a05:6870:d622:b0:219:3e9e:f69b with SMTP id
 a34-20020a056870d62200b002193e9ef69bmr236185oaq.37.1707959049530; Wed, 14 Feb
 2024 17:04:09 -0800 (PST)
MIME-Version: 1.0
From: Steve Hamn <stevehamn311@gmail.com>
Date: Thu, 15 Feb 2024 01:03:59 -0800
Message-ID: <CAOYGa71Nf-o-kKYZBq-Oap0PAfjGR=rjOy6Fsjbp0O3SyYFnmQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: NSCKV4ASAANODK7WPQRVC7FF7QRUGSB2
X-Message-ID-Hash: NSCKV4ASAANODK7WPQRVC7FF7QRUGSB2
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GNURadio MPM major compat number mismatch after update to UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NSCKV4ASAANODK7WPQRVC7FF7QRUGSB2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8344036077392768611=="

--===============8344036077392768611==
Content-Type: multipart/alternative; boundary="0000000000007034640611613458"

--0000000000007034640611613458
Content-Type: text/plain; charset="UTF-8"

Hello,

I updated my N320 to UHD 4.6, however now I am getting an error in GNURadio:

"*RuntimeError: RuntimeError: MPM major compat number mismatch. Expected:
4.2 Actual: 5.3. Please update the version of MPM on your USRP device.*"

Any suggestions on how to fix?

Thanks,

Steve

--0000000000007034640611613458
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>I updated my N320 to UHD 4=
.6, however now I am getting an error in GNURadio:</div><div><br></div><div=
>&quot;<i>RuntimeError: RuntimeError: MPM major compat number mismatch. Exp=
ected: 4.2 Actual: 5.3. Please update the version of MPM on your USRP devic=
e.</i>&quot;</div><div><br></div><div>Any suggestions on how to fix?=C2=A0<=
/div><div><br></div><div>Thanks,=C2=A0</div><div><br></div><div>Steve</div>=
</div>

--0000000000007034640611613458--

--===============8344036077392768611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8344036077392768611==--
