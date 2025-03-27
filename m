Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CB7A7373B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 17:47:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C958A385679
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 12:47:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743094041; bh=WWsTTK2QdU/uLlSdawBwxUNELSqGx/HABYh6jptZnqk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Dj6wgmZLezxSGh07qhr0Z+8IP8YlwpNRo1wQU1rx4yv5hs2FhuFNUDOQjz9mVZ5cw
	 jfxfoYUY7rvaN+w3J8X0Fb/pFOhqbe2RoBX5x3ks50qcF8gSICxW+5L71syan0nHlB
	 c8HQbAZHPAZYs+t402dpy1AfYxx2cxvl4BqutOVMW/0wPmyF2JIshCILdh3Eg85tly
	 4WU+g7Bh3Jr+s0W3Agkn1HQWV0VZCd961s+jpZ2bypPSq5bsuukbQSVtNZggv0uT/h
	 CyXGEojoVw0/SaGBuTvY1VvAY2guuy4V9TiKaY41oG1KF+gUyy5xJWTKh5p2q8s0vU
	 P7qE1V/LGjSog==
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CBC0383B7C
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 12:47:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J+3zljmR";
	dkim-atps=neutral
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-72c14138668so331568a34.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 09:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743094020; x=1743698820; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zl5XRF3YfUTxGBe+rWC6/ye3Q/mbH9WACYfFhP5iSsQ=;
        b=J+3zljmRp131o33Z2EQ9NbL74+2WXv5IwGSVCogrdMyg4LSzU0ttRD1VAjE03Wu5tu
         RL3BZDKNRabV3Q5IVJUcY9gH9W/ZV8SuXetA9KFPMgdJa8pplhn7mlqvkAMNKCyvhale
         q0mYgRLZLD+pW/xjaK+WX+f9dwJTSw4pxmGcFjSHN58qyq3lpOUeIJuiG0IBx6o32Ol0
         86e41jm5zNiqxOa6eaJT8gR+X7Q45+jhM+iSBQHblEHEs6oDX2AJ51EssKZK7v3/Erzh
         pJFQxwlssP5LJt+lG0S/yrkjIh0mQntzdRwgv1LuxCIDucxnpqVO2vpC3ZG7YL+NAqSa
         idQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743094020; x=1743698820;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zl5XRF3YfUTxGBe+rWC6/ye3Q/mbH9WACYfFhP5iSsQ=;
        b=jKG1gi3qMEpjfbAOzjUOnkYD2sDDrOq6XBbZ0LQNBUyts72fux/KSpYhgZpHmX6dyn
         W+Ngpd8dbORnFHxAyIzVMrAcHAWQYYYgJc2qegzCnQr+XN6BRSoHZC301wAoAjqCeiuI
         XcE8LO5bZVC8+3LLREeUUBSHXp3xijzYrqh8i+sgHj03dvzIqCZFaZHM6BmnOPXJcyHD
         ALhOSMEUBlClO5rtPObipEqTRYtWPW4QMVGrYa7fx3L/MHn7IsHvn6RZiyj+ozwykRX6
         UcoGvYJS5R1O//F7k82R0suqexcBG2ho7JIzsfr8vk2c4NmdioZM0tbvGNnXCJ1jFGoY
         vJ7Q==
X-Gm-Message-State: AOJu0Yz4DmMxvQTZ1xyikH5NAJBNWol4joNl6g5Vr3nS6Bnd3y/mM2HD
	X/JZbHRWxnU7Frf6kKThJqyakRnmmfrFoE2CvO925n5xKNMSCeRzO9TYIErvLWRBuRjP8yoaDIn
	q4/G6WzXv/VsH0Wd2/RRt4dtQRtLXrjkIC/+fxqXz
X-Gm-Gg: ASbGncu6Hi85a5awrUqfNB75qcfxcsk4x17RoS5zWTDiDR9696lqCPE/ts4tFwSiIaE
	3PeRKqADD0FZzz1nuWKeK4NZIl7su6MOyWt8iKo5eDJGD1HmliPbRfJqgrJ3oAx9Xdx5+OAPtZl
	wP9jVMWaQWfEiVJEYp7ByNc6/QP4RNlxyVdQAmhg==
