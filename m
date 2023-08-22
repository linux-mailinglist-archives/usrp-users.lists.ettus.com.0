Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4392F783991
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 07:55:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 552B9384A32
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 01:55:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692683700; bh=9QLgkH+pP3y2XUgh2esQU2q6sQfppRuW9jFz2kFxfkk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OGMDEJXxAk126xz3BFRN8D3vOtUnO7mFXBwqmtqDMXcB9HbYJbC2c96gYABAXmIZD
	 POFsvyfZEJST7EBDmvnTfl9/RsQYTFFHGOHiqYNbOi9ch+sCA5mqtrCUjaq3OF1+W9
	 d9qgHIlzXACe5SIFBAVWFGI1+LB9Ns8pRVYWqm4F+FPhalL8XP6k/afuAeGoMYSEgD
	 3Hqn5MtE2Ong+A7nEhc4atp/acj4tEHlaQmaJs+NR2qhtDV3lDg/SVT8RZeQuM0ChP
	 XVrJugPvoUsbc9p0LQuPrMA6PbuHAtqaXks3XjQR1g8pOVnHQwqRUVKkRRUNX0lShs
	 Wp61GmNFDNS6g==
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D2355384809
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 01:54:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rJMUXn17";
	dkim-atps=neutral
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-48d0e332f4dso830074e0c.2
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 22:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692683668; x=1693288468;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GSjtDV2cq6fEU5ulsc9DKE8fyOZOF91m4wCTTxyWel0=;
        b=rJMUXn17CJ4YezqASQh174BpcGy8IK0J70FimOd61SwkL6GzQBwDuWZn2H68odr2Ym
         eq096QUoeIhesGGMfB9BSHSY415gL0P5JLGPv9XjBmLMh3Ny/DlpGsa/cHSrCwhp8e8g
         9mOvZPIp+rKsewr1zS8ASzN4k75kzjs3e8AkQWGa075Y0xmfiVOM/wH5NhGOQyK70Q4q
         3CAsMcxOf3o4z4PIkQc3bmME5T9PgFcWxLh71Q6hjEsKD++9ozERU5FcWljE82rwOp1p
         COrc5sRyMBucLpjadk/qIxEVFcSBZvvFyKmfKPj5JGe8S2kGUSvgh3RbKzK6B2dqdssK
         UKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692683668; x=1693288468;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GSjtDV2cq6fEU5ulsc9DKE8fyOZOF91m4wCTTxyWel0=;
        b=FSIrwx4hBBJfy3szNL4JFub7UMlF7GkqWHuSO3pCJUExgwxgAVzDWhozkjsDvh4CV7
         XelG+mvQ46uT5u17GkXMW4dCRG/JeM0w9l/6mfkTgfTOmoeUNCx00dYe/RptLweGr++j
         yqELGo1z7e4iQzi9gTQZSMKAiEw0DUcPZkOmEo3X9sVW909gSNVCgseO6ulEcs9Hg/ST
         3GzHwQutOvq9wRZmR4yk8YUYvflxp/i7wxR5f+LWUXFJNjVUNsj8iueqBB4xHpqQ+V8m
         GcqxmtmPla+h+R3syiwJ77FNPQfRmq4krnAbP/0nMj6ozva5Yyyy4V+cDiTGuOhiWh4P
         99NA==
X-Gm-Message-State: AOJu0YwYJUnHTXkjpvuaOP5Dr26eG/ixulh7aXwCbtKTu/qNrnUIhouu
	PAslgwi6/vnu2F67J5gWXPIZJdzROTdI3awhywGI2wBCdCE/LQ==
X-Google-Smtp-Source: AGHT+IHZZdcqnC0TVw8aVg1fs+VjyYhTWVV4VzZ46mvSx9pUtyyp+hKPBwDMle7T/T9Dx/12n0qLjWdLX+Wmk4Ap5cs=
X-Received: by 2002:a1f:c9c6:0:b0:489:65df:d660 with SMTP id
 z189-20020a1fc9c6000000b0048965dfd660mr7342037vkf.9.1692683667784; Mon, 21
 Aug 2023 22:54:27 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 22 Aug 2023 10:24:16 +0430
Message-ID: <CAA=S3PsneXGUR8nuTNCc1-3UbuUBVzo33DQETBL_-JhSXFyMWQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000bc5e4306037ca093"
Message-ID-Hash: TSZOZRC7XNPQOBU36ISD6FUVN2CEUJEN
X-Message-ID-Hash: TSZOZRC7XNPQOBU36ISD6FUVN2CEUJEN
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fatal: Timeout: Test "Test passing through samples" time limit exceeded
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSZOZRC7XNPQOBU36ISD6FUVN2CEUJEN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000bc5e4306037ca093
Content-Type: multipart/alternative; boundary="000000000000bc5e4106037ca091"

--000000000000bc5e4106037ca091
Content-Type: text/plain; charset="UTF-8"

