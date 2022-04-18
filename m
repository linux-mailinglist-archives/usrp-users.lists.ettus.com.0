Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B97F6504E99
	for <lists+usrp-users@lfdr.de>; Mon, 18 Apr 2022 11:56:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EE253844D4
	for <lists+usrp-users@lfdr.de>; Mon, 18 Apr 2022 05:56:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650275808; bh=/lt7A9wPFxgCLiYk56HVAY5Ihk5UrAYvNtYnGK5bFAU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BdknSbjKqBP0PwmY1y8WUWT0/e+KiQG/dEhakabII5hB8+U6HXAoD39iE0vJVqV+Y
	 Q0Od28iVs+8ZJjOcvIEDArSbvI1k1WNEe4OPESwrTcKxwZlEHPQJw6Zm24r69FqGBa
	 aTz01FX14XHulCFVW9a7EmNEBjoK8TaKfPzDDnRheYzo9Zvvra+9E7L32q8iDD/7V2
	 9MGxqwp15CCXHC0mD5AzoUdzb2XMbkXBhabcHCKfz83MbWeyLLP4spB142zOErfQSW
	 64On7SyDQcx2gPYhLnTmGcpleVQvZxK0c4el4cnMVKuwlqUkJ3Svr3ocIo7uuIuoaY
	 I/CdjxdA/jQQQ==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FD3D384556
	for <usrp-users@lists.ettus.com>; Mon, 18 Apr 2022 05:55:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bPiBnT3T";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-2ef5380669cso117783917b3.9
        for <usrp-users@lists.ettus.com>; Mon, 18 Apr 2022 02:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=kMKp0YFDxW2koJpZyw4ChxAfGhvqpQlcopG0QP7z/eg=;
        b=bPiBnT3TnYU42D6pkhCu0nKjRl9j3ZJoMmLSqrTEcjv9UpM/9yEWakKyJEV09dE/GE
         ZWYRA3RnfANIaKJiz6ftv5om2m0dEgvUL5EXIs9pwssSNogiWKvWVR8WU8DaJmwf6cao
         1w5DWSbKvtB87fulXPN0M2dTCUnwMzN15x+pwFWTm6mf6u3S64P9d+QmtwvsUxqFV5Yb
         ur5ESSPmyMd83uPH2Ps7ETb1ft408ZlKLpcMBxRgL3Lzge3ALbP0z6nWJlQHwQAjKKS7
         tyarzeIUwbRJjoAA8RdCnk7A3j032sZpIgtiGAydcUDoHxZqkpU4F4XiiQZgC33EAfXv
         YiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kMKp0YFDxW2koJpZyw4ChxAfGhvqpQlcopG0QP7z/eg=;
        b=d/bkKm1DgE0kJIwxZWBNZ+elHjrT4PH+MnhEql7q5HJlHTlriBXSN03BfXNZBet7V9
         aZXZrEqrK4aNUFnRS7lN61RkqqbQHt1Gkii5YrHSrZ8UAFm3GLn30qiQxoxBVanGzYq7
         gFONr4iIsRDjHP1lmm4XGcCfC966ccNX5uP3ei+D2t2HfiBZYwc9QNV2MnGe+DTEq5Ly
         ZRk+60bvdPAi3QvfC9n+3XCC3MjatRVwqva2fT54OKNbjwvNeqPtpW3OuUHOZxLY9X8F
         nd6yw7qrsMUIcT1SsICCEE/ONBmTmNpatvWgNsAkeClPo9mDwwJU0j+WQrEhVXJtdkPh
         UrfA==
X-Gm-Message-State: AOAM531Q8XofknbCxxvjgJEw8AmuBK+htV2yj4OjvPn142erAUUUBfBT
	NtlGpKLz7VbTKbUNvoMblmrgm5/6fO1xop/0OHYnxpWCA+bYFJjfUsM=
X-Google-Smtp-Source: ABdhPJyasgwzFrDNVTCt6zxPOWkx6VVl50Q7Wzg2LehKkRGTQfDV/eFn4looTe1jfDWbleUqMyhskKEIeigEUt4O6Hc=
X-Received: by 2002:a81:11c7:0:b0:2ec:4a58:4bf1 with SMTP id
 190-20020a8111c7000000b002ec4a584bf1mr3762138ywr.262.1650275741843; Mon, 18
 Apr 2022 02:55:41 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 18 Apr 2022 14:25:30 +0430
Message-ID: <CAA=S3Ps2J3SrReyU9v2PODR26qeF5NN8AFQ1sSV8zdseSZKZHw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MCKEGLXQ6S24Y2PICOAILNCHUO2MVQ2H
X-Message-ID-Hash: MCKEGLXQ6S24Y2PICOAILNCHUO2MVQ2H
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why include a Verilog file not work in the RFNOC block?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCKEGLXQ6S24Y2PICOAILNCHUO2MVQ2H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0005741791146060152=="

--===============0005741791146060152==
Content-Type: multipart/alternative; boundary="0000000000005fc4cb05dceac3a7"

--0000000000005fc4cb05dceac3a7
Content-Type: text/plain; charset="UTF-8"

Why include a Verilog file not work in the RFNOC block?
In Verilog, we can include another file in the source Verilog file, but
when I did in an RFNOC block I faced errors...
can you any offers?

ERROR: [VRFC 10-3195] cannot open include file 'corrleate.vh'
[rfnoc/rfnoc/fpga/rfnoc_block_correlate/rfnoc_block_correlate.v:26]

--0000000000005fc4cb05dceac3a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Why include a Verilog file not work in the RFNOC block?<br=
><div>In Verilog, we can include another file in the source Verilog file, b=
ut when I did in an RFNOC block I faced=C2=A0errors...</div><div>can you an=
y offers?</div><div><br></div><div>ERROR: [VRFC 10-3195] cannot open includ=
e file &#39;corrleate.vh&#39; [rfnoc/rfnoc/fpga/rfnoc_block_correlate/rfnoc=
_block_correlate.v:26]<br></div></div>

--0000000000005fc4cb05dceac3a7--

--===============0005741791146060152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0005741791146060152==--