X-Google-Smtp-Source: AGHT+IGQua55Pe3mdBpDzuJwxT50OosQTN8x3IBbaxOZbBnL+s58mh1HiPyRYlKaXJwgPr8SFuMMRDX5mnGNXIRTAd0=
X-Received: by 2002:a05:6830:3c0a:b0:72b:a196:5221 with SMTP id
 46e09a7af769-72c4c947519mr3624838a34.8.1743094020116; Thu, 27 Mar 2025
 09:47:00 -0700 (PDT)
MIME-Version: 1.0
From: Heath Stamm <heath.j.stamm@gmail.com>
Date: Thu, 27 Mar 2025 09:46:49 -0700
X-Gm-Features: AQ5f1Jp2KWbWYY84wQAH-oYB-JlXkx8-6ac6ZlsljqZIXuvlhxVopw4NxDgpJiI
Message-ID: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: UKM5MCE5WKGPGLAETWYZUCGRDNZNGFWV
X-Message-ID-Hash: UKM5MCE5WKGPGLAETWYZUCGRDNZNGFWV
X-MailFrom: heath.j.stamm@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UKM5MCE5WKGPGLAETWYZUCGRDNZNGFWV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0370381257675918435=="

--===============0370381257675918435==
Content-Type: multipart/alternative; boundary="000000000000e119fa063155b384"

--000000000000e119fa063155b384
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, I have an X440 loaded with the X4_200 FPGA image running UHD 4.6. Using
the RFNoC API, I am streaming the same 1 MHz tone into two channels at the
same time (timed command) using a TX streamer going through the DUC
(upsampling from 10.24MSPS to 245.76MSPS) through the same Radio block
(same daughtercard) going out two TX ports connected to a scope.


While the two channels appear to be phase coherent - that is, their phase
offset from each other doesn=E2=80=99t drift over time - they are not phase
aligned. Furthermore, the phase misalignment changes every time I rerun the
script I am using to run this test.


Is this expected behavior on the X440?

--000000000000e119fa063155b384
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"font-size:13px;margin:0px;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;font-=
size-adjust:none;font-kerning:auto;font-feature-settings:normal;font-stretc=
h:normal;line-height:normal;font-family:&quot;Helvetica Neue&quot;">Hi, I h=
ave an X440 loaded with the X4_200 FPGA image running UHD 4.6. Using the RF=
NoC API, I am streaming the same 1 MHz tone into two channels at the same t=
ime (timed command) using a TX streamer going through the DUC (upsampling f=
rom 10.24MSPS to 245.76MSPS) through the same Radio block (same daughtercar=
d) going out two TX ports connected to a scope.</p><p style=3D"font-size:13=
px;margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;font-size-adjust:none;font-kerning:auto;font-f=
eature-settings:normal;font-stretch:normal;line-height:normal;font-family:&=
quot;Helvetica Neue&quot;"><br></p><p style=3D"font-size:13px;margin:0px;fo=
nt-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alter=
nates:normal;font-size-adjust:none;font-kerning:auto;font-feature-settings:=
normal;font-stretch:normal;line-height:normal;font-family:&quot;Helvetica N=
eue&quot;">While the two channels appear to be phase coherent - that is, th=
eir phase offset from each other doesn=E2=80=99t drift over time - they are=
 not phase aligned. Furthermore, the phase misalignment changes every time =
I rerun the script I am using to run this test.=C2=A0</p><p style=3D"font-s=
ize:13px;margin:0px;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;font-size-adjust:none;font-kerning:auto;=
font-feature-settings:normal;font-stretch:normal;line-height:normal;font-fa=
mily:&quot;Helvetica Neue&quot;"><br></p><p style=3D"font-size:13px;margin:=
0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant=
-alternates:normal;font-size-adjust:none;font-kerning:auto;font-feature-set=
tings:normal;font-stretch:normal;line-height:normal;font-family:&quot;Helve=
tica Neue&quot;">Is this expected behavior on the X440?</p></div>

--000000000000e119fa063155b384--

--===============0370381257675918435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0370381257675918435==--
