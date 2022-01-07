Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0624878D6
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 15:21:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 040E0384E33
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 09:21:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mslm8pD8";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 637C6384A52
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 09:20:47 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id p15so17070431ybk.10
        for <usrp-users@lists.ettus.com>; Fri, 07 Jan 2022 06:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=BJ3CvWdFK8GiRxdlzwbgwQpkHXr2DAvgpZ0aXoDohCA=;
        b=mslm8pD8umRYoQlAEI9VYX4fJzjjDfUI8arStqfpcvQDSDJbYapxS+OvIGMMKsQ6Xy
         gmAEGKfDj65mqaS/wnsWYx7dj0pruLztkkmdzI0gCOY9nHvJluqYQsKnDnPXpRcFdX8Z
         Qozn5+h17WYdP7BuKjPb7a+ZKUnlhVqGrvTDmNE7QOj+ndSXDmBiWXY2aQAJ1Ty+8kSd
         EaVcqOGkAxARraxmMlQ80pkq0/En5cbsJiEvm2IVcDF2aPKWeJYQUSiAw3k/Rjj3nxyN
         d/H0x+6pT90+q7Lf9+sOKvfxSleqlrYL8b7Mw0XLVlMxDZbFpDqktsPtD3hGLIvpY564
         0tow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BJ3CvWdFK8GiRxdlzwbgwQpkHXr2DAvgpZ0aXoDohCA=;
        b=Ee7ZfWp/xHek5JdY9ZvAlWGk1QYsHS0aWjz9YM1RhPC3aSaba3rTObPTWkzZNR2XOP
         OrKO/MXKX8GB6BUUzO3HVHuiRi3GI+vfImr6oj6Jqq7fh1vHo2pmguJRONDfG1YM0kG3
         FJNEu3pL/HQnCNWNiV1DfHoJ3Oa7oAQPMkH0w1C1hAerh6BSI77oJl/lfpabguTZeSth
         ch2au65AGS2Z+R65DTKIl70sRb9ZmNxb2skuR2l3sAHPw4+JzIh/axYkqJsm3jDeC3Zd
         ts0G0QPpXL9aN1+5MXXyFecdaLwpWPcg/HxTLXHvYZ0uR90aspLZHBmTpT5TOf41LmZc
         pSAQ==
X-Gm-Message-State: AOAM533tNIU/+jM31vvYIG988lAWKlCkFP3DbwAAylLYFj9EvViLyonW
	h5DVQ9qKpwIojZH+WwF5B4gaTIiWnwrYAFWqKs3A7R20uGEpNDbK8Kk=
X-Google-Smtp-Source: ABdhPJzhqV6ShFLa3pNx+HDAMfo+EVvJhGpivpZJj87v8Lf4TRuTPPux2A98GWPJ06nhTdhRXjnmA3xFtghZa398RMQ=
X-Received: by 2002:a5b:590:: with SMTP id l16mr6804028ybp.717.1641565245878;
 Fri, 07 Jan 2022 06:20:45 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Fri, 7 Jan 2022 17:50:33 +0330
Message-ID: <CAA=S3PttH=YrGduoAwVbx77Rur2cVTFnMwSCNwJKzoGY2iLFZQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: HQAMXXCKA3KJGW77QS4DAYGSOHUZ34YC
X-Message-ID-Hash: HQAMXXCKA3KJGW77QS4DAYGSOHUZ34YC
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How I can create a correlate RFNOC block, I need a where that buffer radio samples...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HQAMXXCKA3KJGW77QS4DAYGSOHUZ34YC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8890616662947137941=="

--===============8890616662947137941==
Content-Type: multipart/alternative; boundary="0000000000005b355305d4feb16e"

--0000000000005b355305d4feb16e
Content-Type: text/plain; charset="UTF-8"

How I can create a correlate RFNOC block, I need a where that buffer radio
samples...
For more information (time-domain) correlate formula please refer to the
below link:
https://en.wikipedia.org/wiki/Cross-correlation

I have a reference signal that should be correlated with the input
signal received from the radio core(In USRP)...
It is possible to buffer radio samples in RAM for some operations???
any idea that I developed an optimized RFNOC correlate block?
I don't use FFT for correlating, I want to do it in the time-domain
method...
thanks in advance

--0000000000005b355305d4feb16e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How I can create a=C2=A0correlate RFNOC block, I need a wh=
ere that=C2=A0buffer radio samples...<div>For more information (time-domain=
) correlate formula please refer to the below link:<br><div><a href=3D"http=
s://en.wikipedia.org/wiki/Cross-correlation">https://en.wikipedia.org/wiki/=
Cross-correlation</a></div><div><br></div><div>I have a reference signal th=
at should be correlated=C2=A0with the input signal=C2=A0received from the r=
adio core(In USRP)...</div><div>It is possible to buffer radio samples in=
=C2=A0RAM for some operations???=C2=A0</div><div>any idea that I developed =
an optimized RFNOC correlate block?</div><div>I don&#39;t use FFT for corre=
lating, I want to do it in the time-domain method...</div><div style=3D"tex=
t-align:left">thanks in advance</div><div><br></div><div><br><div><br></div=
></div></div></div>

--0000000000005b355305d4feb16e--

--===============8890616662947137941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8890616662947137941==--
