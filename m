Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9734C953B1E
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 21:53:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71E6938579A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 15:53:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723751592; bh=r/Snf8ZO0wZK79p/5lqcq5S5nQRY4bNj6EAFhViRkwo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vKdlj2PRYeEwX8+q5+FTeid1jClrh164XqItOD0+ZMloaSrHjh4E18ru3OYFM1xQy
	 mneF1UwvYuDShWuG272qwCykHLr1ueWv57SeRUf/lVAM8vjaz6z0s6yaDRhc4VdJG5
	 Xt2cOWTv/w/9Z1k17S7LURGBmPgtyZ0Bqz9CpJwwdSEnEI23T2wzoc8DWNvyVHId3S
	 +PJKDPlX0Y23GzzMOk9G1tRM5tftlCkfsigVt2uCfrJw8eXn34LWFiJ6lVnRWN45Io
	 FNCmxO0FTruRJ1aKZA2cCvh7a7l0LlyPFNoT+kNxFup2r+MIX5N2psxtAobqkd4Ze/
	 i5LWZeYHL5RWQ==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 03EC3385571
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 15:52:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="COD3UC4W";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-66599ca3470so13035147b3.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 12:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1723751578; x=1724356378; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SyNKsEyInHh4pDpQYEeURI3KqSDrFCl1xH4+CvIPYIA=;
        b=COD3UC4WD13BJQw8ynz71G0vzJr6NDqRQqYbrIUW+ZTEIuq7evmHjVBZIsLmg2zrNI
         h0iXugCYxlDJPwa+2EH0NCcC4IPOOl6XVufoxKcy4sQ+feeETnXFoDIltgkzEpIADhcD
         jgYYMQwZttkh+y9aFQzlc3ws8zpwqXnUDRkBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723751578; x=1724356378;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SyNKsEyInHh4pDpQYEeURI3KqSDrFCl1xH4+CvIPYIA=;
        b=EpYfok2Oz462f8BFXizt249NMBpstGav2ctI/9QuKpU8IDvMraHshqNZl0xN+HZUVI
         QvABUV8imUJG04eIpyxqw1ssFFlMhsGx/QMqruXARvdvdpRvk4ujWCba5ZcXVIPBOW8T
         afrmJ22NfXVtREuc+bOy/YbOBfS0n7c3MylbRzu8OrJw9eyRDU9+ZGk5q/DS8ZgaqsgG
         yg45s9Psz4eOFZgFUcPl1twIacaTiyp05ygk9gLhdNBTcw0RZQ5KEAHqfXaqEhBXDdp1
         6MtGnz00diReHAgGlVJn6fyJB8DuiG5rhLMa4dVi7q5tzM1y1B30rBYOks2o6k8+U2ap
         XdEw==
X-Gm-Message-State: AOJu0YxOyjBo97/QJ8UwlSjCOqs10qQd9Xiv9sBIDIU6QUL3DwlLQxb+
	s0sqynaTXKmgWZS5pSZNcdK5vkQVG+gKgVyeWf1U3PqYbz6EVNxGkXSF0lh0rADj6ISU3yH2g19
	C17ZZ0a1WK83stc/NSKAtrYa14BudLX9aaTp8HUg80/XKHF5CjVk=
X-Google-Smtp-Source: AGHT+IG+pap/EUT+UQ/dON3yI9VmXieQ/7j4V8U6z49XCNNDOr0KstZMJQhqkR/t62uAJI243CvG4hjjCDsm1EpJy4M=
X-Received: by 2002:a05:690c:91:b0:65f:a0e5:8324 with SMTP id
 00721157ae682-6b1b9b5ad54mr10724247b3.4.1723751578017; Thu, 15 Aug 2024
 12:52:58 -0700 (PDT)
MIME-Version: 1.0
From: Ekin Su Sacin <esacin@umass.edu>
Date: Thu, 15 Aug 2024 15:52:47 -0400
Message-ID: <CANwDeJYL6fQ6Uso9=xOGhWaMhG+L-VjNn4ZBX21E4Kd2R8Q3PQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: G6E2XVVD732NS724XC33DPLMSIUQJWUJ
X-Message-ID-Hash: G6E2XVVD732NS724XC33DPLMSIUQJWUJ
X-MailFrom: esacin@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue with KeepOneInN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G6E2XVVD732NS724XC33DPLMSIUQJWUJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3642077880016324540=="

--===============3642077880016324540==
Content-Type: multipart/alternative; boundary="0000000000007d3904061fbe30d1"

--0000000000007d3904061fbe30d1
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am working with USRP X310. I am trying to adjust the 'N' value for the
KeepOneInN block but am encountering issues at the application level. I
have defined my usrp device using uhd::usrp::multi_usrp, but I'm running
into fatal errors related to <uhd/device3.hpp> and
<uhd/rfnoc/block_control_base.hpp> when attempting to use sr_write. I am
currently using UHD 4.2.0.0. Is using
<uhd/rfnoc/keep_one_in_n_block_control.hpp> the only way to customize this
block and is there a way to do that using a usrp device instead of creating
the rfnoc graph object?

Thanks a lot for your support.

Best Regards,
Ekin

--0000000000007d3904061fbe30d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am working with US=
RP X310. I am trying to adjust the &#39;N&#39; value for the KeepOneInN blo=
ck but am encountering issues at the application level. I have defined my u=
srp device using uhd::usrp::multi_usrp, but I&#39;m running into fatal erro=
rs related to &lt;uhd/device3.hpp&gt; and &lt;uhd/rfnoc/block_control_base.=
hpp&gt; when attempting to use sr_write. I am currently using UHD 4.2.0.0. =
Is=C2=A0using &lt;uhd/rfnoc/keep_one_in_n_block_control.hpp&gt; the only wa=
y to customize this block <code></code>and is there a way to do that using =
a usrp device instead of creating the rfnoc graph object?</div><div><br></d=
iv><div><div>Thanks a lot for your support.</div><div><div><br></div><div>B=
est Regards,</div><div>Ekin<br></div></div></div></div>

--0000000000007d3904061fbe30d1--

--===============3642077880016324540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3642077880016324540==--
