Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7D65FD94C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 14:39:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA2C93808F7
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 08:39:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665664757; bh=xT3AO/sjzamZG7eIeAhzFT/six4EyKQ67mH7eVfbSJc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SNBuruGnJQ6bD8Yrd9jKdgJ0jyonlLLd4V/hQDJuoXXKhuZQDDe5VVnYLd4tkUN/a
	 1IW/XAdFas3qdl/Uw5TV5l3XxjRtOPiQmTLE35AM/sy6Z/dbkV8sAIbW/Pm5kA9tId
	 tuXfgDJmzI49OgIAJ4sicX8IA928xozGC8thXQyyhmOtm3fEj4AFRLeBdum4iC8Wue
	 FZRCVBu12ZeDMuwgKy5B82A/jCIm8P/3RLN5GVfF94ykLaNeq7I4rlMOxW+BLhjJdV
	 qsCL8dvfykBuJ7e9SgvkTy6YTtYao6Pc0z+6knY8VAStLbY066aQdBDpR4sovCeB7c
	 Oz8cB5aPIHtTw==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 6618738373B
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 08:38:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ShFVregD";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id n74so1846099yba.11
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 05:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tUdnFkRcaE+PeL6ivfY7Q+TshdzEaLZWr2R4LcYfBz4=;
        b=ShFVregDQJxXXhSez4LoSsWLvaoO0p7JbjhwFMkf/UiguMpwmehpBdG/kL14MuLEx3
         f36keF4sR0VxICtxd3RrVnTj22iF6IpLXSXFhm4zk+loueqPp+cU5XzDtBFt4W2u8uV4
         bxeO8TtHZkotYdbUsWYLXdYf+/LH1OK8/UrJgojJ/CcJSvbbobBj8aM02Js7ISFHXkgX
         taLcEENIZ4pMohjUbaoF4z6yu2LElfX40CzPJfJWrpCdC3R6s/u913ABgJFSGG0CSxSf
         Q6U3srfwzXLXHbM4bwLQ009Z0jq7fUxZS5pG7gONhH/9SqUaoxv8ybt3uCL3gQlbw6Q2
         C6ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tUdnFkRcaE+PeL6ivfY7Q+TshdzEaLZWr2R4LcYfBz4=;
        b=h2PU167ZLtPQZzjyWp3FbYO8yXPsXMFrYQHJcuQaKCV0eOq95ugBiQv3vmjWodChWE
         ZUULSIO1tmeZmpdZ8iD38+69edbEny+P8pCPsqVA+13HYybbUJKq8TKRdylQzpxorFVD
         H0ngZACMXV4OKwz24rqFh8IHhPVsjX6wcHK1/2qMFbRjU4Rjw64N5B8gewSlA9Qje7vL
         OLS5ZWzN5L8UupZd13bA1/6vgTFBPMskOFrIUg49r6XF2cCDvy2r+XLdNL4rdz7VDOSc
         6pq9uHmiv7hDoC1EYuWbKse2nKnWZ/NC9H64oDRFXP1iob0n3nrdIm1D+DOmJ0DTk9K+
         gwRw==
X-Gm-Message-State: ACrzQf3uxlt8I1TV19kFD/CZ69fMenNqOVzLswak06YMwYgX5qqr0RFb
	RxrQh+TobNDHSZTLPCb1yzFST8320W2T86rU1f5r00i4xg3AG5zp
X-Google-Smtp-Source: AMsMyM4Wqaq86PGFGl7cVVPhsYblxU0wxvuYs58wOvlVciCDLYjVJkdgSycPbfrFDAsxFME4M8Lo17F+2YAq2A8XqHE=
X-Received: by 2002:a25:4257:0:b0:6be:6224:5d5a with SMTP id
 p84-20020a254257000000b006be62245d5amr30881384yba.148.1665664709389; Thu, 13
 Oct 2022 05:38:29 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Thu, 13 Oct 2022 16:08:18 +0330
Message-ID: <CAA=S3PtNSw1qOgaKJbRRnUpTfn4A-zK_10frYCk7CoCo93Drhw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: KSNLQ4E5HF5VFT4DNBCSX2H5H7E26PYM
X-Message-ID-Hash: KSNLQ4E5HF5VFT4DNBCSX2H5H7E26PYM
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why initialize large array in Verilog is not successfully in RFNOC blocks...
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KSNLQ4E5HF5VFT4DNBCSX2H5H7E26PYM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0202582929991079598=="

--===============0202582929991079598==
Content-Type: multipart/alternative; boundary="0000000000005171bc05eae9c902"

--0000000000005171bc05eae9c902
Content-Type: text/plain; charset="UTF-8"

Why initialize large array in Verilog is not successfully. When size of
array is 255 it work like charm but for other number more than 255 like
1024 and ....
we observe all array is filled with zero? why large array in FPGA can not
initailize correctly????


Code:
 reg signed  [15:0]  data_i_pattern_buffer [1024:0];
 reg signed  [15:0]  data_q_pattern_buffer [1024:0];
  $readmemh("out_i.txt",data_i_pattern_buffer,0,1024);
 $readmemh("out_q.txt",data_q_pattern_buffer,0,1024);

--0000000000005171bc05eae9c902
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Why initialize large array in Verilog is not successfully.=
 When size of array is 255 it work like charm but for other number more tha=
n 255 like 1024 and ....<br>we observe all array is filled with zero? why l=
arge array in FPGA can not initailize correctly????<div><br></div><div><br>=
Code:<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_i_pattern_buffer [1024:0]=
;<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_q_pattern_buffer [1024:0];<br=
>=C2=A0 $readmemh(&quot;out_i.txt&quot;,data_i_pattern_buffer,0,1024);<br>=
=C2=A0$readmemh(&quot;out_q.txt&quot;,data_q_pattern_buffer,0,1024);<br></d=
iv></div>

--0000000000005171bc05eae9c902--

--===============0202582929991079598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0202582929991079598==--
