Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA464BD975
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 12:36:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C4BC384BA4
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 06:36:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fFG2Ycj/";
	dkim-atps=neutral
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id DCF1038433D
	for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 06:35:42 -0500 (EST)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-2d62593ad9bso134367157b3.8
        for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 03:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/rUfnigQqQS9lARWEjwFfjU75dKRnWq4E/oxpeT5Pm0=;
        b=fFG2Ycj//3XzAWy8M3cOvQu9kTieaa4xVrrgmqjZSULKmK8jPt6d6rnqXbA8P9VjOD
         jgm2atW/ofXg8aUI4Tw7DUi6wb30rWIlYONhRboD9+kokcJDDCybm6R4WfonFCLSD6GQ
         oT6jPtwjOusVDDevgSBFWgkE56sttu4AcWtVjXbdbFPhZUJc5r9m5r/X2LLaxYMvGOux
         2yeGCcthtcAeQ5tHWu8zFNbFkwN+jmytF/D9TG4yQ2+uvl1hnjaPfWOfxzRw1aGg/c8Z
         ceKFd0L6k89jABdzQD5syuwmtwJTzkW45uLWzdnU1PWS8co7LkjwJjXJlmqgoATHE1iZ
         JkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/rUfnigQqQS9lARWEjwFfjU75dKRnWq4E/oxpeT5Pm0=;
        b=E/kLFCfr8O+Hqq7aXEv1+QnQNAafcv+T6w46EAdRrvdpP2Z5TETBop8US8bgnGn1Yz
         jFL5SjwQTDtlSn7GexmhUDQXyIWpVpyKl858CYIiOmVkwN6izg1ZyDQIfUaNp5SJNXHi
         LptTyBaXaUkfXc+wnZInFMVQhCxGYuhd3B/nC4seB/9jjFw7R+cxmg8ljLYogR8O9/Bw
         CqxwaAsnc1GroMWUZ9eYSpAijp31C7fmFsxIGFRIhd0nG4IlIG+ioEDYbLsxmNoajgqW
         +hsFMy2XUCyINDUpBLEshEvChB39RqwfMRdyzBBkN6/Nfyaixal9E+63qxF6GWw8TBMC
         UaAw==
X-Gm-Message-State: AOAM533iUg1bJ3bxWZ2J3YSNLzHYXHv9kel4QOVP3ChouX05WESVs54+
	iJHwxFYa6xYBlGauOnHUUWYzWCUX8lzKNqN1UVeSlZDeVT4d+oRy
X-Google-Smtp-Source: ABdhPJySlrvmMZ+sCEc7hkt0j/GRNGhvu3Xk5vq1oAfSYvrt5cxMv+Y7X7NnT+NhJ4bTZaaQ9EHfyk9/lXUfakJrdS4=
X-Received: by 2002:a0d:fb07:0:b0:2ca:287c:6c97 with SMTP id
 l7-20020a0dfb07000000b002ca287c6c97mr18676406ywf.316.1645443341520; Mon, 21
 Feb 2022 03:35:41 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 19 Feb 2022 15:04:54 +0330
Message-ID: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Z3GO5UDH7H5XI7SIO7IW4CBCC24XBVC2
X-Message-ID-Hash: Z3GO5UDH7H5XI7SIO7IW4CBCC24XBVC2
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How can create an RFNOC correlate block for USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z3GO5UDH7H5XI7SIO7IW4CBCC24XBVC2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5493077685847470163=="

--===============5493077685847470163==
Content-Type: multipart/alternative; boundary="000000000000de937605d885a198"

--000000000000de937605d885a198
Content-Type: text/plain; charset="UTF-8"

How can create an RFNOC correlate block for USRP?
This thread is created to share results on searching how we can correlate
RFNOC blocks...
Anyone that had an idea, I'm glad to hear it...
thanks in advance

--000000000000de937605d885a198
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How can create an RFNOC correlate block for USRP?<div>This=
 thread is created to share results on searching how we can correlate RFNOC=
 blocks...</div><div>Anyone that had an idea, I&#39;m glad=C2=A0to hear it.=
..</div><div>thanks in advance</div><div><br></div></div>

--000000000000de937605d885a198--

--===============5493077685847470163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5493077685847470163==--