I write a custom block when i run test bench on it i faced with strange
error,How can solve it i shared the custom rfnoc blocks
Thanks in advance

TESTBENCH STARTED: rfnoc_block_gain_tb
========================================================
[TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
[TEST CASE   1] (t =      6400 ns) DONE... Passed
[TEST CASE   2] (t =      6400 ns) BEGIN: Verify Block Info...
[TEST CASE   2] (t =      6400 ns) DONE... Passed
[TEST CASE   3] (t =      6400 ns) BEGIN: Verify user register...
[TEST CASE   3] (t =      7725 ns) DONE... Passed
[TEST CASE   4] (t =      7725 ns) BEGIN: Test passing through samples...
Fatal: Timeout: Test "Test passing through samples" time limit exceeded
Time: 17725 ns  Iteration: 0  Process:
/PkgTestExec/TestExec::start_timeout/Block260_9/timeout  File:
/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv

--000000000000bc5e4106037ca091
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I write a custom block when i run test bench on it i faced=
 with strange error,How can solve it i shared the custom rfnoc blocks=C2=A0=
<div>Thanks in advance<br><div><br></div><div>TESTBENCH STARTED: rfnoc_bloc=
k_gain_tb<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0 ns) BEGIN: Flush block then reset it...<br>[TEST CASE =
=C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) DONE... Passed<br>[TEST CASE =
=C2=A0 2] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) BEGIN: Verify Block Info...<b=
r>[TEST CASE =C2=A0 2] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) DONE... Passed<b=
r>[TEST CASE =C2=A0 3] (t =3D =C2=A0 =C2=A0 =C2=A06400 ns) BEGIN: Verify us=
er register...<br>[TEST CASE =C2=A0 3] (t =3D =C2=A0 =C2=A0 =C2=A07725 ns) =
DONE... Passed<br>[TEST CASE =C2=A0 4] (t =3D =C2=A0 =C2=A0 =C2=A07725 ns) =
BEGIN: Test passing through samples...<br>Fatal: Timeout: Test &quot;Test p=
assing through samples&quot; time limit exceeded<br>Time: 17725 ns =C2=A0It=
eration: 0 =C2=A0Process: /PkgTestExec/TestExec::start_timeout/Block260_9/t=
imeout =C2=A0File: /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgT=
estExec.sv<br></div></div></div>

--000000000000bc5e4106037ca091--

--000000000000bc5e4306037ca093
Content-Type: application/zip; name="rfnoc_block_gain.zip"
Content-Disposition: attachment; filename="rfnoc_block_gain.zip"
Content-Transfer-Encoding: base64
Content-ID: <f_lllw4kwl0>
X-Attachment-Id: f_lllw4kwl0

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
Zm5vY19ibG9ja19nYWluL1VUDQAHN0nkZFpJ5GRWSeRkdXgLAAEE6AMAAAToAwAAUEsBAhQDFAAI
AAgAUWL6VJCpqxDYAAAAVAEAAB8AIAAAAAAAAAAAALSBTwAAAHJmbm9jX2Jsb2NrX2dhaW4vQ01h
a2VMaXN0cy50eHRVVA0AB1Kc32I3SeRkN0nkZHV4CwABBOgDAAAE6AMAAFBLAQIUAxQACAAIADpC
Flf0OLrIHgIAAO4FAAAZACAAAAAAAAAAAAC0gZQBAAByZm5vY19ibG9ja19nYWluL01ha2VmaWxl
VVQNAAf5PeRkN0nkZDdJ5GR1eAsAAQToAwAABOgDAABQSwECFAMUAAgACACBhmpVP2f4chMJAAD5
LQAAIQAgAAAAAAAAAAAAtIEZBAAAcmZub2NfYmxvY2tfZ2Fpbi9ub2Nfc2hlbGxfZ2Fpbi52VVQN
AAf7+mxjN0nkZDdJ5GR1eAsAAQToAwAABOgDAABQSwECFAMUAAgACAB7SBZXcqV8okoMAADkMAAA
IwAgAAAAAAAAAAAAtIGbDQAAcmZub2NfYmxvY2tfZ2Fpbi9yZm5vY19ibG9ja19nYWluLnZVVA0A
B8JI5GQ3SeRkN0nkZHV4CwABBOgDAAAE6AMAAFBLAQIUAxQACAAIAKdIFlcMxrC3NgwAADktAAAn
ACAAAAAAAAAAAAC0gVYaAAByZm5vY19ibG9ja19nYWluL3Jmbm9jX2Jsb2NrX2dhaW5fdGIuc3ZV
VA0ABxNJ5GQ3SeRkN0nkZHV4CwABBOgDAAAE6AMAAFBLBQYAAAAABgAGAIgCAAABJwAAAAA=
--000000000000bc5e4306037ca093
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000bc5e4306037ca093--
