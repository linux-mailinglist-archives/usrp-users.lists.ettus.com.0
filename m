Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F637E0AC1
	for <lists+usrp-users@lfdr.de>; Fri,  3 Nov 2023 22:40:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E242385349
	for <lists+usrp-users@lfdr.de>; Fri,  3 Nov 2023 17:40:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699047630; bh=tmjfeahDQh1vV9zvp+Sg629jje6TUaToP1AFMLwSDvE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SYa8Y/6UuxkWDvyZ2tmrwWLr7lGL7CcxdkAnvl6oTrxqVJt7aGNqHMAwbW9kuOKAn
	 p6pNZV0QOFo5hyhma1ptfKynM29CYLXM8EJDzjhA8JhurxmMRc7OC+pLOWJbk+nsJi
	 a4iIrGVI86Dn05hiq9JiYs3RRsmz4S9mVsKofMitrdiGsBTRAh5HcNO2mL+YyxEg+W
	 mGD0IfddxDkGwaAHhGo7DAuDutVGEXJ4dvO9ZNZWG5iXNUp4A0BVyH4zE1maAt0LYY
	 saRWPnqccygymn4U6jaWtLWxKKBMhyBDRzajJPHUNQuBVr3tYLolqcWAUy2s9s/8Oh
	 3T4CVzwDLjI5g==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FAB33850D1
	for <usrp-users@lists.ettus.com>; Fri,  3 Nov 2023 17:39:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="TIR550dT";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9db6cf8309cso350949266b.0
        for <usrp-users@lists.ettus.com>; Fri, 03 Nov 2023 14:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1699047576; x=1699652376; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/dlOFuOzLySG2h/vxILbEyJFwc9ZC4MAV3IiMNG4zdU=;
        b=TIR550dT/ESrAhyduaYy2MKGv66ygUTbbxqwK2N7DSAipq+X8fmy5MBz3ItREfJH76
         tQfAWqjaXJvZCFKBza2XIJ+pHCq63H3hrV2oniS/doRw3qOIeZ7qS/eWEt4bmLC5Yszv
         iU+ZNXjpA3DZyn4X3Idud+SfJMepwCzyBDWqd/JBrdQtFWmZYGP8Jyv59WT6kPvmhuDP
         32GaGIEUA4X6Q1f02+jRzscFsh2dfVLsn/IZc5alWi5V6kqSN0tnBvdv1oqAXHcH2+PQ
         WQcUa4muxmYACy3CnQ0PXZ58WO1v/aEDw24tAX2hY/4QKcC1znIT2dFC1l5esdcK6J7U
         Pdjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699047576; x=1699652376;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/dlOFuOzLySG2h/vxILbEyJFwc9ZC4MAV3IiMNG4zdU=;
        b=XNefEVZSK852DROvpcZCKEgNj7+Q8W4/EMv2c0xkdyFdfnIr/q+fJifJroZs20PXD1
         RufnVTCi5qysBeJXrthAkRbkhcgeg/kCRWzGVTdlAk9hmW+TCLxii+ftYYSBAxhjFdXg
         Nuo2j+upXPNtH1Lb9crFPCCUxSkeq9c9me3e4rlvA3pXIntCxlOMq3L4brEGj9Jl9jyQ
         XHFpd0sE/5QAMZZAp4ZfXn/tDB9BUJdjhLhtH+3RToQ1Z+KAoVBQ6eIztLZtR5V4KkBj
         N6Boaw4SdC1p9WpN6C7Hh38IageBlb3iPrYG4X9BWW4yqTZgnw/bsiGNMgsSDDcz5Hf4
         eSPw==
X-Gm-Message-State: AOJu0Yzas+zHBbv/eqG7RzvqTBeePN8ARuRTmTmReVmlldCa/H/HS8O5
	F0j5vpD6XUDvxlsh/y+0kO0sGmqAZRvnb2XYN0Hmd40U
X-Google-Smtp-Source: AGHT+IHqfoabFIy0Pu2xOxz6pBXzVqvxXawV0PpgNyY2oBwS/MowWyh5JHxNGu5uQt9+XkTeigw9OiRmEyS2OTVS7WQ=
X-Received: by 2002:a17:907:806:b0:9c7:59d1:b2ce with SMTP id
 wv6-20020a170907080600b009c759d1b2cemr8095126ejb.5.1699047575893; Fri, 03 Nov
 2023 14:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE@lists.ettus.com>
In-Reply-To: <Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 3 Nov 2023 16:39:19 -0500
Message-ID: <CAFche=jD=F+V_8h_6ZtZ5N8BLOBfq_3u=y958TNGRXkfm39rSg@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: FSMLJGCOWFBCHWNFDTJUNUB56EV5ZZXK
X-Message-ID-Hash: FSMLJGCOWFBCHWNFDTJUNUB56EV5ZZXK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC TB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FSMLJGCOWFBCHWNFDTJUNUB56EV5ZZXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0586105790581697633=="

--===============0586105790581697633==
Content-Type: multipart/alternative; boundary="00000000000037cbae0609465791"

--00000000000037cbae0609465791
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You would need to replace the code that writes to the DUT with code that
reads from your file and writes your data instead. Similarly for the
output, replace the code that checks the output with your own code to check
the output and/or write it to a file. My guess is that your changes broke
some assumptions made by the testbench so an assertion is failing. You'll
have to look at what is failing and understand the root cause to take
appropriate steps to fix it. You can add or remove the assert statements as
needed to do whatever checking is required for your application.

Wade

On Fri, Nov 3, 2023 at 6:49=E2=80=AFAM <adri96roll@gmail.com> wrote:

> How can i do that? i have tried to read a file in the process but the
> simulation failed. Can you give me some advice?
>
>
>
> Thanks in advance
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000037cbae0609465791
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You would need to replace the code that writes to the=
 DUT with code that reads from your file and writes your data instead. Simi=
larly for the output, replace the code that checks the output with your own=
 code to check the output and/or write it to a file. My guess is that your =
changes broke some assumptions made by the testbench so an assertion is fai=
ling. You&#39;ll have to look at what is failing and understand the root ca=
use to take appropriate steps to fix it. You can add or remove the assert s=
tatements as needed to do whatever checking is required for your applicatio=
n.<br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 3, 2023 at 6:49=
=E2=80=AFAM &lt;<a href=3D"mailto:adri96roll@gmail.com">adri96roll@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>How can i do that? i have tried to read a file in the process but the s=
imulation failed. Can you give me some advice?</p><p><br></p><p><br></p><p>=
Thanks in advance</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000037cbae0609465791--

--===============0586105790581697633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0586105790581697633==--
