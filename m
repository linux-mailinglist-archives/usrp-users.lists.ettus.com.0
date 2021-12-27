Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB250480274
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 17:51:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71CB7384CDF
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 11:51:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eByOllX2";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 4742F384ABE
	for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 11:50:40 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id d1so25814497ybh.6
        for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 08:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/RDjqmSExy89MeAqoMu7Qfa4pJS5AqjOMoDRFU0jfj0=;
        b=eByOllX2PXtiqcY8vQt0zkrDyT2I06fJy9tlGPfHN3F92utqKrOu4U43FR936AL0/5
         n94PmaakORjAr046BBN+x4/KlaKAnXu521D8hcix58fwKrO1oImrvq6aWI1xh+7og78C
         Os7C2J0KHNr8s16KYdCubC6VrHuQWt/69IcYlTZ4wXOn7lo06xf6r3e8ars7io2qD1Lr
         Dt+b2Z+ope7bwz4+jWDnGwHfZtTjMNVij8LzU+b2fgomcQHHxqYJpOKcOpRg4K84AI0z
         S0B50JM8nEPdMhIsJu+Sd1Q40tQk0W1hYAnxaQmv2qOLWWScKCYYsQjO0u7SEnIzGdAy
         TaHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/RDjqmSExy89MeAqoMu7Qfa4pJS5AqjOMoDRFU0jfj0=;
        b=C4DmwK5VQX1WF3L9LRIpj6zku96tY3LBO3wZ1hQgwQzUL8zLVWTqQUaNxYtH8JgRao
         VtQ0jxqFuqkN7zecMa4DDNluuCCgpXQSNBE0GVwWNMzJNQYq17/0Hq5SIKSDMFAzTl28
         2c/Bh4CDEEEOseLo+2l29CHr0z3USEPt8WNF42rmlI8zXV3xUalxPfXUXM1MmRmtFcjg
         1jDUvnhzFi7ciZKFBCj5I7RbFUm+IbknCx0rs0bDmVayt4ksdG782y/eJofjSi1PhoUA
         ngZMeHs/y/ntdmkiznL531rkV4DxPIRhNfNjYVzA3IgR4tYOYhgWtVyvfrVMJs5E0AOS
         JAqQ==
X-Gm-Message-State: AOAM530Hsy04ThL2nxjTKcI/rJ5V8EJLsH480qNWeDaepNu5H3SXF1tn
	+LDnfN9pw1s509a/jzJT4izw9+mMt3Uz70tBr9KoVHqI4TAd+fF6pec=
X-Google-Smtp-Source: ABdhPJwYvzZK5omon/YvypBDAnK48wTHRblehuOBr7NsoigTnhTRWO9oB2lZgpB5Y/S6CWKtlpXZQusjb55k5eLIGVk=
X-Received: by 2002:a25:a449:: with SMTP id f67mr21036765ybi.368.1640623838920;
 Mon, 27 Dec 2021 08:50:38 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 27 Dec 2021 20:20:27 +0330
Message-ID: <CAA=S3Pva1uuiy80C-F4mPmxfmjjHhMa1Hgdi6LxD+XmmAJwAiw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7WJMKO6IHPMG57K3I52YXZB4JBWOIY45
X-Message-ID-Hash: 7WJMKO6IHPMG57K3I52YXZB4JBWOIY45
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] what's means uhd::multi_usrp API? it is not for me clear
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7WJMKO6IHPMG57K3I52YXZB4JBWOIY45/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8364927771158317487=="

--===============8364927771158317487==
Content-Type: multipart/alternative; boundary="0000000000002102e405d42381d3"

--0000000000002102e405d42381d3
Content-Type: text/plain; charset="UTF-8"

I am studying  RFNOC specifications.
https://files.ettus.com/app_notes/RFNoC_Specification.pdf

in the RFNOC software framework, it describes uhd::multi_usrp API. but it
is not clear to me? my question is which is the work of this API? can
anyone explain more about it?

uhd::multi_usrp API An RFNoC capable USRP must work out of the box using
the multi_usrp API. To do so, multi_usrp will expect a default image with
Radios, DDCs, DUCs and buffering to implement the native USRP API.
Internally, multi_usrp will build a graph to make the appropriate
connections, much like a user application.


thanks in advance

--0000000000002102e405d42381d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am studying=C2=A0 RFNOC specifications.<div><a href=3D"h=
ttps://files.ettus.com/app_notes/RFNoC_Specification.pdf">https://files.ett=
us.com/app_notes/RFNoC_Specification.pdf</a><br></div><div><br></div><div>i=
n the RFNOC software framework, it describes=C2=A0uhd::multi_usrp API. but =
it is not clear to me? my question is which is the work=C2=A0of this API? c=
an anyone explain more about it?</div><div><font size=3D"1"><br></font></di=
v><div><font size=3D"1">uhd::multi_usrp API
An RFNoC capable USRP must work out of the box using the multi_usrp API. To=
 do so,
multi_usrp will expect a default image with Radios, DDCs, DUCs and bufferin=
g to implement the
native USRP API. Internally, multi_usrp will build a graph to make the appr=
opriate connections,
much like a user application.</font><br></div><div><font size=3D"1"><br></f=
ont></div><div><font size=3D"1"><br></font></div><div><font size=3D"1">than=
ks in advance</font></div></div>

--0000000000002102e405d42381d3--

--===============8364927771158317487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8364927771158317487==--
